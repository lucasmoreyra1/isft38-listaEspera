<?php

namespace App\Http\Controllers;

use App\Models\cupos;
use App\Models\Carrera;
use Illuminate\Http\Request;

class CupoController extends Controller
{
    public function index()
    {
        $cupos = cupos::with('carrera')->get();
        return view('backend.cupos.index', compact('cupos'));
    }

    public function create()
    {
        $carreras = Carrera::all();
        return view('backend.cupos.create', compact('carreras'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'carrera_id' => 'required|exists:carreras,id',
            'cupos' => 'required|integer',
            'reservados' => 'required|integer',
            'inscriptos' => 'required|integer',
        ]);

        cupos::create($data);

        return redirect()->route('cupos.index')
            ->with('success', 'Cupo creado correctamente.');
    }

    public function edit(cupos $cupo)
    {
        $carreras = Carrera::all();
        return view('backend.cupos.edit', compact('cupo', 'carreras'));
    }

    public function update(Request $request, cupos $cupo)
    {
        $data = $request->validate([
            'carrera_id' => 'required|exists:carreras,id',
            'cupos' => 'required|integer',
            'reservados' => 'required|integer',
            'inscriptos' => 'required|integer',
        ]);

        $cupo->update($data);

        return redirect()->route('cupos.index')
            ->with('success', 'Cupo actualizado correctamente.');
    }

    public function destroy(cupos $cupo)
    {
        $cupo->delete();

        return redirect()->route('cupos.index')
            ->with('success', 'Cupo eliminado correctamente.');
    }
}
