<!-- resources/views/cupos/edit.blade.php -->

@extends('backend.layouts.listaEspera')
@section('title', 'editar cupo')
@section('content')

<div class="container">
    <h1>Editar Cupo</h1>

    <form action="{{ route('cupos.update', $cupo->id) }}" method="POST">
        @csrf
        @method('PUT')

        <input type="hidden" name="carrera_id" value="{{ $cupo->carrera_id }}">

        <div class="form-group">
            <label for="cupos">Cupos:</label>
            <input type="number" class="form-control" name="cupos" id="cupos" value="{{ $cupo->cupos }}">
        </div>

        <div class="form-group">
            <label for="reservados">Reservados:</label>
            <input type="number" class="form-control" name="reservados" id="reservados" value="{{ $cupo->reservados }}">
        </div>

        <div class="form-group">
            <label for="inscriptos">Inscriptos:</label>
            <input type="number" class="form-control" name="inscriptos" id="inscriptos" value="{{ $cupo->inscriptos }}">
        </div>

        <button type="submit" class="btn btn-primary">Guardar</button>
    </form>
</div>
