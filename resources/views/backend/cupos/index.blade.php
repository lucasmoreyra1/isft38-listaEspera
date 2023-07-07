<!-- resources/views/cupos/index.blade.php -->
<h1>Listado de Cupos</h1>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Carrera</th>
            <th>Cupos</th>
            <th>Reservados</th>
            <th>Inscriptos</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($cupos as $cupo)
        <tr>
            <td>{{ $cupo->id }}</td>
            <td>{{ $cupo->carrera->descripcion }}</td>
            <td>{{ $cupo->cupos }}</td>
            <td>{{ $cupo->reservados }}</td>
            <td>{{ $cupo->inscriptos }}</td>
            <td>
                <a href="{{ route('cupos.edit', $cupo->id) }}">Editar</a>
                <form action="{{ route('cupos.destroy', $cupo->id) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit">Eliminar</button>
                </form>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>
