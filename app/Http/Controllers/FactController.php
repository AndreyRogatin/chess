<?php

namespace App\Http\Controllers;

use App\Models\FactModel;
use Illuminate\Http\Request;

class FactController extends Controller
{
    protected $data;

    public function __construct()
    {
        $this->data = FactModel::all();
    }

    public function action()
    {
        return view('fact', [
            'title' => 'Интересные факты о шахматах',
            'data' => $this->data
        ]);
    }
}
