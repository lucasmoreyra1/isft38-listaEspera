<h1>Editar Registro</h1>

@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="{{ route('lista_espera.update', $listaEspera->id) }}" method="POST">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="carrera_id">Carrera</label>
        <select name="carrera_id" id="carrera_id" class="form-control">
            @foreach($carreras as $carrera)
                <option value="{{ $carrera->id }}" {{ $listaEspera->carrera_id == $carrera->id ? 'selected' : '' }}>
                    {{ $carrera->descripcion }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" class="form-control" value="{{ $listaEspera->nombre }}" required>
    </div>
    <div class="form-group">
        <label for="apellido">Apellido</label>
        <input type="text" name="apellido" id="apellido" class="form-control" value="{{ $listaEspera->apellido }}" required>
    </div>
    <div class="form-group">
        <label for="dni">DNI</label>
        <input type="text" name="dni" id="dni" class="form-control" value="{{ $listaEspera->dni }}" required>
    </div>
    <div class="form-group">
        <label for="telefono">Teléfono</label>
        <input type="text" name="telefono" id="telefono" class="form-control" value="{{ $listaEspera->telefono }}" required>
    </div>
    <div class="form-group">
        <label for="tel_alternativo">Teléfono Alternativo</label>
        <input type="text" name="tel_alternativo" id="tel_alternativo" class="form-control" value="{{ $listaEspera->tel_alternativo }}">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" name="email" id="email" class="form-control" value="{{ $listaEspera->email }}" required>
    </div>
    <button type="submit" class="btn btn-primary">Guardar Cambios</button>
</form>
