$(function() {
    $('[data-toggle="tooltip"]').tooltip();
});

$(document).ready(function(){
     // redirect halaman daftar siswa
    $('.siswa').click(function(){
        window.location.href= '/Siswa';
    });

    // tahun
    $('#tahun').change(function(tahun = null, jurusan = null, kelas = null){
        tahun = $('#tahun').val();
        window.location.href= '/Siswa/' +tahun+'/'+jurusan+'/'+kelas;
    });

    // jurusan
    $('#jurusan').change(function(tahun = null, jurusan = null, kelas = null){
        tahun = null
        jurusan = $('#jurusan').val();
        window.location.href= '/Siswa/' +tahun+'/'+jurusan+'/'+kelas;
    });

    // kelas
    $('#kelas').change(function(tahun = 0, jurusan = null, kelas = null){
        tahun = null
        kelas = $('#kelas').val();
        window.location.href= '/Siswa/' +tahun+'/'+jurusan+'/'+kelas;
    });
});