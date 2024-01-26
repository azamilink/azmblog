<?php

namespace App\Models;

class Post
{
    public static $blog_posts = [
        [
            "title" => "Judul post pertama",
            "slug" => "judul-post-pertama",
            "author" => "Andy",
            "body" => "Eius accusantium possimus, at obcaecati id ab repellat incidunt hic minima molestias ea ut a nulla architecto minus repudiandae ad modi! Iusto ipsa quidem hic laudantium voluptatum autem cumque, quod, voluptates officia aliquam blanditiis quos aliquid in iure sint nam sit, inventore illum eos consectetur quaerat nulla. Quae dolorum dolore eos!"
        ],
        [
            "title" => "Artikel Kedua",
            "slug" => "artikel-kedua",
            "author" => "Haris",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Modi, quae, ducimus necessitatibus beatae neque vitae minima tenetur odit optio, temporibus debitis cupiditate incidunt autem officia omnis exercitationem! Nesciunt eligendi quas ut iure, iusto ullam totam ab quia harum fuga impedit corrupti sapiente temporibus omnis, velit quis asperiores delectus quo. Eius accusantium possimus, at obcaecati id ab repellat incidunt hic minima molestias ea ut a nulla architecto minus repudiandae ad modi! Iusto ipsa quidem hic laudantium voluptatum autem cumque, quod, voluptates officia aliquam blanditiis quos aliquid in iure sint nam sit, inventore illum eos consectetur quaerat nulla. Quae dolorum dolore eos!"
        ]
    ];

    public static function all()
    {
        // Tanpa collection:
        // return self::$blog_posts;

        // Pakai collection:
        return collect(self::$blog_posts);
    }

    public static function find($slug)
    {
        // Tanpa collection:
        /** $blogs = self::$blog_posts;
        $post = [];
        foreach ($blogs as $blog) {
            if ($blog["slug"] === $slug) {
                $post = $blog;
            }
        }
        return $post; */

        // Pakai collection:
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}
