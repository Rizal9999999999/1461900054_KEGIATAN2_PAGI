<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MsPeminjaman extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ms_peminjaman', function (Blueprint $table){
            $table->string('kode_peminjaman', 10);
            $table->string('kode_petugas', 10);
            $table->string('kode_peminjam', 10);
            $table->date('tgl_peminjam');
            $table->date('tgl_kembali');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ms_peminjaman');
    }
}
