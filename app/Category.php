<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @method static where(int[] $array)
 */
class Category extends Model
{
    public function products()
    {
        return $this->hasMany('App\Product');
    }
}
