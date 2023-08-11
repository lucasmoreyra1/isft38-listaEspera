<?php

namespace App\Http\Controllers;

use App\Models\ListaEspera;
use App\Models\Carrera;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\cupos;
use Illuminate\Support\Facades\Validator;

class ListaEsperaController extends Controller
{

    private function carrerasParaListaEspera(){
        $carreras = Carrera::pluck('descripcion', 'id');
        $cupos = Cupos::with('carrera')->whereColumn('reservados', '>', 'cupos')->get();
    }


    public function index()
    {
        $listaEspera = ListaEspera::with('carrera')->get();
        $carreras = Carrera::all();
        $carrerasEspera = DB::table('carreras')
            ->join('lista_espera', 'carreras.id', '=', 'lista_espera.carrera_id')
            ->select('carreras.*')
            ->distinct()
            ->get();
        return view('backend.lista_espera.index', compact('listaEspera', 'carreras', 'carrerasEspera'));
    }

    

    public function create()
    {   
        $reservados = DB::table('cupos')
            ->whereColumn('reservados', '>=', 'cupos')
            ->pluck('carrera_id')
            ->toArray();

        $cupos = DB::table('carreras')
            ->select('id', 'descripcion')
            ->whereIn('id', $reservados)
            ->get();

        return view('backend.lista_espera.create', compact('cupos'));
    }

    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'carrera_id' => 'required',
            'nombre' => 'required|string|between:3,99',
            'apellido' => 'required|string|between:3,99',
            'dni' => 'required|digits:8|unique:lista_espera,dni' ,
            'telefono' => 'required|digits_between:6,15',
            'tel_alternativo' => 'digits_between:6,15',
            'email' => 'required|email|between:2,255',
            'email_confirm' => 'required|email|same:email|between:2,255'
        ]);


        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $dni = ListaEspera::with('carrera')->get();

        ListaEspera::create($request->all());

        return redirect()->route('lista_espera.create')->with('success', 'Datos enviados exitosamente, nos comunicaremos cuando haya cupos disponibles');
    }

    public function edit(ListaEspera $listaEspera)
    {
        $carreras = Carrera::all();
        return view('backend.lista_espera.edit', compact('listaEspera', 'carreras'));
    }

    public function update(Request $request, ListaEspera $listaEspera)
    {
        $request->validate([
            'carrera_id' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'dni' => 'required',
            'telefono' => 'required',
            'email' => 'required|email',
        ]);

        $listaEspera->update($request->all());

        return redirect()->route('lista_espera.index')->with('success', 'Registro actualizado exitosamente.');
    }

    public function destroy(ListaEspera $listaEspera)
    {
        $listaEspera->delete();

        return redirect()->route('lista_espera.index')->with('success', 'Registro eliminado exitosamente.');
    }
}
