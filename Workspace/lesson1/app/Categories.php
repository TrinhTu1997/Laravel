<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    protected $table = 'categories';
    public  function Product(){
        return $this->hasMany(Product::class);
    }
    public $timestamps = false;
}
