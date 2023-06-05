@extends('layouts.dashboard')

@section('content')
<h1 class="display-6">Data Laporan Outlet (Supplier)</h1>
<a href="/outlet/create"><button data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary mt-3"><i class="bi bi-clipboard2-plus"></i> Tambah</button></a>
<a href="/outlet-pdf"><button data-bs-toggle="modal" data-bs-target="#exampleModal" class="btn btn-primary mt-3"><i class="bi bi-printer"></i> Cetak</button></a>
<div class="table-responsive">
<table id="example" style="width:100%" class="table table-striped table-bordered">
        <thead style="background-color: rgb(255, 93, 217);">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Nama Supplier</th>
                <th scope="col">Lokasi Utama Supplier</th>
                <th scope="col">Jumlah Stock Dikirim</th>
                <th scope="col">Limit Stock Shop</th>
                <th scope="col">Manage</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($outlet as $item)
            <tr>
                <td>{{ $item->id }}</td>
                <td>{{ $item->nama_outlet }}</td>
                <td>{{ $item->lokasi }}</td>
                <td>{{ $item->jumlah_stock }}</td>
                <td>{{ $item->batas_stock }}</td>
                <td>
                    <a class="btn btn-warning" href="/outlet/edit/{{$item->id}}">Edit</a>
                    <a class="btn btn-danger" href="/outlet/delete/{{$item->id}}" onclick="return confirm('Are You Sure')">Delete</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    </div>
@endsection