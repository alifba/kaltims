queb_boxtahun  > combobox pilih tahun pelajaran
SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
FROM tahunajar;

que_jumtahun > jumlah tahun pelajaran
select count(id_thnajar) as jumtahun
FROM tahunajar;

queb_boxjurusantahun > combo box pilih jurusan dr tahun yg sdh dipilih
SELECT jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
FROM jurusan, tahunajar
where tahunajar.ID_THNAJAR=$itahun;

que_jumlahjurusanpertahun > jumlah jurusan
select count(id_jurusan) as jumjurusan
from (SELECT jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
FROM jurusan, tahunajar
where tahunajar.ID_THNAJAR=$itahun);

queb_boxkelasjurtahun > combo box pilih kelas dr tahun dan jurusan yg sdh dipilih
SELECT kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
FROM tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR
where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan;

que_jumlahkelasperjurpertahun > jumlah kelas
select count(id_kelas) as jumkelas
from (SELECT kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR
FROM tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR
where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan);

queb_tabelsiswa
SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, kelas.ID_THNAJAR, kelas.ID_JURUSAN, kelassiswa.ID_MUTASI, kelassiswa.TGL_MUTASI, siswa.ID_SISWA, siswa.NIS_SISWA, siswa.NM_SISWA, siswa.GENDER_SISWA, siswa.EMAIL_SISWA, siswa.AGAMA_SISWA, siswa.TMPLAHIR_SISWA, siswa.TGLLAHIR_SISWA, siswa.TGL_DITERIMA, siswa.GRADE_DITERIMA, siswa.TGL_KELUAR, siswa.GRADE_KELUAR, siswa.KET_KELUAR, siswa.NM_IBU, siswa.NM_AYAH, siswa.ANAK_KE, siswa.ALAMAT_SISWA, siswa.ALAMAT_ORTU, siswa.KERJA_AYAH, siswa.DETAIL_KERJA_AYAH, siswa.KERJA_IBU, siswa.DETAIL_KERJA_IBU, siswa.ASAL_SEKOLAH, siswa.JENIS_ASAL_SEKOLAH, siswa.NO_IJAZAH_ASAL, siswa.POTO_SISWA, siswa.SCAN_IJZH_SMP, siswa.SCAN_IJZH_SMK, siswa.SCAN_KARTUPLJR
FROM siswa INNER JOIN ((tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR) INNER JOIN kelassiswa ON kelas.ID_KELAS = kelassiswa.ID_KELAS) ON siswa.ID_SISWA = kelassiswa.ID_SISWA
where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan and kelas.ID_KELAS=$ikelas;

