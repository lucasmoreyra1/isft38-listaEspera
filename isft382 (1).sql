-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-08-2023 a las 23:59:36
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `isft382`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dni` int(11) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacionalidad` varchar(100) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `cuil` varchar(11) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `barrio` varchar(100) NOT NULL,
  `ciudad` varchar(100) NOT NULL,
  `provincia` varchar(100) NOT NULL,
  `cod_postal` int(11) NOT NULL,
  `fec_nac` date NOT NULL,
  `lug_nac` varchar(100) NOT NULL,
  `prov_nac` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `est_civil` varchar(50) NOT NULL,
  `hijos` tinyint(1) NOT NULL,
  `fam_a_cargo` tinyint(1) NOT NULL,
  `tel_fijo` varchar(15) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `tel_alternativo` varchar(15) NOT NULL,
  `tel_alt_pertenece` varchar(100) NOT NULL,
  `titulo_intermedio` varchar(100) NOT NULL,
  `anio_egreso` date NOT NULL,
  `escuela_egreso` varchar(100) NOT NULL,
  `distrito_egreso` varchar(100) NOT NULL,
  `otro_estudio` varchar(100) NOT NULL,
  `otro_estudio_inst` varchar(100) NOT NULL,
  `otro_estudio_egreso` date NOT NULL,
  `otro_estudio2` varchar(100) NOT NULL,
  `otro_estudio_inst2` varchar(100) NOT NULL,
  `otro_estudio_egreso2` date NOT NULL,
  `trabaja` tinyint(1) NOT NULL,
  `actividad_trabajo` varchar(100) NOT NULL,
  `horario_trabajo` varchar(100) NOT NULL,
  `obra_social` tinyint(1) NOT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `visado_por` varchar(100) NOT NULL,
  `fotoc_dni_ok` tinyint(1) NOT NULL,
  `fotoc_titulo_ok` tinyint(1) NOT NULL,
  `certificado_sec_ok` tinyint(1) NOT NULL,
  `foto_ok` tinyint(1) NOT NULL,
  `partida_nac_ok` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anios`
--

CREATE TABLE `anios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `anio` int(11) NOT NULL,
  `descripcion` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `anios` varchar(255) NOT NULL,
  `resolucion` varchar(50) NOT NULL,
  `texto` varchar(3000) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombre_carpeta` varchar(120) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `descripcion`, `anios`, `resolucion`, `texto`, `imagen`, `nombre_carpeta`, `created_at`, `updated_at`) VALUES
(1, 'Tecnicatura Superior en Logística', '3', '1557/08', 'Es el profesional capacitado para gestionar, diseñar, implementar, evaluar y optimizar los procesos que componen la administración del flujo de materiales y servicios desde el proveedor hasta el cliente. Tendrá la capacidad de implementar técnicas que faciliten la toma de decisiones y procedimientos para la gestión en el área, de acuerdo a los marcos conceptuales que sustentan los principios y normas pertinente al campo de la logística.', '', '', NULL, NULL),
(2, 'Tecnicatura Superior en Análisis de Sistemas', '3', '6790/19', 'Es el profesional capacitado para diagnosticar necesidades, diseñar, desarrollar, poner en servicio y mantener productos, servicios o soluciones informáticas acorde a los requerimientos de las organizaciones.\r\n\r\nTendrá la capacidad de diagnosticar el conflicto de una organización, podrá ordenar sus recursos y actividades, además diseñar y desarrollar sistemas informáticos.', '', '', NULL, NULL),
(3, 'Tecnicatura Superior en Administración Contable', '3', '273/03', 'El Técnico Superior en Administración Contable es un profesional que estará capacitado para desarrollar las competencias para: organizar, programar, ejecutar y controlar las operaciones comerciales, financieras y administrativas de la organización; elaborar, controlar y registrar el flujo de información; organizar y planificar los recursos referidos para desarrollar sus actividades interactuando con el entorno y participando en la toma de decisiones relacionadas con sus actividades. Coordinando equipos de trabajo relacionado con su especialidad. Estas competencias serán desarrolladas según las incumbencias y las normas técnicas y legales que rigen su campo profesional.', '', '', NULL, NULL),
(4, 'Tecnicatura Superior en Administración de Recursos Humanos\r\n', '3', '11/11', 'Es el profesional capacitado para organizar, programar, planificar y ejecutar diversas actividades del sector de Recursos Humanos de las organizaciones en las cuales se inserte. Tendrá la capacidad de organizar, programar, ejecutar y controlar en las áreas de desarrollo de dirección y planeamiento, producción, recursos humanos, financiamiento, contabilización, gestión integral dentro de los distintos tipos de organización.', '', '', NULL, NULL),
(5, 'Tecnicatura Superior en Gestión Ambiental y Salud', '3', '123/12', 'Es el profesional con formación científica, tecnológica y ética, competente para la intervención en los procesos técnicos y específicos del campo de la gestión ambiental. Diseñará y ejecutará planes y programas tendientes a la vigilancia ambiental y sanitaria, en ámbitos urbanos y rurales.\r\n\r\nTendrá la capacidad de coordinar actividades de protección y promoción de la salud ambiental e implementar estrategias de atención primaria.', '', '', NULL, NULL),
(6, 'Tecnicatura Superior en Higiene y Seguridad en el Trabajo', '3', '11/111', 'Es el profesional capacitado para el asesoramiento a reparticiones, empresas y asociaciones profesionales en todo lo concerniente a su actividad. Estará habilitado para controlar el cumplimiento de las normas de seguridad e higiene en el trabajo en el área de su competencia, adoptando las medidas preventivas de acuerdo a cada tipo de industria o actividad. Tendrá la capacidad de elaborar normas manuales de higiene y seguridad en el trabajo, además de realizar tareas de investigación y desarrollo para el mejor desenvolvimiento de su labor.', '', '', NULL, NULL),
(7, 'Tecnicatura Superior en Laboratorio de Análisis Clí­nicos', '3', '44/999', '\r\nEl Técnico Superior en Laboratorio de Análisis Clínicos es competente, de acuerdo a las actividades que se desarrollan, para:\r\n\r\n- Atender a la persona y obtener materiales biológicos para su análisis, aportando a la producción de información a través de la ejecución de procedimientos analíticos y la gestión del proceso de su trabajo.\r\n\r\n- Involucrarse en los procesos de mejora continua.\r\n\r\nTodo ello con la supervisión del/la Bioquímico/a o Profesional universitario a cargo del laboratorio habilitado.\r\n\r\nComo profesional de la salud, su práctica profesional está caracterizada por una actitud reflexiva, crítica, ética y humanística basada en una concepción integral del hombre propendiendo a mejorar la calidad de vida de la población.', '', '', NULL, NULL),
(8, 'Tecnicatura Superior en Mantenimiento Industrial', '3', '45/55', 'Es el profesional que tendrá como propósito identificar problemas, buscar alternativas y tomar decisiones ante la presencia de fallas. A su vez, estará habilitado para evaluar situaciones y diseñar propuestas de mejora en el mantenimiento. Tendrá la capacidad de la organización del trabajo propio y de los otros a su cargo. Podrá formular y ejecutar planes de mantenimiento preventivo y predictivo óptimos, en función de los mecanismos de deterioros detectados. Tendrá además la habilidad para inspeccionar e identificar el estado de deterioro de un equipo para lograr su restauración, mejorando la confiabilidad y mantenibilidad del mismo.', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrerasedes`
--

