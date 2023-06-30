@extends('backend.layouts.main')
@section('title', 'Objetivo')
@section('content')
<div style="position:relative;text-align:center;margin:20px;">
        <div style="position:absolute;top:0;left:30px;cursor:pointer;">
            <a href="/objetivo">
                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="black" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
                    <path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
                </svg>
            </a>    
        </div>
        <h1>Objetivo</h1>
    </div>
  <div class="links">
   {{ Form::model($objetivo, [ 'method' => 'get' , 'route' => ['objetivo.show', $objetivo->id]]) }}
   <div class="form-group">
          {{ Form::label("objetivo", 'Objetivo', ['class' => 'control-label']) }}
          {{ Form::textarea("objetivo", old("objetivo"), ["class" => "form-control", "placeholder" => "Ingrese el Objetivo" , "readonly" ]) }}
          @error('objetivo')
              <div class="alert alert-danger">{{ $message }}</div>
          @enderror
    </div>

{!!Form::close()!!}
@endsection
