<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mahasiswa extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    public $table = "mahasiswa";
    protected $fillable = [
        'nama', 'alamat', 'tmp_lahir','tgl_lahir','jk',
    ];


}
