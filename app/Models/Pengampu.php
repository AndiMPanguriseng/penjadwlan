<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Pengampu extends Model
{
    use HasFactory;

    protected $table = 'pengampu'; // Nama view yang sudah dibuat di database

    public $timestamps = true; // Jika view tidak memiliki kolom timestamps

    protected $primaryKey = 'id'; // Karena view biasanya tidak punya primary key
    public $incrementing = false; // Nonaktifkan incrementing key jika tidak ada

    public function dosenPJ(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'dosen_pj', 'id');
    }

    public function dosenAnggota(): BelongsTo
    {
        return $this->belongsTo(Dosen::class, 'dosen_anggota', 'id');
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
