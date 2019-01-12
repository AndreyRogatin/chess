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

    public function index()
    {
        dd($this->data[0]->title);
    }
}
