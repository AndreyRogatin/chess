<?php

namespace App\Http\Controllers;

use App\Models\Image;

class ImageController extends Controller
{
    public function index()
    {
        return view('gallery', [
            'title' => 'Необычные шахматы',
            'images' => Image::all()
        ]);
    }
}
