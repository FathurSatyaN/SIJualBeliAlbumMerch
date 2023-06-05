@extends('layouts.dashboard')
@section('content')
        <h3>Input Data Transaksi Penjualan</h3>
        <form action="/bahanbaku" method="POST" class="">
            @csrf
            <div class="mb-3">
                <label for="nama_bahan" class="form-label">Nama Barang</label>
                <input type="text" class="form-control" id="nama_bahan" name="nama_bahan" placeholder="Masukan Nama Barang">
            </div>
            <div class="mb-3">
                <label for="baik_digunakan" class="form-label">Tanggal Penjualan</label>
                <input type="date" class="form-control" id="baik_digunakan" name="baik_digunakan" placeholder="Masukan Tanggal Penjualan">
            </div>
            <div class="mb-3">
                <label for="takaran" class="form-label">Total Terjual</label>
                <input type="text" class="form-control" id="takaran" name="takaran" placeholder="Masukan Total Terjual">
            </div>
            <button class="btn btn-primary btn-block" type="submit">Simpan</button>
            <a href="{{ route('bahanbaku.index') }}" class="btn btn-secondary btn-block">Batal</a>
        </form>

@endsection
