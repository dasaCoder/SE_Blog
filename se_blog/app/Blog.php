<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $fillable = ['title','body','user_id','type'];

    public function user(){
        return $this->belongsTo('App\User');
    }


}
