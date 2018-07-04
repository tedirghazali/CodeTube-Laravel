<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->sentence(),
        'description' => $faker->text(200),
        'price' => $faker->numberBetween(3, 100),
        'amount' => $faker->numberBetween(5, 25),
        'image' => 'http://loremflickr.com/400/300/animal?random=3'.rand(1, 100)
    ];
});
