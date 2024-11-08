<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ruangan extends Model
{
    use HasFactory;

    protected $fillable = [
        'Nama_Ruangan',
        'Kode_Ruangan',
        'Lokasi'
    ];
}
