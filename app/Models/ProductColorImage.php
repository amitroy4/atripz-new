<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductColorImage extends Model
{
    use HasFactory;

    protected $fillable =['product_id','color_id','image'];

    public function color()
    {
        return $this->belongsTo(Color::class, 'color_id');
    }
}
