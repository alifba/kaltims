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
use mysqli;



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
    protected $db;


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
        $this->db = \Config\Database::connect();
    }

    public function index()
    {
        $tahunajars =  $this->db->query("SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar");
        $tahunajar = $tahunajars->getResultArray();

        $data = [
            'tahunajar' => $tahunajar,
            'title' => 'Daftar siswa'
        ];
        return view('Siswa/index', $data);
    }

    public function ajax($itahun)
    {
        $tahunajars =  $this->db->query("SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar");
        $tahunajar = $tahunajars->getResultArray();

        $jurusans =  $this->db->query("SELECT jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM jurusan, tahunajar
        where tahunajar.ID_THNAJAR=$itahun");
        $jurusan = $jurusans->getResultArray();

        $data = [
            'jurusan' => $jurusan,
            'tahunajar' => $tahunajar,
            'itahun' => $itahun
        ];

        return view('Siswa/ajax', $data);
    }

    public function ajax2($itahun, $ijurusan)
    {
        $tahunajars =  $this->db->query("SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar");
        $tahunajar = $tahunajars->getResultArray();

        $jurusans =  $this->db->query("SELECT jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM jurusan, tahunajar
        where tahunajar.ID_THNAJAR=$itahun");
        $jurusan = $jurusans->getResultArray();

        $kelass =  $this->db->query("SELECT kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR
        where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan");
        $kelas = $kelass->getResultArray();

        // $kelas1 = $this->kelas->where('ID_THNAJAR', $itahun)->where('ID_THNAJAR', $ijurusan)->findAll();
        $data = [
            'tahunajar' => $tahunajar,
            'jurusan' => $jurusan,
            'kelas' => $kelas,
            'itahun' => $itahun,
            'ijurusan' => $ijurusan
        ];

        return view('Siswa/ajax2', $data);
    }

    public function ajax3($itahun, $ijurusan, $ikelas)
    {
        $tahunajars =  $this->db->query("SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar");
        $tahunajar = $tahunajars->getResultArray();

        $jurusans =  $this->db->query("SELECT jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM jurusan, tahunajar
        where tahunajar.ID_THNAJAR=$itahun");
        $jurusan = $jurusans->getResultArray();

        $kelass =  $this->db->query("SELECT kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
        FROM tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR
        where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan");
        $kelas = $kelass->getResultArray();

        $siswas =  $this->db->query("SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, kelas.ID_THNAJAR, kelas.ID_JURUSAN, kelassiswa.ID_MUTASI, kelassiswa.TGL_MUTASI, siswa.ID_SISWA, siswa.NIS_SISWA, siswa.NM_SISWA, siswa.GENDER_SISWA, siswa.EMAIL_SISWA, siswa.AGAMA_SISWA, siswa.TMPLAHIR_SISWA, siswa.TGLLAHIR_SISWA, siswa.TGL_DITERIMA, siswa.GRADE_DITERIMA, siswa.TGL_KELUAR, siswa.GRADE_KELUAR, siswa.KET_KELUAR, siswa.NM_IBU, siswa.NM_AYAH, siswa.ANAK_KE, siswa.ALAMAT_SISWA, siswa.ALAMAT_ORTU, siswa.KERJA_AYAH, siswa.DETAIL_KERJA_AYAH, siswa.KERJA_IBU, siswa.DETAIL_KERJA_IBU, siswa.ASAL_SEKOLAH, siswa.JENIS_ASAL_SEKOLAH, siswa.NO_IJAZAH_ASAL, siswa.POTO_SISWA, siswa.SCAN_IJZH_SMP, siswa.SCAN_IJZH_SMK, siswa.SCAN_KARTUPLJR
        FROM siswa INNER JOIN ((tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR) INNER JOIN kelassiswa ON kelas.ID_KELAS = kelassiswa.ID_KELAS) ON siswa.ID_SISWA = kelassiswa.ID_SISWA
        where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan and kelas.ID_KELAS=$ikelas");
        $siswa = $siswas->getResultArray();

        $data = [
            'siswa' => $siswa,
            'kelas' => $kelas,
            'jurusan' => $jurusan,
            'tahunajar' => $tahunajar,
            'itahun' => $itahun,
            'ijurusan' => $ijurusan,
            'ikelas' => $ikelas
        ];

        return view('Siswa/ajax3', $data);
    }

    public function detail()
    {
        return view('Siswa/detail');
    }

    //--------------------------------------------------------------------

}
