@extends('layouts.admin.template_admin')
@section('content')
    <div class="card">
        <div class="card-header text-center">
            Pilih Layanan
        </div>
        <div class="card-body text-center">
            <form action="/pemohon/get" method="get">
                @csrf
                <select class="form-control js-example-basic-multiple" name="id" id="id">
                    @foreach($layanan as $p)
                        <option value="{{ $p->id }}"> {{ $p->nama_layanan }} </option>
                    @endforeach
                </select>
                <input type="submit" value="pilih" class="btn btn-primary mt-2">
            </form>
        </div>
    </div>
@endsection

@section('js')
    <script>
        $(document).ready(function() {
            $('.js-example-basic-multiple').select2();
        });
    </script>
@endsection
