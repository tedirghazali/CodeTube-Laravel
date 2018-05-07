<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\File;
use Illuminate\Support\Facades\Storage;
use Mail;

class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $files = File::orderBy('created_at','DESC')->paginate(30);
        return view('file.index', ['files' => $files]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('file.dropzone');
    }

    public function dropzone(Request $request){
        $file = $request->file('file');
        File::create([
            'title' => $file->getClientOriginalName(),
            'description' => 'Upload with dropzone.js',
            'path' => $file->store('public/storage')
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
        $files = $request->file('file');
        foreach ($files as $file) {
            File::create([
                'title' => $file->getClientOriginalName(),
                'description' => '',
                'path' => $file->store('public/storage')
            ]);
        }
        return redirect('/file')->with('success','File telah diupload');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $dl = File::find($id);
        return Storage::download($dl->path, $dl->title);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $fl = File::find($id);
        $data = array('title' => $fl->title, 'path' => $fl->path);
        Mail::send('emails.attachment', $data, function($message) use($fl){
            $message->to('myteukughazali@gmail.com', 'Teuku Ghazali')->subject('Laravel file attachment and embed');
            $message->attach(storage_path('app/'.$fl->path));
            $message->from('tedirghazali@gmail.com', 'Tedir Ghazali');
        });
        return redirect('/file')->with('success','File attachment has been sent to your email');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $del = File::find($id);
        Storage::delete($del->path);
        $del->delete();
        return redirect('/file');
    }
}
