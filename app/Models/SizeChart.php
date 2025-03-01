<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SizeChart extends Model
{
    use HasFactory;

    protected $fillable = ['size_id','chest','length','shoulder','sleeve'];

    public function sizes()
    {
        return $this->belongsTo(Size::class, 'size_id');
    }

}
