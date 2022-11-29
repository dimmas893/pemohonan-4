@extends('layouts.admin.template_admin')
@section('content')
    <div class="">
        <div class="card">
            <div class="card-header text-center">
                Review
            </div>
            <div class="ml-3 mt-3">
                {{-- <label for="">Nama Layanan : {{ $rincian->pemohonan->layanan->nama_layanan }} </label> --}}
            </div>

            <div class="ml-3 mt-3">
                <label for="">User : {{ $rincian->pemohonan->pemohon->user->name }} </label>
            </div>
            <br>
            <div class="ml-3 mt-3">
                <label for="">Nama Pemohon : {{ $rincian->pemohonan->pemohon->nama_pemohon }} </label>
            </div>
            <div class="ml-3">
                <label for="">Alamat : {{ $rincian->pemohonan->pemohon->no_hp }} </label>
            </div>
            <div class="ml-3">
                <label for="">Email : {{ $rincian->pemohonan->pemohon->email }} </label>
            </div>
            <div class="ml-3">
                <label for="">No KK : {{ $rincian->pemohonan->pemohon->no_kk }} </label>
            </div>
            <div class="ml-3">
                <label for="">NIK : {{ $rincian->pemohonan->pemohon->nik }} </label>
            </div>
            <h2>Persyaratan</h2>
            @php
                $all = \App\Models\Rincian_Permohonan::where('id_permohonan', $rincian->pemohonan->id)->get();
            @endphp

            <div class="row">
                @foreach($all as $p)
                    <div class="col-6">
                        {{$p->entry_data}}
                    </div>
                    <div class="col-6">
                        <img src="{{ asset($p->upload_data) }}">
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
