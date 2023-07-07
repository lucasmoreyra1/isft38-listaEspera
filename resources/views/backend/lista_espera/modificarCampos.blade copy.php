<!-- resources/views/cupos/edit.blade.php -->
<h1>Editar Cupo</h1>

<form action="{{ route('cupos.update', $cupo->id) }}" method="POST">
    @csrf
    @method('PUT')

    <label for="cupos">Cupos:</label>
    <input type="number" name="cupos" id="cupos" value="{{ $cupo->cupos }}">

    <label for="reservados">Reservados:</label>
    <input type="number" name="reservados" id="reservados" value="{{ $cupo->reservados }}">

    <label for="inscriptos">Inscriptos:</label>
    <input type="number" name="inscriptos" id="inscriptos" value="{{ $cupo->inscriptos }}">

    <button type="submit">Guardar</button>
</form>
