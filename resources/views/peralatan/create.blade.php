@extends('layouts.dashboard')
@section('content')
        <h3>Silahkan Input data Barang</h3>
        <form action="/peralatan" method="POST" class="">
            @csrf
            <div class="mb-3">
                <label for="nama_alat" class="form-label">Nama Barang</label>
                <input type="text" class="form-control" id="nama_alat" name="nama_alat" placeholder="Masukan Nama Barang">
            </div>
            <div class="mb-3">
                <label for="jumlah" class="form-label">jumlah Barang</label>
                <input type="text" class="form-control" id="jumlah" name="jumlah" placeholder="Masukan Jumlah Barang">
            </div>
            <div class="mb-3">
                <label for="kondisi" class="form-label">Kondisi Barang</label>
                <input type="text" class="form-control" id="kondisi" name="kondisi" placeholder="Masukan kondisi Barang">
            </div>
            <button class="btn btn-primary btn-block" type="submit">Simpan</button>
            <a href="{{ route('peralatan.index') }}" class="btn btn-secondary btn-block">Batal</a>
        </form>

@endsection

