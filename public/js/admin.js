$(function() {
    $('[data-toggle="tooltip"]').tooltip();

    // redirect halaman daftar siswa
    $('.siswa').click(function(){
        window.location.href= '/Siswa';
    });
});