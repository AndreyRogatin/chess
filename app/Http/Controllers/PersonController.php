<?php

namespace App\Http\Controllers;

use App\Models\PersonModel;

class PersonController extends Controller
{
    protected $persons;

    public function __construct()
    {
        $this->persons = PersonModel::all();
    }

    public function action()
    {
        return view('persons', [
            'title' => 'Известные шахматисты',
            'persons' => $this->persons
        ]);
    }
}
