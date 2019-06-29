<?php

namespace App\Http\Controllers;
use illuminate\Http\Request;

use App\Crud;

class CrudController extends Controller
{
    public function __construct()
    {
        //
    }

    public function index(){
        $data = Crud::all();
        return response($data);
    }

    public function show($id){
        $data = Crud::find($id);
        return response($data);
    }

    public function store(Request $request){
        Crud::create($request->all());
        return response('Tambah Data Berhasil');
    }

    public function update(Request $request, $id){
        $data = Crud::find($id)->update($request->all());
        return response('Ubah Data Berhasil');
    }

    public function sorting(Request $request){
            $data = Crud::whereNotNull('id');
            if($request->has('type')){
                $data = $data->where('type', $request->input('type'));
            }
            if($request->has('status')){
                $data = $data->where('status', $request->input('status'));
            }
            $data = $data->get();
            return response($data);
    }

    public function sorting_type($type){
            $data = Crud::where('type', $type)->get();
            return response($data);
    }

    public function change_status(Request $request, $id){
        $data = Crud::find($id)->update($request->all());
        return response('Ubah Status berhasil');
    }

    public function change_type(Request $request, $id){
        $data = Crud::find($id)->update($request->all());
        return response('Ubah Type berhasil');
    }

    public function destroy($id){
        $data = Crud::find($id)->delete();
        return response('Hapus Data Berhasil');
    }
}