CREATE TABLE `carrerasedes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comisions`
--

CREATE TABLE `comisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupos`
--

CREATE TABLE `cupos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cupos` int(11) NOT NULL,
  `reservados` int(11) NOT NULL,
  `inscriptos` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cupos`
--

INSERT INTO `cupos` (`id`, `carrera_id`, `cupos`, `reservados`, `inscriptos`, `created_at`, `updated_at`) VALUES
(5, 4, 20, 20, 0, NULL, '2023-07-14 02:24:59'),
(6, 5, 20, 20, 0, NULL, '2023-08-18 02:28:21'),
(11, 1, 23, 2, 2, '2023-08-18 02:23:44', '2023-08-18 02:23:44'),
(12, 1, 23, 2, 2, '2023-08-18 02:24:26', '2023-08-18 02:24:26'),
(14, 8, 20, 20, 20, '2023-09-01 00:40:47', '2023-09-01 00:40:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE `etiquetas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(512) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE `fechas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia_hora` datetime NOT NULL,
  `dni` int(11) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historias`
--

CREATE TABLE `historias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `historia` varchar(5000) NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `materia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dia` bigint(20) UNSIGNED DEFAULT NULL,
  `modulohorario_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_espera`
--

CREATE TABLE `lista_espera` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `dni` int(11) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `tel_alternativo` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lista_espera`
--

INSERT INTO `lista_espera` (`id`, `carrera_id`, `nombre`, `apellido`, `dni`, `telefono`, `tel_alternativo`, `email`, `created_at`, `updated_at`) VALUES
(5, 2, 'Gise', 'Agusti', 23456677, '43453454', '2323423', 'g@g', '2023-08-18 02:29:51', '2023-08-18 02:33:07'),
(6, 4, 'Lucas', 'Moreyra', 44867659, '23232323', '23232322', 'lucasmoreyra1703@gmail.com', '2023-08-18 02:31:47', '2023-08-18 02:31:47'),
(7, 4, 'Lucas', 'Moreyra', 99508495, '32545345', '43534534', 'lucasmoreyra1703@gmail.com', '2023-09-01 00:41:46', '2023-09-01 00:41:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(38, '2014_10_12_000000_create_users_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2019_08_19_000000_create_failed_jobs_table', 1),
(41, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(42, '2022_08_18_220204_create_programas_table', 1),
(43, '2022_08_18_220257_create_carreras_table', 1),
(44, '2022_08_18_220330_create_objetivos_table', 1),
(45, '2022_08_18_220346_create_historias_table', 1),
(46, '2022_08_18_220402_create_anios_table', 1),
(47, '2022_08_18_220428_create_horarios_table', 1),
(48, '2022_08_18_220503_create_comisions_table', 1),
(49, '2022_08_18_220556_create_carrerasedes_table', 1),
(50, '2022_08_18_220658_create_modulos_table', 1),
(51, '2022_08_18_220712_create_materias_table', 1),
(52, '2022_08_18_221032_create_profesors_table', 1),
(53, '2022_08_18_221056_create_sedeemails_table', 1),
(54, '2022_08_18_221117_create_sedes_table', 1),
(55, '2022_08_18_221134_create_sedetelefonos_table', 1),
(56, '2022_08_18_235420_alter_programas_table', 1),
(57, '2022_08_18_235726_alter_historias_table', 1),
(58, '2022_08_18_235758_alter_carrerasedes_table', 1),
(59, '2022_08_18_235818_alter_horarios_table', 1),
(60, '2022_08_18_235831_alter_sedeemails_table', 1),
(61, '2022_08_18_235849_alter_materia_table', 1),
(62, '2022_08_18_235901_alter_sedetelefonos_table', 1),
(63, '2022_08_18_235924_alter_objetivos_table', 1),
(64, '2022_08_18_235938_alter_comision_table', 1),
(65, '2022_08_31_015137_create_noticias_table', 1),
(66, '2022_08_31_220114_create_notifications_table', 1),
(67, '2022_08_31_233600_create_etiquetas_table', 1),
(68, '2022_08_31_233933_create_noticias_files', 1),
(69, '2022_09_01_013436_delete_materia_comisions_table', 1),
(70, '2022_09_09_235818_alter_horarios_table_comentario', 1),
(71, '2023_06_12_224040_fechas', 1),
(72, '2023_06_12_224525_alumnos', 1),
(73, '2023_06_12_225506_cupos', 1),
(74, '2023_06_12_225839_lista_espera', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horainicio` time NOT NULL,
  `horafin` time NOT NULL,
  `duracion` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cuerpo` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED NOT NULL,
  `autor` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `archivo1` varchar(255) DEFAULT NULL,
  `archivo2` varchar(255) DEFAULT NULL,
  `archivo3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias_etiquetas`
--

CREATE TABLE `noticias_etiquetas` (
  `noticia_id` bigint(20) UNSIGNED NOT NULL,
  `etiqueta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivos`
--

CREATE TABLE `objetivos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `objetivo` varchar(5000) NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrera_id` bigint(20) UNSIGNED DEFAULT NULL,
  `anio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `materia_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comision_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profesor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `nombrearchivo` varchar(255) DEFAULT NULL,
  `ruta` varchar(255) DEFAULT NULL,
  `fechaentrega` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedeemails`
