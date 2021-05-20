<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use DB;
use Str;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i = 0; $i <= 100; $i++) {
            DB::table('posts')->insert([
                'name' => Str::random(10),
            ]);    
        }
        //
    }
}
