<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pengampu_t_k_j_s', function (Blueprint $table) {
            $table->id();
            $table->foreignId('matkul_id')->constrained('matkuls')->cascadeOnDelete();
            $table->foreignId('dosen_pj')->constrained('dosens')->cascadeOnDelete();
            $table->foreignId('dosen_anggota')->constrained('dosens')->cascadeOnDelete();
            $table->foreignId('kelas_id')->constrained('kelas')->cascadeOnDelete();
            $table->integer('jumlah_jam');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pengampu_t_k_j_s');
    }
};
