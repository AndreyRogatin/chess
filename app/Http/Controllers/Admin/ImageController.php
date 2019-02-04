<?php

namespace App\Http\Controllers\Admin;

use App\Models\Image;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;

class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.gallery.index', [
            'title' => 'Необычные шахматы',
            'images' => Image::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.gallery.create', [
            'title' => 'Добавьте изображение в галерею'
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
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $types = ['image/jpeg', 'image/png'];

            if (in_array($image->getMimeType(), $types)) {
                $fileName = $this->getFileName($image);
                $request->file('image')->storeAs(
                    'upload',
                    $fileName,
                    ['disk' => 'public']
                );

                Image::create([
                    'title' => 'Забавные шахматы',
                    'img' => $fileName
                ]);

                return redirect()->route('admin.gallery.index');
            }
        }
    }

    /**
     * @param $image
     * @return string
     */
    protected function getFileName($image)
    {
        $num = 0;
        $files = Storage::disk('public')->files('upload');
        foreach ($files as $file) {
            $x = (int)substr(explode('.', $file)[0], -2);
            $num = ($num > $x) ? $num : $x;
        }
        $num++;
        $num = ($num < 10) ? '0' . $num : $num;
        return 'funny-chess-' . $num . '.' . $image->extension();
    }

    /**
     * Display the specified resource.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function show(int $id)
    {
        return view('admin.gallery.show', [
            'image' => Image::find($id)
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  integer $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $id)
    {

        Storage::disk('public')->delete('/upload/' . Image::find($id)->img);
        Image::destroy($id);
        return redirect()->route('admin.gallery.index');
    }
}
