<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static findOrFail($id)
 */
class Product extends Model
{

    public function category()
    {
        return $this->belongsTo('App\Category');
    }

    public function Product()
    {
        return $this->hasOne(Product::class, 'id', 'product_id');
    }
}