--

CREATE TABLE `sedeemails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `calle` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `sedeimagen` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedetelefonos`
--

CREATE TABLE `sedetelefonos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `caracteristica` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `sede_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Harmony Marquardt IV', 'jesus47@example.net', '2023-07-06 00:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'G1fBBKJWb9', '2023-07-06 00:34:08', '2023-07-06 00:34:08'),
(2, 'Prof. Joseph Leffler PhD', 'zboncak.tobin@example.com', '2023-07-06 00:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'f6n0j8YM4A', '2023-07-06 00:34:08', '2023-07-06 00:34:08'),
(3, 'Sienna Moore', 'clockman@example.com', '2023-07-06 00:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 't4YQuefOqV', '2023-07-06 00:34:08', '2023-07-06 00:34:08'),
(4, 'Danyka Gleichner', 'danika.wilkinson@example.org', '2023-07-06 00:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'ioYfTrpMWB', '2023-07-06 00:34:08', '2023-07-06 00:34:08'),
(5, 'Meaghan Conroy', 'zsteuber@example.org', '2023-07-06 00:34:08', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '0ZmTfYDldy', '2023-07-06 00:34:08', '2023-07-06 00:34:08'),
(6, 'Ms. Angie Prosacco IV', 'kenneth.pagac@example.net', '2023-07-06 00:34:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'LSQl47FvVK', '2023-07-06 00:34:33', '2023-07-06 00:34:33'),
(7, 'Mrs. Lilian Lang I', 'willy82@example.org', '2023-07-06 00:34:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'A0kW3qfEdw', '2023-07-06 00:34:33', '2023-07-06 00:34:33'),
(8, 'Mr. Vincenzo Botsford Sr.', 'marcia.gaylord@example.com', '2023-07-06 00:34:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'yQXNDxkxW4', '2023-07-06 00:34:33', '2023-07-06 00:34:33'),
(9, 'Jessy Murazik', 'etoy@example.org', '2023-07-06 00:34:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'VUA3Rzk4Zi', '2023-07-06 00:34:33', '2023-07-06 00:34:33'),
(10, 'Gregory Bruen', 'raynor.karen@example.net', '2023-07-06 00:34:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 'EFDJKoGoh9', '2023-07-06 00:34:33', '2023-07-06 00:34:33');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alumnos_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `anios`
--
ALTER TABLE `anios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carrerasedes`
--
ALTER TABLE `carrerasedes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carrerasedes_carrera_id_foreign` (`carrera_id`),
  ADD KEY `carrerasedes_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `comisions`
--
ALTER TABLE `comisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comisions_sede_id_foreign` (`sede_id`),
  ADD KEY `comisions_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `cupos`
--
ALTER TABLE `cupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cupos_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fechas_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `historias`
--
ALTER TABLE `historias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historias_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horarios_sede_id_foreign` (`sede_id`),
  ADD KEY `horarios_carrera_id_foreign` (`carrera_id`),
  ADD KEY `horarios_anio_id_foreign` (`anio_id`),
  ADD KEY `horarios_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materias_carrera_id_foreign` (`carrera_id`),
  ADD KEY `materias_anio_id_foreign` (`anio_id`),
  ADD KEY `materias_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noticias_titulo_unique` (`titulo`),
  ADD KEY `noticias_autor_foreign` (`autor`),
  ADD KEY `noticias_carrera_id_foreign` (`carrera_id`);

--
-- Indices de la tabla `noticias_etiquetas`
--
ALTER TABLE `noticias_etiquetas`
  ADD KEY `noticias_etiquetas_noticia_id_foreign` (`noticia_id`),
  ADD KEY `noticias_etiquetas_etiqueta_id_foreign` (`etiqueta_id`),
  ADD KEY `noticias_etiquetas_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objetivos_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `programas_sede_id_foreign` (`sede_id`),
  ADD KEY `programas_carrera_id_foreign` (`carrera_id`),
  ADD KEY `programas_anio_id_foreign` (`anio_id`),
  ADD KEY `programas_materia_id_foreign` (`materia_id`),
  ADD KEY `programas_comision_id_foreign` (`comision_id`),
  ADD KEY `programas_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `sedeemails`
--
ALTER TABLE `sedeemails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedeemails_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedetelefonos_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `anios`
--
ALTER TABLE `anios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `carrerasedes`
--
ALTER TABLE `carrerasedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comisions`
--
ALTER TABLE `comisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cupos`
--
ALTER TABLE `cupos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historias`
--
ALTER TABLE `historias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedeemails`
--
ALTER TABLE `sedeemails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `carrerasedes`
--
ALTER TABLE `carrerasedes`
  ADD CONSTRAINT `carrerasedes_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carrerasedes_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comisions`
--
ALTER TABLE `comisions`
  ADD CONSTRAINT `comisions_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comisions_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `cupos`
--
ALTER TABLE `cupos`
  ADD CONSTRAINT `cupos_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD CONSTRAINT `fechas_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `historias`
--
ALTER TABLE `historias`
  ADD CONSTRAINT `historias_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `horarios_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `materias_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD CONSTRAINT `noticias_autor_foreign` FOREIGN KEY (`autor`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `noticias_etiquetas`
--
ALTER TABLE `noticias_etiquetas`
  ADD CONSTRAINT `noticias_etiquetas_etiqueta_id_foreign` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_etiquetas_noticia_id_foreign` FOREIGN KEY (`noticia_id`) REFERENCES `noticias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticias_etiquetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `objetivos`
--
ALTER TABLE `objetivos`
  ADD CONSTRAINT `objetivos_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `programas`
--
ALTER TABLE `programas`
  ADD CONSTRAINT `programas_anio_id_foreign` FOREIGN KEY (`anio_id`) REFERENCES `anios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_comision_id_foreign` FOREIGN KEY (`comision_id`) REFERENCES `comisions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `programas_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sedeemails`
--
ALTER TABLE `sedeemails`
  ADD CONSTRAINT `sedeemails_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sedetelefonos`
--
ALTER TABLE `sedetelefonos`
  ADD CONSTRAINT `sedetelefonos_sede_id_foreign` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
