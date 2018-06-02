<?php

use Faker\Generator as Faker;

$factory->define(App\Product::class, function (Faker $faker) {
    return [
        'name' => $faker->text(20),
        'description' => $faker->text(200),
        'price' => '500000',
        'amount' => '567'
    ];
});
