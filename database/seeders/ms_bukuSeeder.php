<?php

namespace Database\Seeders;
use App\Models\ms_buku;
use Illuminate\Database\Seeder;

class ms_bukuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $buku1 = new ms_buku();
        $buku1-> kode_buku = "B001";
        $buku1-> kode_kategori = "K001";
        $buku1-> kode_penerbit = "P004";
        $buku1-> judul_penerbit = "Boku No Hero Academia ";
        $buku1-> jumlah_buku = "4";
        $buku1-> pengarang_buku = "Kohei HIrokoshi";
        $buku1-> tahun_terbit_buku ="2016";
        $buku1-> save();

        $buku2 = new ms_buku();
        $buku2-> kode_buku = "B002";
        $buku2-> kode_kategori = "K002";
        $buku2-> kode_penerbit = "P002";
        $buku2-> judul_penerbit = "Dr. Stone ";
        $buku2-> jumlah_buku = "2";
        $buku2-> pengarang_buku = "Kohei HIrokoshi";
        $buku2-> tahun_terbit_buku ="2017";
        $buku2-> save();


    }
}
