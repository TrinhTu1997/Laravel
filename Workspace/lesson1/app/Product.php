<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products';
    protected $fillable = ['name', 'image', 'price', 'detail', 'amount', 'status','cate_id'];

    public function Categories()
    {
        return $this->belongsTo(Categories::class, 'cate_id', 'id');
    }
}