que_jumsiswaperkelasperjurpertahun
select count(id_siswa) as jumsiswa
from(SELECT tahunajar.ID_THNAJAR, tahunajar.NM_THNAJAR, jurusan.ID_JURUSAN, jurusan.NM_JURUSAN, jurusan.SING_JURUSAN, kelas.ID_KELAS, kelas.NM_KELAS, kelas.NM_GRADE, kelas.ID_THNAJAR, kelas.ID_JURUSAN, kelassiswa.ID_MUTASI, kelassiswa.TGL_MUTASI, siswa.ID_SISWA, siswa.NIS_SISWA, siswa.NM_SISWA, siswa.GENDER_SISWA, siswa.EMAIL_SISWA, siswa.AGAMA_SISWA, siswa.TMPLAHIR_SISWA, siswa.TGLLAHIR_SISWA, siswa.TGL_DITERIMA, siswa.GRADE_DITERIMA, siswa.TGL_KELUAR, siswa.GRADE_KELUAR, siswa.KET_KELUAR, siswa.NM_IBU, siswa.NM_AYAH, siswa.ANAK_KE, siswa.ALAMAT_SISWA, siswa.ALAMAT_ORTU, siswa.KERJA_AYAH, siswa.DETAIL_KERJA_AYAH, siswa.KERJA_IBU, siswa.DETAIL_KERJA_IBU, siswa.ASAL_SEKOLAH, siswa.JENIS_ASAL_SEKOLAH, siswa.NO_IJAZAH_ASAL, siswa.POTO_SISWA, siswa.SCAN_IJZH_SMP, siswa.SCAN_IJZH_SMK, siswa.SCAN_KARTUPLJR
FROM siswa INNER JOIN ((tahunajar INNER JOIN (jurusan INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR) INNER JOIN kelassiswa ON kelas.ID_KELAS = kelassiswa.ID_KELAS) ON siswa.ID_SISWA = kelassiswa.ID_SISWA
where tahunajar.ID_THNAJAR=$itahun and jurusan.ID_JURUSAN=$ijurusan and kelas.ID_KELAS=$ikelas)


que_detailsiswaaktif
SELECT tahunajar.NM_THNAJAR, kelas.NM_KELAS, kelas.NM_GRADE, angkatan.NM_ANGKATAN, angkatan.THN_ANGKATAN, angkatanjurusan.URUTANANGKATAN, status.NM_STATUS, mutasi.NM_MUTASI, kelassiswa.TGL_MUTASI, siswa.NIS_SISWA, siswa.NM_SISWA, siswa.GENDER_SISWA, siswa.EMAIL_SISWA, siswa.AGAMA_SISWA, siswa.TMPLAHIR_SISWA, siswa.TGLLAHIR_SISWA, siswa.TGL_DITERIMA, siswa.GRADE_DITERIMA, siswa.TGL_KELUAR, siswa.GRADE_KELUAR, siswa.KET_KELUAR, siswa.NM_IBU, siswa.NM_AYAH, siswa.ANAK_KE, siswa.ALAMAT_SISWA, siswa.ALAMAT_ORTU, siswa.KERJA_AYAH, siswa.DETAIL_KERJA_AYAH, siswa.KERJA_IBU, siswa.DETAIL_KERJA_IBU, siswa.ASAL_SEKOLAH, siswa.JENIS_ASAL_SEKOLAH, siswa.NO_IJAZAH_ASAL, siswa.POTO_SISWA, siswa.SCAN_IJZH_SMP, siswa.SCAN_IJZH_SMK, siswa.SCAN_KARTUPLJR
FROM angkatan INNER JOIN (tahunajar INNER JOIN (status INNER JOIN (mutasi INNER JOIN ((angkatanjurusan INNER JOIN siswa ON angkatanjurusan.ID_ANGJUR = siswa.ID_ANGJUR) INNER JOIN (kelas INNER JOIN kelassiswa ON kelas.ID_KELAS = kelassiswa.ID_KELAS) ON siswa.ID_SISWA = kelassiswa.ID_SISWA) ON mutasi.ID_MUTASI = kelassiswa.ID_MUTASI) ON status.ID_STATUS = siswa.ID_STATUS) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR) ON angkatan.ID_ANGKATAN = angkatanjurusan.ID_ANGKATAN;


que_lulusanallsiswa
SELECT siswa.ID_SISWA, siswa.NM_SISWA, lulusan.NM_LULUSAN, lulusan.THN_LULUSAN, lulusanjurusan.URUTANLULUSAN
FROM lulusan RIGHT JOIN (lulusanjurusan RIGHT JOIN siswa ON lulusanjurusan.ID_LUSJUR = siswa.ID_LUSJUR) ON lulusan.ID_LULUSAN = lulusanjurusan.ID_LULUSAN;

que_semuadetailsiswa
SELECT siswa.NM_SISWA, lulusan.ID_LULUSAN, lulusan.NM_LULUSAN, lulusan.THN_LULUSAN, lulusanjurusan.URUTANLULUSAN, que_detailsiswaaktif.ID_ANGKATAN, que_detailsiswaaktif.NM_ANGKATAN, que_detailsiswaaktif.THN_ANGKATAN, que_detailsiswaaktif.URUTANANGKATAN, que_detailsiswaaktif.ID_THNAJAR, que_detailsiswaaktif.NM_THNAJAR, que_detailsiswaaktif.ID_KELAS, que_detailsiswaaktif.NM_KELAS, que_detailsiswaaktif.ID_MUTASI, que_detailsiswaaktif.NM_MUTASI, que_detailsiswaaktif.ID_STATUS, que_detailsiswaaktif.NM_STATUS, que_detailsiswaaktif.ID_SISWA, que_detailsiswaaktif.NIS_SISWA, que_detailsiswaaktif.NM_SISWA, que_detailsiswaaktif.GENDER_SISWA, que_detailsiswaaktif.EMAIL_SISWA, que_detailsiswaaktif.AGAMA_SISWA, que_detailsiswaaktif.TMPLAHIR_SISWA, que_detailsiswaaktif.TGLLAHIR_SISWA, que_detailsiswaaktif.TGL_DITERIMA, que_detailsiswaaktif.GRADE_DITERIMA, que_detailsiswaaktif.TGL_KELUAR, que_detailsiswaaktif.GRADE_KELUAR, que_detailsiswaaktif.KET_KELUAR, que_detailsiswaaktif.NM_IBU, que_detailsiswaaktif.NM_AYAH, que_detailsiswaaktif.ANAK_KE, que_detailsiswaaktif.ALAMAT_SISWA, que_detailsiswaaktif.ALAMAT_ORTU, que_detailsiswaaktif.KERJA_AYAH, que_detailsiswaaktif.DETAIL_KERJA_AYAH, que_detailsiswaaktif.KERJA_IBU, que_detailsiswaaktif.DETAIL_KERJA_IBU, que_detailsiswaaktif.ASAL_SEKOLAH, que_detailsiswaaktif.JENIS_ASAL_SEKOLAH, que_detailsiswaaktif.NO_IJAZAH_ASAL, que_detailsiswaaktif.POTO_SISWA, que_detailsiswaaktif.SCAN_IJZH_SMP, que_detailsiswaaktif.SCAN_IJZH_SMK, que_detailsiswaaktif.SCAN_KARTUPLJR
FROM que_detailsiswaaktif RIGHT JOIN ((lulusan RIGHT JOIN lulusanjurusan ON lulusan.ID_LULUSAN = lulusanjurusan.ID_LULUSAN) RIGHT JOIN siswa ON lulusanjurusan.ID_LUSJUR = siswa.ID_LUSJUR) ON que_detailsiswaaktif.ID_SISWA = siswa.ID_SISWA;



PAGE B
tabel siswa aktif b (pilih tahun, jurusan, kelas)
NIS_SISWA, NM_SISWA, GENDER_SISWA, EMAIL_SISWA,
TGL_DITERIMA, GRADE_DITERIMA, detail


tabel siswa aktif b (pilih tahun, pilih jurusan, all kelas)
NM_KELAS,
NIS_SISWA, NM_SISWA, GENDER_SISWA, EMAIL_SISWA,
TGL_DITERIMA, GRADE_DITERIMA, detail


tabel siswa aktif b (pilih tahun, all jurusan, otomatis all kelas)
SING_JURUSAN, NM_KELAS, 
NIS_SISWA, NM_SISWA, GENDER_SISWA, EMAIL_SISWA,
TGL_DITERIMA, GRADE_DITERIMA, detail

PAGE B1 - Detail

NM_THNAJAR,NM_JURUSAN, NM_KELAS, NM_GRADE, ID_MUTASI, TGL_MUTASI, NIS_SISWA, NM_SISWA, GENDER_SISWA, EMAIL_SISWA, AGAMA_SISWA, TMPLAHIR_SISWA, TGLLAHIR_SISWA, TGL_DITERIMA, GRADE_DITERIMA,  TGL_KELUAR,  GRADE_KELUAR,  KET_KELUAR,  NM_IBU,  NM_AYAH,  ANAK_KE,  ALAMAT_SISWA,  ALAMAT_ORTU,  KERJA_AYAH,  DETAIL_KERJA_AYAH,  KERJA_IBU,  DETAIL_KERJA_IBU,  ASAL_SEKOLAH,  JENIS_ASAL_SEKOLAH,  NO_IJAZAH_ASAL,  POTO_SISWA,  SCAN_IJZH_SMP,  SCAN_IJZH_SMK,  SCAN_KARTUPLJR








titip------

que3
SELECT kelas.NM_KELAS, kelas.NM_GRADE, angkatanjurusan.URUTANANGKATAN, status.NM_STATUS, mutasi.NM_MUTASI, kelassiswa.TGL_MUTASI, siswa.NIS_SISWA, siswa.NM_SISWA, siswa.GENDER_SISWA, siswa.EMAIL_SISWA, siswa.AGAMA_SISWA, siswa.TMPLAHIR_SISWA, siswa.TGLLAHIR_SISWA, siswa.TGL_DITERIMA, siswa.GRADE_DITERIMA, siswa.TGL_KELUAR, siswa.GRADE_KELUAR, siswa.KET_KELUAR, siswa.NM_IBU, siswa.NM_AYAH, siswa.ANAK_KE, siswa.ALAMAT_SISWA, siswa.ALAMAT_ORTU, siswa.KERJA_AYAH, siswa.DETAIL_KERJA_AYAH, siswa.KERJA_IBU, siswa.DETAIL_KERJA_IBU, siswa.ASAL_SEKOLAH, siswa.JENIS_ASAL_SEKOLAH, siswa.NO_IJAZAH_ASAL, siswa.POTO_SISWA, siswa.SCAN_IJZH_SMP, siswa.SCAN_IJZH_SMK, siswa.SCAN_KARTUPLJR
FROM status INNER JOIN (mutasi INNER JOIN ((angkatanjurusan INNER JOIN siswa ON angkatanjurusan.ID_ANGJUR = siswa.ID_ANGJUR) INNER JOIN (kelas INNER JOIN kelassiswa ON kelas.ID_KELAS = kelassiswa.ID_KELAS) ON siswa.ID_SISWA = kelassiswa.ID_SISWA) ON mutasi.ID_MUTASI = kelassiswa.ID_MUTASI) ON status.ID_STATUS = siswa.ID_STATUS;











SELECT siswa.NM_SISWA, angkatan.NM_ANGKATAN, angkatanjurusan.URUTANANGKATAN, lulusan.NM_LULUSAN, lulusanjurusan.URUTANLULUSAN, tahunajar.NM_THNAJAR, jurusan.NM_JURUSAN, kelas.NM_KELAS, mutasi.NM_MUTASI
FROM tahunajar 
left JOIN (status 
left JOIN (mutasi 
left JOIN (lulusan 
INNER JOIN ((((jurusan 
INNER JOIN ((angkatan 
INNER JOIN angkatanjurusan ON angkatan.ID_ANGKATAN = angkatanjurusan.ID_ANGKATAN) INNER JOIN siswa ON angkatanjurusan.ID_ANGJUR = siswa.ID_ANGJUR) ON jurusan.ID_JURUSAN = angkatanjurusan.ID_JURUSAN) INNER JOIN kelas ON jurusan.ID_JURUSAN = kelas.ID_JURUSAN) INNER JOIN lulusanjurusan ON (lulusanjurusan.ID_LUSJUR = siswa.ID_LUSJUR) AND (jurusan.ID_JURUSAN = lulusanjurusan.ID_JURUSAN)) INNER JOIN kelassiswa ON (siswa.ID_SISWA = kelassiswa.ID_SISWA) AND (kelas.ID_KELAS = kelassiswa.ID_KELAS)) ON lulusan.ID_LULUSAN = lulusanjurusan.ID_LULUSAN) ON mutasi.ID_MUTASI = kelassiswa.ID_MUTASI) ON status.ID_STATUS = siswa.ID_STATUS) ON tahunajar.ID_THNAJAR = kelas.ID_THNAJAR;














