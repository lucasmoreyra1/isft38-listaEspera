@extends('frontend.layout.main')
@section('content')
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<style>
    .form-control,
    .form-select {
        border: none;
        border-bottom: 1px solid black;
        border-radius: 0px;
        padding-top: 10px;
    }

    .form-control::placeholder,
    .form-select::placeholder {
        color: grey;
    }

    form label {
        font-weight: bold;
    }

    .boton {
        text-align: center;
    }

    .boton button {
        background-color: black;
        color: white;
        text-transform: uppercase;
    }

    .form-control:hover {
        background: transparent;
    }

    .form-control:focus,
    .form-select:focus {
        border-color: transparent;
        border-bottom: 1px solid black;
        box-shadow: none;
        outline: 0 none;
    }

    /*  */

    .container-padre {
        display: flex;
        width: 100%;
    }

    .container-padre .container-hijo {
        width: 100%;
        padding: 0 10px;
    }

    .container-map_icons {
        display: flex;
        justify-content: space-evenly;
        align-items: center;
    }

    iframe {
        border: 1px solid grey;
        border-radius: 10px;
        width: 400px;
        height: 300px;
    }

    .container-3img {
        display: flex;
        border: 1px solid gray;
        border-radius: 10px;
        padding: 20px;
        flex-direction: column;
        align-items: center;
        text-align: center;
        gap: 1em;
        margin: 50px 0;
    }

    .icon-text {
        width: 200px;
        text-align: left;
        margin-left: 10px;
    }

    @media screen and (max-width:1100px) {
        .container-padre {
            flex-direction: column;
        }

        .container-padre form {
            width: 100%;
        }

        .container-map_icons {
            width: 100%;
            flex-direction: column;
            justify-content: space-around;
        }
    }

    @media screen and (max-width:768px) {
        iframe {
            width: 300px;
        }
    }
</style>

<div>
    <div class="alert alert-primary alert-dismissible fade show" style="text-align:center;" role="alert">
        <i>Atención de secretaría: Lunes a Viernes, de 17:45 a 22:00hs</i>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
</div>

<div style="background:white;">
    <div class="container-padre">
        <div class="container-hijo">

            @if(Session::has('status'))
            <div style="text-align:center;" class="alert alert-success">{{ Session('status')}}</div>
            @endif

            <div class="container" style="margin-top:10px;">
                {{ Form::open(['route' => 'contacto.store', 'files' => true])}}
                @csrf
                <div class="card">
                    <h5 class="card-header" style=" background-color: #181818; color: white;font-weight:bold;">Contacto</h5>
                    <div class="card-body" style="border:none;border:1px solid grey;">
                        <div class=" mb-3">
                            <!-- {{ Form::label("nombre", 'Nombre', ['class' => 'control-label']) }} -->
                            {{Form::text("nombre", old("nombre"), ["class" => "form-control", "placeholder" => "Nombre y Apellido", ])}}
                            @error('nombre') <div class="alert alert-danger">{{ $message }}</div>@enderror
                        </div>

                        <div class="mb-3">
                            <!-- {{ Form::label("email", 'Email', ['class' => 'control-label']) }} -->
                            {{Form::email("email", old("email"), ["class" => "form-control", "placeholder" => "Email", ])}}
                            @error('email') <div class="alert alert-danger">{{ $message }}</div>@enderror
                        </div>

                        <div class="mb-3">
                            <!-- <label for="telefono" class="form-label">Teléfono</label> -->
                            <input type="number" name="telefono" class="form-control" id="telefono" placeholder="Teléfono" aria-describedby="emailHelp">
                        </div>

                        <div class="mb-3">
                            <!-- <label for="sede" class="form-label">Sede <i style="font-weight:normal;"></i></label> -->
                            <select name="sede" style="cursor:pointer;" class="form-select" name="sede" id="sede" placeholder="Sede">
                                @foreach($sedes as $sede)
                                @foreach($sede->emails as $email)
                                <option value="{{$email->email}}">{{$sede->descripcion}} - {{$email->email}}</option>
                                @endforeach
                                @endforeach
                            </select>
                        </div>

                        <div class="mb-3">
                            <!-- <label for="message" class="form-label">Mensaje</label> -->
                            <div class="form-group">
                                <textarea class="form-control" name="mensaje" id="summernote"></textarea>
                            </div>
                        </div>

                        <div class="boton"><button type="submit" class="btn">Enviar</button></div>

                    </div>
                </div>
                {!!Form::close()!!}
            </div>

            <div class="my-4 container-map_icons ">
                <iframe style="" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13326.864819671318!2d-60.1787278!3d-33.3784744!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x832238dce218af32!2sInstituto%20Superior%20de%20Formaci%C3%B3n%20T%C3%A9cnica%20N%C2%B038!5e0!3m2!1ses!2sar!4v1661981270143!5m2!1ses!2sar" width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                <div class="container-3img">

                    @foreach($sedes as $sede)
                    <div style="display:flex;align-items:center;">
                        <div style="border:1px solid black;border-radius:50px;padding:20px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                            </svg>
                        </div>
                        <!-- <p class="pt-3 icon-text" style="font-weight:bold;">San Nicolás de los Arroyos</p> -->
                        <p class="pt-3 icon-text" style="font-weight:bold;">{{$sede->ciudad}}</p>
                    </div>


                    <div style="display:flex;align-items:center;">
                        <div style="border:1px solid black;border-radius:50px;padding:20px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z" />
                            </svg>
                        </div>

                        <div style="flex-direction:column;">
                            @foreach($sede->emails as $email)
                            @if($loop->first)
                            <p class="icon-text" style="font-weight:bold;">{{$email->email}}</p>
                            @else
                            <p class="icon-text" style="font-weight:bold;">{{$email->email}}</p>
                            @endif
                            @endforeach
                        </div>
                    </div>

                    <div style="display:flex;align-items:center;">
                        <div style="border:1px solid black;border-radius:50px;padding:20px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                            </svg>
                        </div>
                        <div style="flex-direction:column;">
                            @foreach($sede->telefonos as $telef)
                            @if($loop->first)
                            <p class="icon-text" style="font-weight:bold;">{{$telef->caracteristica}} - {{$telef->numero}} </p>
                            @else
                            <p class="icon-text" style="font-weight:bold;">{{$telef->caracteristica}} - {{$telef->numero}}</p>
                            @endif
                            @endforeach
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>

        <!-- <hr style="margin:50px"> -->

        <div class="bgImg" style="
            width:60%;
            background-image:url(contacto.jpeg);
            background-size:cover;">
        </div>
    </div>



    <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <img src="..." class="rounded me-2" alt="...">
            <strong class="me-auto">Bootstrap</strong>
            <small>11 mins ago</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            Hello, world! This is a toast message.
        </div>
    </div>
</div>
<!-- include libraries(jQuery, bootstrap) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script type="text/javascript">
    $('#summernote').summernote({
        height: 100,
        placeholder: 'Escriba su consulta...',
        tabsize: 2,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
        ]
    });
</script>
@endsection