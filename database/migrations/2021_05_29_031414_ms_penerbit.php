<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class MsPenerbit extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ms_penerbit', function (Blueprint $table){
            $table->string('kode_penerbit', 10);
            $table->string('nama_penerbit', 30);
            $table->string('alamat_penerbit', 50);
            $table->bigint('telp_penerbit', 20);
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ms_penerbit');
    }
}
