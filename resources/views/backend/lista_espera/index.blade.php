<h1>Lista de Espera</h1>

<div class="form-group">
    <label for="carrera">Selecciona una carrera:</label>
    <select id="carrera" class="form-control">
        <option value="">Todas las carreras</option>
        @foreach($carrerasEspera as $carrera)
            <option value="{{ $carrera->id }}">{{ $carrera->descripcion }}</option>
        @endforeach
    </select>
</div>

<table  class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>DNI</th>
            <th>Teléfono</th>
            <th>Teléfono Alternativo</th>
            <th>Email</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody id="tabla-registros">
        @foreach($listaEspera as $registro)
            <tr data-carrera="{{ $registro->carrera_id }}">
                <td>{{ $registro->id }}</td>
                <td>{{ $registro->nombre }}</td>
                <td>{{ $registro->apellido }}</td>
                <td>{{ $registro->dni }}</td>
                <td>{{ $registro->telefono }}</td>
                <td>{{ $registro->tel_alternativo }}</td>
                <td>{{ $registro->email }}</td>
                <td>
                    <a href="{{ route('lista_espera.edit', $registro->id) }}" class="btn btn-primary">Editar</a>
                    <form action="{{ route('lista_espera.destroy', $registro->id) }}" method="POST" class="d-inline">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var selectCarrera = document.getElementById('carrera');
        var tablaRegistros = document.getElementById('tabla-registros');

        selectCarrera.addEventListener('change', function() {
            var carreraId = selectCarrera.value;

            // Ocultar todas las filas de la tabla
            var filas = tablaRegistros.getElementsByTagName('tr');
            for (var i = 0; i < filas.length; i++) {
                filas[i].style.display = 'none';
            }

            // Mostrar las filas correspondientes a la carrera seleccionada
            if (carreraId === '') {
                // Mostrar todas las filas si se selecciona "Todas las carreras"
                for (var j = 0; j < filas.length; j++) {
                    filas[j].style.display = '';
                }
            } else {
                // Mostrar las filas que coinciden con la carrera seleccionada
                var filasCarrera = tablaRegistros.querySelectorAll('[data-carrera="' + carreraId + '"]');
                for (var k = 0; k < filasCarrera.length; k++) {
                    filasCarrera[k].style.display = '';
                }
            }
        });
    });
</script>
