<?php

namespace App\Controllers;

use App\Models\OrangModel;

class Orang extends BaseController
{
    // method contructor : biar fungsi ini otomatis di jalanin ketika kita menjalankan controller ini
    protected $orangModel;
    public function __construct()
    {
        // model
        $this->orangModel = new OrangModel();
    }

    public function index()
    {
        $currentPage = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;

        $keyword = $this->request->getVar('keyword');

        // jika ada yang di cari
        if ($keyword) {
            $orang = $this->orangModel->search($keyword);
        } else {
            // tapi jika tidak ada data yang di cari maka tampilkan semua
            $orang = $this->orangModel;
        }

        $data = [
            'title'       => 'Daftar Orang',
            'active'      => 'orang',
            'orang'       => $orang->paginate(10, 'orang'),
            'pager'       => $this->orangModel->pager,
            'currentPage' => $currentPage
        ];

        return view('orang/index', $data);
    }
}
