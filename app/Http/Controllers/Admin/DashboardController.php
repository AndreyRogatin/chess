<?php

namespace App\Http\Controllers\Admin;

use App\Models\FactModel;
use App\Models\Image;
use App\Models\PersonModel;
use App\Models\User;
use App\Http\Controllers\Controller;

class DashboardController extends Controller
{
    public function dashboard() {
        return view('admin.dashboard', [
            'title' => 'Admin Panel',
            'users' => User::all()->count(),
            'fact' => FactModel::all()->count(),
            'persons' => PersonModel::all()->count(),
            'images' => Image::all()->count()
        ]);
    }
}
