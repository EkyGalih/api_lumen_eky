<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Crud extends Model{
    protected $table = 'crud';
    protected $fillable = ['aktifitas','deskripsi','type','status'];
}
