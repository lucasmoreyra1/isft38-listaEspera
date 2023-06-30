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

<form action="{{ route('lista_espera.store') }}" method="POST">
    @csrf
    <div class="form-group">
        <label for="carrera_id">Carrera</label>
        <select name="carrera_id" id="carrera_id" class="form-control">
            @foreach($carreras as $carrera)
                <option value="{{ $carrera->id }}">{{ $carrera->descripcion }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group">
        <label for="nombre">Nombre</label>
        <input type="text" name="nombre" id="nombre" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="apellido">Apellido</label>
        <input type="text" name="apellido" id="apellido" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="dni">DNI</label>
        <input type="text" name="dni" id="dni" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="telefono">Teléfono</label>
        <input type="text" name="telefono" id="telefono" class="form-control" required>
    </div>
    <div class="form-group">
        <label for="tel_alternativo">Teléfono Alternativo</label>
        <input type="text" name="tel_alternativo" id="tel_alternativo" class="form-control">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" name="email" id="email" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Guardar</button>
</form>
