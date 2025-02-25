<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use \Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\File;

class DashboardPostController extends Controller
{

    public function index()
    {
        return view('dashboard.posts.index', [
            'posts' => Post::where('user_id', auth()->user()->id)->orderBy('updated_at', 'desc')->get()
        ]);
    }


    public function create()
    {
        return view('dashboard.posts.create', [
            'categories' => Category::all()
        ]);
    }


    public function store(Request $request)
    {
        // Ambil data dari requets dan lakukan validasi:
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' => 'image|file|max:2048',
            'body' => 'required'
        ]);

        // Cek apakah ada gambar yang dimasukan:
        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->move('post-images');
        }

        // Tambahkan data baru ke field user_id dan excerpt:
        $validatedData['user_id'] = auth()->user()->id;
        // strip_tags() adalah funtion untuk mengubah tag html menjadi text biasa:
        $validatedData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Post::create($validatedData);

        return redirect('/dashboard/posts')->with('success', 'new post has been added!');
    }


    public function show(Post $post)
    {
        return view('dashboard.posts.show', [
            'post' => $post
        ]);
    }


    public function edit(Post $post)
    {
        return view('dashboard.posts.edit', [
            'post' => $post,
            'categories' => Category::all()
        ]);
    }


    public function update(Request $request, Post $post)
    {
        // Ambil data dari requets dan lakukan validasi:
        $rules = [
            'title' => 'required|max:255',
            'category_id' => 'required',
            'image' => 'image|file|max:1024',
            'body' => 'required'
        ];

        if ($request->slug != $post->slug) {
            $rules['slug'] = 'required|unique:posts';
        }

        $validatedData =  $request->validate($rules);

        // Cek apakah ada gambar yang dimasukan:
        if ($request->file('image')) {
            if ($request->oldImage) {
                File::delete($request->oldImage);
            }

            $validatedData['image'] = $request->file('image')->move('post-images');
        }

        // Tambahkan data baru ke field user_id dan excerpt:
        $validatedData['user_id'] = auth()->user()->id;
        // strip_tags() adalah funtion untuk mengubah tag html menjadi text biasa:
        $validatedData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Post::where('id', $post->id)->update($validatedData);

        return redirect('/dashboard/posts')->with('success', 'new post has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        if ($post->image) {
            Storage::delete($post->image);
        }

        Post::destroy($post->id);

        return redirect('/dashboard/posts')->with('success', 'Post has been deleted!');
    }

    public function checkSlug(Request $request)
    {
        // ambil data dari url:
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        // kirim data dalam bentuk respone dengan method json:
        return response()->json(['slug' => $slug]);
    }
}