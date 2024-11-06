<?php

namespace Database\Seeders;

use App\Models\Categories;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // NIM: 2602061580
        Category::factory()->create([
            'name' => 'Interactive Multimedia',
        ]);

        Category::factory()->create([
            'name' => 'Software Engineering',
        ]);
    }
}
