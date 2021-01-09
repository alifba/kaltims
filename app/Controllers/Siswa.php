<?php

namespace App\Controllers;

use App\Models\angkatanModel;
use App\Models\angkatanjurusanModel;
use App\Models\jurusanModel;
use App\Models\kelasModel;
use App\Models\kelassiswaModel;
use App\Models\lanjutModel;
use App\Models\lulusanModel;
use App\Models\lulusanjurusanModel;
use App\Models\mutasiModel;
use App\Models\siswaModel;
use App\Models\siswalanjutModel;
use App\Models\statusModel;
use App\Models\tahunajarModel;

class Siswa extends BaseController
{
    protected $angkatan;
    protected $angkatanjurusan;
    protected $jurusan;
    protected $kelas;
    protected $kelassiswa;
    protected $lanjut;
    protected $lulusan;
    protected $lulusanjurusan;
    protected $mutasi;
    protected $siswa;
    protected $siswalanjut;
    protected $status;
    protected $tahunajar;

    public function __construct()
    {
        $this->angkatan = new angkatanModel();
        $this->angkatanjurusan = new angkatanjurusanModel();
        $this->jurusan = new jurusanModel();
        $this->kelas = new kelasModel();
        $this->kelassiswa = new kelassiswaModel();
        $this->lanjut = new lanjutModel();
        $this->lulusan = new lulusanModel();
        $this->lulusanjurusan = new lulusanjurusanModel();
        $this->mutasi = new mutasiModel();
        $this->siswa = new siswaModel();
        $this->siswalanjut = new siswalanjutModel();
        $this->status = new statusModel();
        $this->tahunajar = new tahunajarModel();
    }

    public function index()
    {
        $tahunajar = $this->tahunajar->findAll();
        $kelas = $this->kelas->findAll();
        $jurusan = $this->jurusan->findAll();
        $siswa = $this->siswa->findAll();

        $data = [
            'siswa' => $siswa,
            'kelas' => $kelas,
            'jurusan' => $jurusan,
            'tahunajar' => $tahunajar,
            'title' => 'Daftar siswa'
        ];
        return view('Siswa/index', $data);
    }

    public function coba()
    {
        $angkatan = $this->angkatan->findAll();


        $data = [
            'angkatan' => $angkatan,
            'title' => 'coba'
        ];
        return view('coba', $data);
    }

    //--------------------------------------------------------------------

}
