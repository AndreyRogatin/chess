<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PersonModel extends Model
{
    protected $table = 'persons';
    protected $fillable = ['name', 'country', 'life', 'about'];
}
