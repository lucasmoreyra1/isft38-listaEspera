<?php

namespace App\Http\Controllers;

use App\Models\ListaEspera;
use App\Models\Carrera;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ListaEsperaController extends Controller
{
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
        $carreras = Carrera::all();
        return view('backend.lista_espera.create', compact('carreras'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'carrera_id' => 'required',
            'nombre' => 'required',
            'apellido' => 'required',
            'dni' => 'required',
            'telefono' => 'required',
            'email' => 'required|email',
        ]);

        ListaEspera::create($request->all());

        return redirect()->route('lista_espera.index')->with('success', 'Registro creado exitosamente.');
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
