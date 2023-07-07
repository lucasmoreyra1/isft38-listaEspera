<!-- resources/views/cupos/create.blade.php -->
<h1>Crear Cupo</h1>

<form action="{{ route('cupos.store') }}" method="POST">
    @csrf
    <label for="carrera_id">Carrera:</label>
    <select name="carrera_id" id="carrera_id">
        @foreach ($carreras as $carrera)
        <option value="{{ $carrera->id }}">{{ $carrera->descripcion }}</option>
        @endforeach
    </select>

    <label for="cupos">Cupos:</label>
    <input type="number" name="cupos" id="cupos">

    <label for="reservados">Reservados:</label>
    <input type="number" name="reservados" id="reservados">

    <label for="inscriptos">Inscriptos:</label>
    <input type="number" name="inscriptos" id="inscriptos">

    <button type="submit">Guardar</button>
</form>
