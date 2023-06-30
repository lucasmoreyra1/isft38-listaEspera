<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ListaEsperaController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

//-----   IMPORTANTE!!  -----   IMPORTANTE!!  -----   IMPORTANTE!!   -----//
//  NO modificar web.php, hacer los cambios en los archivos de cada equipo
//  que están en la carpeta routes.
//  Cada archivo tiene el nombre de los responsables.
//                       Gracias! 
//                                              Gisela
//------------------------------------------------------------------------//

//Noticias-> Gisela
Route::group([], __DIR__ . '/blog.php');

//Inicio-> Iván, Martín
Route::group([], __DIR__ . '/inicio.php');

//Carrera-> Iván, Martín
Route::group([], __DIR__ . '/carrera.php');

//Materia-> Iván, Martín
Route::group([], __DIR__ . '/materia.php');

//Programa-> Alejandro, Brian
Route::group([], __DIR__ . '/programa.php');

//Horario y Módulo horario-> Aylén, Sofía, Ulises
Route::group([], __DIR__ . '/horario.php');

//Comision y Año-> Aylén, Sofía, Ulises
Route::group([], __DIR__ . '/comision.php');

//Profesor-> Aylén, Sofía, Ulises
Route::group([], __DIR__ . '/profesor.php');

//Historia y Objetivo-> Alejo, Esteban
Route::group([], __DIR__ . '/historia.php');

//Contacto y Sede-> Alejo, Esteban








Route::resource('lista_espera', ListaEsperaController::class);

