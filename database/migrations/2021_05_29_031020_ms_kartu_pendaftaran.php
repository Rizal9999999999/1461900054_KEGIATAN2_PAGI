<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MsKartuPendaftaran extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ms_kartu_pendaftaran', function (Blueprint $table){
            $table->string('kode_kartu', 10);
            $table->string('kode_petugas', 10);
            $table->string('kode_peminjam', 10);
            $table->date('tgl_pembuatan');
            $table->date('tgl_akhir');
            $table->tinyint('status_aktif', 1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ms_kartu_pendaftaran');
    }
}
