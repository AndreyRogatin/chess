<?php

namespace App\Http\Controllers\Admin;

use App\Models\FactModel;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.fact.index', [
            'title' => 'Интересные факты',
            'fact' => FactModel::paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.fact.create', [
            'title' => 'Добавить новый факт',
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        FactModel::create($request->all());
        return redirect()->route('admin.fact.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function show(int $id)
    {
        return view('admin.fact.show', [
            'title' => 'Интересный факт № ' . $id,
            'fact' => FactModel::find($id)
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
        return view('admin.fact.edit', [
            'title' => 'Редактировать запись',
            'fact' => FactModel::find($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, int $id)
    {
        FactModel::find($id)->update($request->all());
        return redirect()->route('admin.fact.show', ['id' => $id]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {
        FactModel::destroy($id);
        return redirect()->route('admin.fact.index');
    }
}
