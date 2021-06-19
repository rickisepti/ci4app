<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
    // method contructor : biar fungsi ini otomatis di jalanin ketika kita menjalankan controller ini
    protected $komikModel;
    public function __construct()
    {
        // model
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        $data = [
            'title'  => 'Daftar Komik',
            'active' => 'komik',
            'komik'  => $this->komikModel->getKomik()
        ];

        return view('komik/index', $data);
    }

    public function detail($slug)
    {
        $data = [
            'title'  => 'Detail Komik',
            'active' => 'komik',
            'komik'  => $this->komikModel->getKomik($slug) // memanggil fungsi getKomik yang ada di KomikModel
        ];

        // jika data komik tidak ada di table komik
        if (empty($data['komik'])) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException('Judul komik ' . $slug . ' tidak di temukan');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {
        $data = [
            'title'      => 'Form Tambah Data Komik',
            'active'     => 'komik',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    public function save()
    {
        // validasi input
        if (!$this->validate([
            'judul'    => 'required|is_unique[komik.judul]',
            'penulis'  => 'required',
            'penerbit' => 'required',
            'sampul'   => 'is_image[sampul]|max_size[sampul,1024]|mime_in[sampul,image/png,image/jpg]'
        ])) {
            return redirect()->to('/komik/create')->withInput();
        }

        // ambil gambar
        $fileSampul = $this->request->getFile('sampul');

        // apakah tidak ada gambar yang di upload
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            // generate nama sampul random
            $namaSampul = $fileSampul->getRandomName();

            // pindahkan file ke folder img
            $fileSampul->move('img', $namaSampul);
        }

        // membuat judul menjadi slug
        $slug = url_title($this->request->getVar('judul'), '-', true);

        // insert ke database
        $this->komikModel->save([
            'judul'    => $this->request->getVar('judul'),
            'slug'     => $slug,
            'penulis'  => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul'   => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil di tambahkan');

        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);

        // cek jika file sampul default.png
        if ($komik['sampul'] != 'default.png') {
            // hapus gambar di folder img
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);

        session()->setFlashdata('pesan', 'Data berhasil di hapus');

        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title'      => 'Form Ubah Data Komik',
            'active'     => 'komik',
            'validation' => \Config\Services::validation(),
            'komik'      => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {
        if (!$this->validate([
            'judul'    => 'required|is_unique[komik.judul,id,' . $id . ']',
            'penulis'  => 'required',
            'penerbit' => 'required',
            'sampul'   => 'is_image[sampul]|max_size[sampul,1024]|mime_in[sampul,image/png,image/jpg]'
        ])) {
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }

        // jika lolos validasi kemudian kelola file gambar baru
        $fileSampul = $this->request->getFile('sampul');

        // cek gambar apakah gambar lama (tidak upload sampul baru)
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // jika upload sampul baru
            $namaSampul = $fileSampul->getRandomName();

            // pindahkan gambar
            $fileSampul->move('img', $namaSampul);

            // hapus file yang lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }


        $slug = url_title($this->request->getVar('judul'), '-', true);

        // update ke database
        $this->komikModel->save([
            'id'       => $id, // jika ada id di method save maka otomatis codeigniter sudah tau maksudnya update
            'judul'    => $this->request->getVar('judul'),
            'slug'     => $slug,
            'penulis'  => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul'   => $namaSampul
        ]);

        session()->setFlashdata('pesan', 'Data berhasil di ubah');

        return redirect()->to('/komik');
    }
}
