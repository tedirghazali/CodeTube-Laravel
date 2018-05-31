<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => env('SES_REGION', 'us-east-1'),
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    'facebook' => [
        'client_id' => '1700986063472372',
        'client_secret' => '04221ee2310978bdd633945f599435b2',
        'redirect' => 'http://localhost:8000/login/facebook/callback'
    ],

    'twitter' => [
        'client_id' => '6JNOCE1Ic2jPXWc6WHwhcuqVb',
        'client_secret' => 'ZFDF7giXxdUrAAGDJoG559n4OEPqSC3HPP1muUXhz7khOxX7KY',
        'redirect' => 'http://localhost:8000/login/twitter/callback'
    ], 

    'google' => [
        'client_id' => '828222582617-qh7skg3bbohpkv15i125bvi0ed3146tk.apps.googleusercontent.com',
        'client_secret' => 'HJ0oGnxTQbMKTL5aDUBAAY13',
        'redirect' => 'http://localhost:8000/login/google/callback'
    ], 

];
