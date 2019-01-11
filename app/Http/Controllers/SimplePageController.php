<?php

namespace App\Http\Controllers;

use App\Models\SimplePageModel;
use Illuminate\Http\Request;

class SimplePageController extends Controller
{
    protected $model;

    public function __construct(Request $request)
    {
        $this->model = SimplePageModel::where('name', $request->path())->get()[0] ?? SimplePageModel::where('name', 'index')->get()[0];
    }

    public function action()
    {
        return view('index', [
            'title' => $this->model->title,
            'content' => $this->model->content
        ]);
    }
}
