$(function() {
    $('[data-toggle="tooltip"]').tooltip();
});

$(document).ready(function(){
     // redirect halaman daftar siswa
    $('.siswa').click(function(){
        window.location.href= '/Siswa';
    });

    tahun = null;
    kelas = null;
    jurusan = null;

    // tahun
    $('#tahun').on('change', function(){
        // window.location.href= '/Siswa';
        tahun = $('#tahun').val();
        
        $('.tahun').load('/Siswa/ajax/'+tahun);
    });

    // jurusan
    $('#jurusan').change(function(){
        jurusan = $('#jurusan').val();
        $('.jurusan').load('/Siswa/ajax2/'+tahun+'/'+jurusan);
    });

    // kelas
    $('#kelas').change(function(){
        kelas = $('#kelas').val();
        $('.kelas').load('/Siswa/ajax3/'+tahun+'/'+jurusan+'/'+kelas);
    });
});