<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Verification extends Model
{
    protected $guarded = [];

    protected $fillable = [
    	'user_id', 'token'
    ];

    public function user(){
    	return $this->belongsTo('App\User','user_id');
    }
}
