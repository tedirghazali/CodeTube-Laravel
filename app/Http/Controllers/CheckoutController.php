<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stripe\Stripe;
use Stripe\Charge;

class CheckoutController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){
        return view('checkout');
    }

    public function stripe(){
        return view('stripe');
    }

    public function stripePayment(Request $request){
        Stripe::setApiKey(env('STRIPE_SECRET'));
        Charge::create([
            'amount' => $request->get('total'),
            'currency' => 'idr',
            'description' => 'Your product info',
            'source' => $request->get('stripeToken'),
            'receipt_email' => $request->get('email'),
            'metadata' => [
                'order_id' => 2456,
            ]
        ]);

        // save your customer order to database here
        return back()->with('success_message', 'Thank you! your payment has been accepted');
    }
}
