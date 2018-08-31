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
    'github' => [
        'client_id' => env('78d7db8a81c0fe755820'),         // Your GitHub Client ID
        'client_secret' => env('8d85a42c7c3be010f2d1647c1e68ace8bef935ee'), // Your GitHub Client Secret
        'redirect' => 'http://localhost/se_blog/se_blog/public/login/github/callback',
    ],

    'facebook' => [
        'client_id' => '317817035433027',
        'client_secret' => 'c9c4be37c579bb9447cc67d25c5f3ea1',
        'redirect' => 'http://localhost/se_blog/se_blog/public/login/facebook/callback',
    ],


];
