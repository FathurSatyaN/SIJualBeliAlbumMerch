@extends('layouts.dashboard')

@section('content')
<h1 class="display-6">어서오십시오 Admin</h1>
<div class="d-flex justify-content-between align-items-center">
  <style>
    .clock {
        font-size: 48px;
        font-weight: bold;
        text-align: center;
    }
</style>
</head>
<body>
<div class="clock">
    <span id="jam"></span>:
    <span id="menit"></span>:
    <span id="detik"></span>
</div>

<script>
    function updateClock() {
        var now = new Date();
        var jam = now.getHours();
        var menit = now.getMinutes();
        var detik = now.getSeconds();

        // Tambahkan angka 0 di depan jam, menit, dan detik jika hanya satu digit
        jam = padZero(jam);
        menit = padZero(menit);
        detik = padZero(detik);

        // Update nilai jam, menit, dan detik pada elemen HTML
        document.getElementById('jam').innerHTML = jam;
        document.getElementById('menit').innerHTML = menit;
        document.getElementById('detik').innerHTML = detik;

        // Jalankan fungsi updateClock setiap 1 detik (1000 ms)
        setTimeout(updateClock, 1000);
    }

    // Fungsi untuk menambahkan angka 0 di depan jam, menit, dan detik jika hanya satu digit
    function padZero(value) {
        if (value < 10) {
            return '0' + value;
        } else {
            return value;
        }
    }

    // Jalankan fungsi updateClock saat halaman selesai diload
    window.onload = function() {
        updateClock();
    };
</script>
  <div class="dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
     Top List Sale
  </div>
</div>

<div class="row row-cols-1 mt-4 row-cols-md-4 g-4">
    <div class="col">
      <div class="card">
        <img src="{{asset('AlbumNewjeans.svg')}}"class="card-img-top" alt="icon">
        <div class="card-body">
          <h5 class="card-title">Top Sale #1</h5>
          <p class="card-text">This is the Most Selling Album</p>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <img src="{{asset('AlbumJisoo.svg')}}"class="card-img-top" alt="icon">
        <div class="card-body">
          <h5 class="card-title">Top Sale #2</h5>
          <p class="card-text">This is the 2nd Most Selling Album</p>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <img src="{{asset('AlbumIU.svg')}}"class="card-img-top" alt="icon">
        <div class="card-body">
          <h5 class="card-title">Top Sale #3</h5>
          <p class="card-text">This is The 3rd Most Selling Album</p>
        </div>
      </div>
    </div>
    <div class="col">
      <div class="card">
        <img src="{{asset('AlbumNCT.svg')}}"class="card-img-top" alt="icon">
        <div class="card-body">
          <h5 class="card-title">Top Sale #4</h5>
          <p class="card-text">The Least Selling Album</p>
        </div>
      </div>
    </div>
  </div>
@endsection