<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dosen extends Model
{
    use HasFactory;

    protected $fillable = [
        'Nama_Dosen',
        'NIP',
        'Prodi'
    ];

    // Relasi ke model PengampuTKJ sebagai dosen PJ
    public function pengampuPJ()
    {
        return $this->hasMany(PengampuTKJ::class, 'dosen_pj');
    }

    // Relasi ke model PengampuTKJ sebagai dosen anggota
    public function pengampuAnggota()
    {
        return $this->hasMany(PengampuTKJ::class, 'dosen_anggota');
    }
}
