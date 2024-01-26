<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        User::create([
            'name' => 'Aswad Zami',
            'username' => 'aswadzami',
            'email' => 'zamiaswad@gmail.com',
            'password' => bcrypt('password')
        ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        Category::create([
            'name' => 'UI Design',
            'slug' => 'ui-Design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        /** 
        User::create([
            'name' => 'Wandi Azami',
            'email' => 'azamiwandi@gmail.com',
            'password' => bcrypt('12345')
        ]);

        category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);

        category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::create([
            'title' => 'Judul Pertama',
            'slug' => 'judul-pertama',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis.',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis. Voluptas voluptates magnam deleniti ut impedit cumque suscipit voluptatum sequi provident tempora. Porro, temporibus fuga rerum at similique laboriosam enim neque reiciendis, labore nam facilis inventore voluptates deserunt non, quam quas laudantium sapiente quis minima eum qui veritatis. Repudiandae culpa fugit facere molestias, sint nam tempora assumenda? Magnam similique est unde eaque cum placeat quisquam exercitationem aliquam praesentium! Fuga ducimus sit ea veniam aliquam, deleniti recusandae aliquid. Modi temporibus inventore voluptate eum omnis quibusdam quo dolorem, assumenda necessitatibus doloribus? Nam, cupiditate. Velit a deserunt cumque animi commodi libero ullam cum nihil rem perspiciatis similique sunt adipisci quis obcaecati vero quibusdam minus asperiores temporibus, aperiam voluptatibus! Eum, itaque eius. Cupiditate vel incidunt quos quo omnis id atque a earum accusantium officiis!',
            'category_id' => 1,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Kedua',
            'slug' => 'judul-kedua',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis.',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis. Voluptas voluptates magnam deleniti ut impedit cumque suscipit voluptatum sequi provident tempora. Porro, temporibus fuga rerum at similique laboriosam enim neque reiciendis, labore nam facilis inventore voluptates deserunt non, quam quas laudantium sapiente quis minima eum qui veritatis. Repudiandae culpa fugit facere molestias, sint nam tempora assumenda? Magnam similique est unde eaque cum placeat quisquam exercitationem aliquam praesentium! Fuga ducimus sit ea veniam aliquam, deleniti recusandae aliquid. Modi temporibus inventore voluptate eum omnis quibusdam quo dolorem, assumenda necessitatibus doloribus? Nam, cupiditate. Velit a deserunt cumque animi commodi libero ullam cum nihil rem perspiciatis similique sunt adipisci quis obcaecati vero quibusdam minus asperiores temporibus, aperiam voluptatibus! Eum, itaque eius. Cupiditate vel incidunt quos quo omnis id atque a earum accusantium officiis!',
            'category_id' => 2,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Ketiga',
            'slug' => 'judul-ketiga',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis.',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis. Voluptas voluptates magnam deleniti ut impedit cumque suscipit voluptatum sequi provident tempora. Porro, temporibus fuga rerum at similique laboriosam enim neque reiciendis, labore nam facilis inventore voluptates deserunt non, quam quas laudantium sapiente quis minima eum qui veritatis. Repudiandae culpa fugit facere molestias, sint nam tempora assumenda? Magnam similique est unde eaque cum placeat quisquam exercitationem aliquam praesentium! Fuga ducimus sit ea veniam aliquam, deleniti recusandae aliquid. Modi temporibus inventore voluptate eum omnis quibusdam quo dolorem, assumenda necessitatibus doloribus? Nam, cupiditate. Velit a deserunt cumque animi commodi libero ullam cum nihil rem perspiciatis similique sunt adipisci quis obcaecati vero quibusdam minus asperiores temporibus, aperiam voluptatibus! Eum, itaque eius. Cupiditate vel incidunt quos quo omnis id atque a earum accusantium officiis!',
            'category_id' => 1,
            'user_id' => 1
        ]);

        Post::create([
            'title' => 'Judul Keempat',
            'slug' => 'judul-keempat',
            'excerpt' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis.',
            'body' => 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, harum expedita praesentium quia rerum aliquid nihil nostrum iure quae voluptatibus doloremque suscipit libero error. Et animi natus aperiam nemo blanditiis. Voluptas voluptates magnam deleniti ut impedit cumque suscipit voluptatum sequi provident tempora. Porro, temporibus fuga rerum at similique laboriosam enim neque reiciendis, labore nam facilis inventore voluptates deserunt non, quam quas laudantium sapiente quis minima eum qui veritatis. Repudiandae culpa fugit facere molestias, sint nam tempora assumenda? Magnam similique est unde eaque cum placeat quisquam exercitationem aliquam praesentium! Fuga ducimus sit ea veniam aliquam, deleniti recusandae aliquid. Modi temporibus inventore voluptate eum omnis quibusdam quo dolorem, assumenda necessitatibus doloribus? Nam, cupiditate. Velit a deserunt cumque animi commodi libero ullam cum nihil rem perspiciatis similique sunt adipisci quis obcaecati vero quibusdam minus asperiores temporibus, aperiam voluptatibus! Eum, itaque eius. Cupiditate vel incidunt quos quo omnis id atque a earum accusantium officiis!',
            'category_id' => 2,
            'user_id' => 1
        ]);
         */
    }
}
