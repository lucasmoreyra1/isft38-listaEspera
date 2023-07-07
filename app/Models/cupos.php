<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class cupos extends Model
{
    protected $fillable = ['carrera_id', 'cupos', 'reservados', 'inscriptos'];

    public function carrera()
    {
        return $this->belongsTo(Carrera::class);
    }
      
}
