<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MsDetailPinjam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ms_detail_pinjam', function (Blueprint $table){
            $table->string('kode_peminjaman', 10);
            $table->string('kode_buku', 10);
            $table->date('tgl_kembali');
            $table->double('denda');
            $table->tinyint('status_kembali', 1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ms_detail_pinjam');
    }
}
