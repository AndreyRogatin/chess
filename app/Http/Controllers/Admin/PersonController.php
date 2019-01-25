<?php

namespace App\Http\Controllers\Admin;

use App\Models\PersonModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PersonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.person.index', [
            'title' => 'Известные шахматисты',
            'persons' => PersonModel::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.person.create', [
            'title' => 'Добавьте информацию'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        PersonModel::create($request->all());
        return redirect()->route('admin.person.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function show(int $id)
    {
        return view('admin.person.show', [
            'person' => PersonModel::find($id)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function edit(int $id)
    {
        return view('admin.person.edit', [
            'title' => 'Редактировать информацию',
            'person' => PersonModel::find($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, int $id)
    {
        PersonModel::find($id)->update($request->all());
        return redirect()->route('admin.person.show', ['id' => $id]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        PersonModel::destroy($id);
        return redirect()->route('admin.person.index');
    }
}
