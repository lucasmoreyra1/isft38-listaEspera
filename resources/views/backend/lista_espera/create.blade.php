@extends('backend.layouts.listaEspera')
@section('title', 'lista espera inscripcion')
@section('content')  

<h1>Formulario para lista de espera</h1>

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (session('success'))
    <div class="alert alert-success">
        {{ session('success') }}
    </div>
@endif
<div class="container">
    <form action="{{ route('lista_espera.store') }}" method="POST">
        @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <label for="carrera_id">Carrera</label>
                    <select name="carrera_id" id="carrera_id" class="form-control">
                        @foreach($cupos as $carrera)
                            <option value="{{ $carrera->id }}">{{ $carrera->descripcion }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" id="nombre" class="form-control"  required maxlength="100"
                        value="{{ old('nombre') }}">
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido</label>
                    <input type="text" name="apellido" id="apellido" class="form-control" required maxlength="100"
                    value="{{ old('apellido') }}">
                </div>
                <div class="form-group">
                    <label for="dni">DNI</label>
                    <input type="number" name="dni" id="dni" class="form-control" required
                        value="{{old('dni')}}">
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <input type="number" name="telefono" id="telefono" class="form-control" required maxlength="15"
                           value="{{ old('telefono') }}">
                </div>
                <div class="form-group">
                    <label for="tel_alternativo">Teléfono Alternativo</label>
                    <input type="number" name="tel_alternativo" id="tel_alternativo" class="form-control" maxlength="15"
                           value="{{ old('tel_alternativo') }}">
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" class="form-control" required maxlength="255"
                           value="{{ old('email') }}">
                </div>
                <div class="form-group">
                    <label for="email_confirm">Confirmar email</label>
                    <input type="email" name="email_confirm" id="email_confirm" class="form-control" required
                           value="{{ old('email_confirm') }}">
            </div>
            <br>
        </div>
        <br>
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
