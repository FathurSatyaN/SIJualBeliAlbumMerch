@extends('layouts.dashboard')
@section('content')
        <h3>Silahkan Input Data Transaksi Pembelian</h3>
        <form action="/pengiriman" method="POST" class="">
            @csrf
            <div class="form-group">
                <label for="id_outelt" class="form-label">nama pembeli</label>
                <select class="form-control select2" style="width: 100%;" name="id_outlet" id="id_outlet">
                    <option disabled value>Pilih Nama pembeli</option>
                    @foreach ($outlet_ as $item)
                        <option value="{{ $item->id }}">{{ $item->nama_outlet }}></option>
                    @endforeach
                </select>
            </div>
            <div class="form-group">
            <label for="id_kategori_barang" class="form-label">Nama Barang</label>
            <select class="form-control select2" style="width: 100%;" name="id_barang" id="id_barang">
                    <option disabled value>Pilih Nama Barang</option>
                    @foreach ($barang_ as $item)
                        <option value="{{ $item->id }}">{{ $item->nama_barang }}></option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label for="biaya_pengiriman" class="form-label">Harga Barang</label>
                <input type="text" class="form-control" id="biaya_pengiriman" name="biaya_pengiriman" placeholder="Masukan Harga Barang">
            </div>

            <div class="mb-3">
                <label for="tanggal" class="form-label">Tanggal Pembelian</label>
                <input type="date" class="form-control" id="tanggal" name="tanggal" placeholder="Masukan Tanggal Pembelian">
            </div>
            <button class="btn btn-primary btn-block" type="submit">Simpan</button>
            <a href="{{ route('pengiriman.index') }}" class="btn btn-secondary btn-block">Batal</a>
        </form>

@endsection