@extends('layouts.dashboard')

@section('content')
<h1 class="display-6">Data Transaksi Pembelian</h1>
<a href="/pengiriman/create"><button data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary mt-3"><i class="bi bi-clipboard2-plus"></i> Tambah</button></a>
<a href="/pengiriman-pdf"><button data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary mt-3"><i class="bi bi-printer"></i> Cetak</button></a>
<div class="table-responsive">
<table id="example" style="width:100%" class="table table-striped table-bordered">
        <thead style="background-color:rgb(255, 93, 217);">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nama Pembeli</th>
                <th scope="col">Nama Barang</th>
                <th scope="col">Harga Barang</th>
                <th scope="col">Tanggal Pembelian</th>
                <th scope="col">Manage</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pengiriman as $item)
            <tr>
                <td>{{ $item->id }}</td>
                <td>{{ $item->ROutlet->nama_outlet}}</td>
                <td>{{ $item->RBarang->nama_barang}}</td>
                <td>{{ $item->biaya_pengiriman}}</td>
                <td>{{ $item->tanggal }}</td>
                <td>
                    <a class="btn btn-warning" href="/pengiriman/edit/{{$item->id}}">Edit</a>
                    <a class="btn btn-danger" href="/pengiriman/delete/{{$item->id}}" onclick="return confirm('Are You Sure')">Delete</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
          </div>
@endsection