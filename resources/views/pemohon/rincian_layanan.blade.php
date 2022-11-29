@extends('layouts.admin.template_admin')
@section('content')
    <div class="card">
        <div class="card-header text-center">
            Isi Data{{ $first->id_layanan }}
        </div>
        <div class="card-body text-center">
            <h2>Persyaratan</h2>
            <div class="row text-left">
                <div class="col-12">

                        <form action="/pemohon/store" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="modal-body p-4 bg-light">
                                <div class="my-2">
                                    <label for="nik">NIK</label>
                                    <input type="text" name="nik" class="form-control" placeholder="Masukan NIK" required>
                                </div>
                                <div class="my-2">
                                  <label for="no_kk">No KK</label>
                                  <input type="text" name="no_kk" class="form-control" placeholder="Masukan No KK" required>
                              </div>
                              <div class="my-2">
                                <label for="nama_pemohon">Nama Pemohon</label>
                                <input type="text" name="nama_pemohon" class="form-control" placeholder="Masukan Nama Pemohon" required>
                            </div>
                            <div class="my-2">
                                <label for="alamat">Alamat</label>
                                <textarea type="text" name="alamat"class="form-control" placeholder="Masukan Alamat" required></textarea>
                            </div>
                            <div class="my-2">
                                <label for="no_hp">No HP</label>
                                <input type="text" name="no_hp" class="form-control" placeholder="Masukan No HP" required>
                            </div>
                            <div class="my-2">
                                <label for="email">Email</label>
                                <input type="email" name="email" class="form-control" placeholder="Masukan Email" required>
                            </div>
                            </div>
                            <div class="modal-footer">
                            </div>

                            <input type="hidden" name="id" value="{{ $first->id_layanan }}">
                            <input type="hidden" name="id_persyaratan" value="{{ $first->id_persyaratan }}">
                            <input type="hidden" name="id_layanan" value="{{ $first->id_layanan }}">

                            <?php $cocote = 0; ?>
                    @foreach ($rincian_layanan as $item)

                            @if($item->persyaratan->entry_data == 1 && $item->persyaratan->upload_data == 1)
                            <div class="row">
                                    <label class="mt-2" for="">{{ $item->persyaratan->nama_persyaratan }}</label>
                                    <div class="col-6">
                                        <input type="text" name="entry_data{{ $cocote }}[]" class="form-control"/>
                                    </div>
                                    <div class="col-6">
                                        <input type="file" name="upload_data{{ $cocote }}[]" class="form-control"/>
                                    </div>
                                </div>
                            @elseif($item->persyaratan->upload_data == 1 && $item->persyaratan->entry_data == null)
                                <label class="mt-2" for="">{{ $item->persyaratan->nama_persyaratan }}</label>
                                <input type="file" name="upload_data{{ $cocote }}[]" class="form-control"/>
                            @elseif($item->persyaratan->upload_data == null && $item->persyaratan->entry_data == 1)
                                <div class="row">
                                    <div class="col-12">
                                        <label class="mt-2" for="">{{ $item->persyaratan->nama_persyaratan }}</label>
                                        <input type="text" name="entry_data{{ $cocote }}[]" class="form-control"/>
                                    </div>
                                </div>
                                @endif
                                @endforeach

                                <?php $cocote++; ?>
                            <button type="submit" id="layanan_button" class="btn btn-primary">Save</button>
                        </form>
                    </div>
                </div>
        </div>
    </div>
@endsection
