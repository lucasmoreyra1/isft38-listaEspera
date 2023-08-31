<!-- resources/views/cupos/create.blade.php -->

@extends('backend.layouts.listaEspera')
@section('title', 'crear cupo')
@section('content')

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
    <h1>Crear Cupo</h1>

    <form action="{{ route('cupos.store') }}" method="POST">
        @csrf
        <div class="form-group">
            <label for="carrera_id">Carrera:</label>
            <select class="form-control" name="carrera_id" id="carrera_id">
                @foreach ($carreras as $carrera)
                <option value="{{ $carrera->id }}">{{ $carrera->descripcion }}</option>
                @endforeach
            </select>
        </div>

        <div class="form-group">
            <label for="cupos">Cupos:</label>
            <input type="number" class="form-control" name="cupos" id="cupos">
        </div>

        <div class="form-group">
            <label for="reservados">Reservados:</label>
            <input type="number" class="form-control" name="reservados" id="reservados">
        </div>

        <div class="form-group">
            <label for="inscriptos">Inscriptos:</label>
            <input type="number" class="form-control" name="inscriptos" id="inscriptos">
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
