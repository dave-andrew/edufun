<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class ArticleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $category = Category::inRandomOrder()->first()->id;
        $user = User::inRandomOrder()->first()->id;

        return [
            "title" => fake()->sentence(),
            "body" => fake()->paragraphs(1, true),
            "category_id" => $category,
            "user_id" => $user,
            "updated_at" => fake()->dateTime(),
            "created_at" => fake()->dateTime(),
            "image_url" => fake()->imageUrl(),
        ];
    }
}
