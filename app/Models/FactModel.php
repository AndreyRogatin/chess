<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class FactModel extends Model
{
    protected $table = 'fact';
    protected $fillable = ['title', 'content'];
}
