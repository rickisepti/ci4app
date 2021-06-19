<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
    protected $table         = 'komik';
    protected $useTimestamps = true;
    protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];

    // untuk mengambil data komik berdasarkan slug
    public function getKomik($slug = false)
    {
        // jika slug nya gak ada (tidak di temukan) maka tampilkan semua data komik
        if ($slug == false) {
            return $this->findAll();
        }

        // tetapi jika slug nya ada maka menampilkan data berdasarkan slug
        return $this->where(['slug' => $slug])->first();
    }
}
