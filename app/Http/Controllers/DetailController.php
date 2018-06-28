<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Rating;
use App\Http\Resources\Rating as RatingResource;

class DetailController extends Controller
{
    public function index(){
        return view('product');
    }

    public function detail($id){
        return view('detail');
    }

    public function setrating(Request $request){
        return new RatingResource(Rating::create([
            'product_id' => $request->get('product'),
            'user_id' => $request->get('user'),
            'rating' => $request->get('rating')
        ]));
    }
}
