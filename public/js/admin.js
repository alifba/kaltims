$(function() {
    $('[data-toggle="tooltip"]').tooltip();

    // redirect halaman daftar siswa
    $('.siswa').click(function(){
        window.location.href= '/Siswa';
    });
});

// $(document).ready(function(){
//     $('#tahun').change(function(){
//         alert($('#tahun').val());
//     });
//     $('#jurusan').change(function(){
//         alert($('#jurusan').val());
//     });
//     $('#kelas').change(function(){
//         alert($('#kelas').val());
//     });
// });