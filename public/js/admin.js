$(function() {
    $('[data-toggle="tooltip"]').tooltip();
});

$(document).ready(function(){
    // redirect halaman daftar siswa
    $('.siswa').click(function(){
        window.location.href= '/Siswa';
    });

    // Perubahan tahun
    $('#tahun').change(function(){
        let tahun = $('#tahun').val();
        alert(tahun);
        window.location.href = '/Siswa/index/'+tahun+'/'+null+'/'+null;
    });

    // Perubahan jurusan
    $('#jurusan').change(function(){
        let jurusan = $('#jurusan').val();
        window.location.href = '/Siswa/index/'+tahun+'/'+jurusan+'/'+null;
    });

    // Perubahan kelas
    $('#kelas').change(function(jurusan = null, tahun = null, kelas = null){
        kelas = $('#kelas').val();
        window.location.href = '/Siswa/index'+tahun+'/'+jurusan+'/'+kelas;
    });


});