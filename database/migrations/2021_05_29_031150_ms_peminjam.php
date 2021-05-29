<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MsPeminjam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ms_peminjam', function (Blueprint $table){
            $table->string('kode_peminjam', 10);
            $table->string('nama_peminjam', 30);
            $table->string('alamat_peminjam', 50);
            $table->bigint('telp_peminjam', 20);
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ms_peminjam');
    }
}
