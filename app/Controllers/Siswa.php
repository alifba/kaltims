<?php

namespace App\Controllers;

use App\Models\angkatanModel;
use App\Models\angkatanjurusanModel;

class Siswa extends BaseController
{
    protected $angkatan;
    protected $angkatanjurusan;
    public function __construct()
    {
        $this->angkatan = new angkatanModel();
        $this->angkatanjurusan = new angkatanjurusanModel();
    }

    public function index()
    {
        return view('Siswa/index');
    }

    public function coba()
    {
        $siswa = $this->angkatan->findAll();
        $data = [
            'siswa' => $siswa,
            'title' => 'coba'
        ];
        return view('coba', $data);
    }

    //--------------------------------------------------------------------

}
