<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class PengampuTKJ extends Model
{
    use HasFactory;

    protected $fillable = [
        'matkul_id',
        'dosen_pj',
        'dosen_anggota',
        'kelas_id',
        'jumlah_jam'
    ];

    public function dosenPJ(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'dosen_pj');
    }

    public function dosenAnggota(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'dosen_anggota');
    }

    public function matkul(): BelongsTo
    {
        return $this->belongsTo(Matkul::class);
    }

    public function kelas(): BelongsTo
    {
        return $this->belongsTo(Kelas::class);
    }
    
}


