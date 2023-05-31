-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2023 a las 07:01:53
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dashboardcarreras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carrera`
--

CREATE TABLE `tbl_carrera` (
  `carreraId` int(11) NOT NULL,
  `departamentoId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_carrera`
--

INSERT INTO `tbl_carrera` (`carreraId`, `departamentoId`, `nombre`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 1, 'Ingeniería en Gestión Empresarial', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Administración', 1, NULL, NULL, NULL, NULL),
(3, 2, 'Ingeniería Química', 1, NULL, NULL, NULL, NULL),
(4, 2, 'Ingeniería Bioquímica', 1, NULL, NULL, NULL, NULL),
(5, 3, 'Ingeniería Mecanica', 1, NULL, NULL, NULL, NULL),
(6, 3, 'Ingeniería Mecatronica', 1, NULL, NULL, NULL, NULL),
(7, 4, 'Ingeniería Industrial', 1, NULL, NULL, NULL, NULL),
(8, 5, 'Ingeniería en Energías Renovables', 1, NULL, NULL, NULL, NULL),
(9, 5, 'Ingeniería Electrica', 1, NULL, NULL, NULL, NULL),
(10, 5, 'Ingeniería Electronica', 1, NULL, NULL, NULL, NULL),
(11, 6, 'Ingeniería en Sistemas Computacionales', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comunidad`
--

CREATE TABLE `tbl_comunidad` (
  `comunidadId` int(11) NOT NULL,
  `carreraId` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `quienesSomos` text NOT NULL,
  `queHacemos` text NOT NULL,
  `fotosComunidad` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_departamento`
--

CREATE TABLE `tbl_departamento` (
  `departamentoId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_departamento`
--

INSERT INTO `tbl_departamento` (`departamentoId`, `nombre`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 'Departamento de Ciencias Económico Administrativas', 1, NULL, NULL, NULL, NULL),
(2, 'Departamento de Ingeniería Química-Bioquímica', 1, NULL, NULL, NULL, NULL),
(3, 'Departamento de Ingeniería Metal-Mécanica', 1, NULL, NULL, NULL, NULL),
(4, 'Departamento Industrial', 1, NULL, NULL, NULL, NULL),
(5, 'Departamento de Ingeniería Electrica-Electrónica', 1, NULL, NULL, NULL, NULL),
(6, 'Departamento de Sistemas y Computación', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_docente`
--

CREATE TABLE `tbl_docente` (
  `docenteId` int(11) NOT NULL,
  `carreraId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `informacionAcademica` text NOT NULL,
  `materias` text NOT NULL,
  `contacto` text NOT NULL,
  `urlImagen` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_docente`
--

INSERT INTO `tbl_docente` (`docenteId`, `carreraId`, `nombre`, `descripcion`, `informacionAcademica`, `materias`, `contacto`, `urlImagen`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 11, 'Abelardo Rodríguez León', 'Desde que fui estudiante (allá por finales de los 90) me gusto impulsar la investigación entre los jóvenes compañeros de ISC. Hoy ya más de 30 años después y con un cúmulo de experiencia aplicada en el desarrollo de proyectos y haber tenido la formación adecuada (maestría y doctorado) me sigue motivando el hecho de enseñarles a creer a los estudiantes del ITV en sus propias capacidades para crear cosas útiles y sorprendentes. Porque de eso se trata todo, no de ser el más popular o el que más sabe, sino de creer que podemos solucionar problemas que ayuden a otros a mejorar su paso por este mundo.', 'Culminé la ISC en 1989, la maestría en Ciencias de la Computación en 1996 y el Doctorado en Ciencias de la Computación en 2007. Desde 1999 he presentado y desarrollado proyectos de investigación financiados por diferentes entidades federales acompañado por otros compañeros profesores y con la participación de alumnos. En 2018 logre mi caro anhelo de ser parte del SNI, logro que ha ayudado a participar también en otras áreas como en la Maestría en Eficiencia Energética y Energías Renovables.', '<ul>\n<li>Programación Orientada a Objetos</li>\n<li>Graficación</li>\n<li>Tópicos Avanzados de Programación</li>\n<li>Seminario 1-2</li>\n<li>Taller de Sistemas de Altas Prestaciones</li>\n<li>Computación Concurrente</li>\n<li>Programación Concurrente</li>\n<li>Concurrencia con videojuegos y GPUs</li>\n</ul>', '<ul> <li>abelardo.rl@veracruz.tecnm.mx</li> <li>2291720662</li> </ul>', 'abelardoRodriguezLeon.webp', 1, NULL, NULL, NULL, NULL),
(2, 11, 'Ana Maria Meléndez López', 'NO PERMITAS QUE TU EXITO SEA OBSTACULIZADO, SE MáS FUERTE QUE CUALQUIER EVENTUALIDAD', 'COORDINADOR DE LA CARRERA DE SISTEMAS\r\nDIPLOMADOS:\r\n* FORMACIÓN DE TUTORES\r\n*COMPETENCIAS DOCENTES\r\n*EN OFIMÁTICA AVANZADA\r\n\r\nACTUALMENTE FORMO PARTE DE LA COMISIÓN DICTAMINADORA DOCENTE', '<ul>\r\n<li>ALGORITMOS Y LENGUAJES DE PROGRAMACIÓN</li>\r\n<li>ALGORITMOS Y PROGRAMACIÓN</li>\r\n<li> PROGRAMACIÓN</li>\r\n<li>ESTRUCTURA DE DATOS</li>\r\n<li>FUNDAMENTOS DE PROGRAMACIÓN</li>\r\n<li>PROGRAMACIÓN ORIENTADA A OBJETOS</li>\r\n<li>TALLER DE INVESTIGACIÓN</li>\r\n</ul>', 'melendez_ana68@hotmail.com', 'user.webp', 1, NULL, NULL, NULL, NULL),
(3, 11, 'Alberto Méndez Torreblanca', 'Profesor de tiempo completo, adscrito al departamento de Sistemas y Computación del TecNM - Instituto Tecnológico de Veracruz. Apasionado de la programación, sus áreas de interés son la tecnología móvil y ciencia de datos.', 'Obtuvo el grado de Doctor en Ciencias en Ciencias Computacionales, en el Instituto Nacional de Astrofísica, Óptica y Electrónica y cuenta con el reconocimiento de perfil deseable por parte de PRODEP. Amplia colaboración con  estudiantes en el desarrollo de aplicaciones móviles, participación como entrenador en los concursos de programación a nivel nacional (Coding Cup y ICPC Gran Premio). Responsable del programa de asesorías de lógica y programación (PALPROG). Co-autor del libro Python desde-1. Un lenguaje fácil, básico y funcional.', '<ul><li>Fundamentos de Programación</li><li>Programación Orientada a Objetos</li></ul>', 'alberto.mt@veracruz.tecnm.mx', 'albertoMendezTorreblanca.webp', 1, NULL, NULL, NULL, NULL),
(4, 11, 'Armando Bravo Bautista', 'Que sigan preparándose para ser mejor profesionistas en las nuevas tecnologías ', 'Maestría en Sistemas \r\n', '<ul>\r\n<li>Simulación</li>\r\n<li>investigación de operaciones</li>\r\n<li>Matemáticas</li>\r\n</ul>\r\n', 'armandobravob1@gmail.com', 'armandoBravoBautista.webp', 1, NULL, NULL, NULL, NULL),
(5, 11, 'Carlos Julián Genis Triana', '', 'Maestría en Ciencias de la Computación cuyo trabajo de tesis permitió hacer la publicación de diversos artículos en relación a algoritmos paralelos para la compresión de vídeo.', '<ul>\r\n<li>Fundamentos de Programación</li>\r\n<li>Matemáticas Discretas</li>\r\n<li>Cómputo Distribuido</li>\r\n<li>Graficación</li>\r\n<li>Entre otras</li>\r\n</ul>', 'carlos gt@verscruz.tecnm.mx', 'carlosJulianGenisTriana.webp', 1, NULL, NULL, NULL, NULL),
(6, 11, 'Carlos Ley Borraz', 'A mis estudiantes y a la comunidad estudiantil en general del Tecnológico Nacional de México (TECNM), me permito ratificar mi compromiso que como docente adquirimos al tener la oportunidad de ser parte del proyecto educativo a nivel nacional, contribuir directamente en los programas educativos institucionales y coadyuvar a logro de sus metas personales y profesionales.<br>\r\nAgradezco infinitamente la confianza y la oportunidad de servir en esta noble actividad mediante la convivencia y dinámicas educativas que actualmente exigen los retos de nuestro país.<br>\r\n<br>\r\nGracias.', ' <ul><li>Diplomado en formación Docente (ITESM)</li>\n      <li>Especialidad en Informática para la administración gerencial (SALLE)</li>\n      <li>Maestría en Ingeniería de Sistemas (ITESM)</li>\n      <li>Maestría en Ciencias Computacionales (Instituto de Ingeniería U.V.)</li></ul>', '<ul>\n<li>Informática</li>\n<li>Gestión de Proyectos</li>\n<li>Cultura Empresarial</li>\n<li>Taller de Investigación</li>\n</ul>', 'carlos.lb@veracruz.tecnm.mx', 'carlosLeyBorraz.webp', 1, NULL, NULL, NULL, NULL),
(7, 11, 'Daniela Hernández Barrios', '“La inteligencia consiste no solo en el conocimiento, sino también en la destreza de aplicarlos en la práctica”. Aristóteles.', '<ul><li>Instructora de cursos de capacitación para el H. Ayuntamiento de Boca del Río en el programa HABITAT (2011)</li>\n<li>Participación como jurado calificador en el concurso Estatal de Prototipos (2016)</li>\n<li>Coordinador de la Segunda Semana Académica de ISC en el ITVer(2013)</li>\n<li>Coordinadora de Tutorías de Sistemas (2014)</li>\n<li>Participación en el comité de acreditación por CACEI (2014)</li>\n<li>Jefa del Laboratorio de Cómputo del ITVer (2013)</li>\n<li>Coordinadora del 8vo. encuentro Regional de Tutorías (2017)</li>\n<li>Coautor del artículo \"El uso de la plataforma MOODLE para la administración de tutorías\"(2017)</li>\n<li>Impartición de la conferencia \"Educación, Cultura y Sociedad\" (2018)</li>\n<li>Presidente de Academia (2021)</li>\n<li>Participación en el comité de acreditación por CIEES (2022)</li>\n<li>Participación en el comité organizador del primer encuentro de Egresadas de ISC</li></ul>', '<ul>\n<li>Fundamentos de Programación</li>\n<li>Sistemas Operativos</li>\n<li>Estructura de Datos</li>\n</ul>', 'daniela.hb@veracruz.tecnm.mx', 'danielaHernandezBarrios.webp', 1, NULL, NULL, NULL, NULL),
(8, 11, 'Delio Coss Camilo', 'La buena administración y gestión siempre te llevará a la excelencia.', 'Impacto de las redes sociales en el rendimiento académico (Articulo Journal).', '<ul>\n<li>Fundamentos de programación</li>\n<li>Programación orientada a objetos</li>\n<li>Fundamentos de base de datos</li>\n<li>Taller de base de datos</li>\n<li>Administración de base de datos</li>\n<li>Programación web, gestores de contenido</li>\n<li>Programación móvil</li>\n<li>Sistemas operativos</li>\n<li>Base de datos distribuidas</li>\n<li>Programación</li>\n<li>Fundamentos de investigación</li>\n</ul>', 'delio.cc@veracruz.tecnm.mx', 'delioCossCamilo.webp', 1, NULL, NULL, NULL, NULL),
(9, 11, 'Efrén Mendoza Chaparro', '\"Quien se atreve enseñar, nunca puede dejar de aprender\", \r\n10 años de experiencia laboral en maquiladora.', 'ING. EN ELECTRÓNICA (ITV), MAESTRÍA EN ADMINISTRACIÓN DE EMPRESAS (UANL) Manejo de Plataformas Educativas. <br>\n<a \nhref=\"https://youtube.com/user/efrenmen\" target=\"_blank\">Canal de YouTube - Efren Mendoza</a>\n', '<ul>\n<li>Fundamentos de Programación</li>\n<li>Programación Básica</li>\n<li>Programación Avanzada</li>\n<li>Programación Lógica y Funcional</li>\n</ul>', 'efren.mc@veracruz.tecnm.mx', 'efrenMendozaChaparro.webp', 1, NULL, NULL, NULL, NULL),
(10, 11, 'Enrique Soto Andrade', '', 'Egresado del Instituto Tecnológico de Veracruz, con el título de Ingeniero en Sistemas Computacionales y con más de 20 años de experiencia en el ámbito de tecnologías de la información.<br>\r\n<br>\r\nLas empresas en las que participe en la implementación de sistemas de información ERP incluyen a CFE, TAMSA y Grupo Contino con los sistemas SAP y Oracle E-Business Suite en los cuales obtuve gran experiencia de la implementación y configuración de la infraestructura de TI.<br>\r\n<br>\r\nEn mi experiencia en la implementación y administración de infraestructura tecnológica colaboré en la empresa Grupo Contino como administrador del centro de datos (Servidores, Almacenamiento, Respaldo y Red)  y encargado del área de soporte técnico implementando mejores prácticas en los procesos internos.<br>\r\n<br>\r\nMe desempeñe como líder del área de Tecnologías de Información a nivel corporativo tanto en la división de infraestructura como en el análisis, diseño, desarrollo e implementación de software para soluciones empresariales de diferentes giros de negocios.', '<ul>\r\n<li>Taller de Base de Datos</li>\r\n<li>Fundamentos de Base de Datos</li>\r\n<li>Lenguajes y Autómatas II</li>\r\n<li>Programación Web</li>\r\n<li>Fundamentos de Telecomunicaciones</li>\r\n<li>Algoritmo y Programación</li>\r\n</ul>', 'enrique.sa@veracruz.tecnm.mx', 'enriqueSotoAndrade.webp', 1, NULL, NULL, NULL, NULL),
(11, 11, 'Esteban Jesús Mendoza y López', 'La educación es el proceso de facilitar el aprendizaje o la adquisición de conocimientos, habilidades, competencias, valores y hábitos que un grupo de personas transfieren a otras personas a través de la enseñanza, la discusión, el ejemplo, la formación y la investigación. ', 'Licenciatura Ingeniería en Sistemas Computacionales.', '<ul>\r\n<li>Fundamentos de Programación</li>\r\n<li>Sistemas Operativos</li>\r\n<li>Informática para la Administración</li>\r\n<li>Programación</li>\r\n</ul>', '<ul><li>esteban.my@veracruz.tecnm.mx</li> <li>ejmelo@yahoo.com</li> </ul>', 'estebanJesusMendozayLopez.webp', 1, NULL, NULL, NULL, NULL),
(12, 11, 'Ezequiel Piña Ortiz', '\"Creo firmemente que todo es cuestión de actitud... no se trata de lo que ocurre, sino como lo afrontas\"', 'Egresado del Tecnológico de Veracruz, Realice dos maestrías, una en Ciencias de la Computación y otra en Admón., Diplomado en Sistemas y Arquitecturas Avanzada en Informática (LANIA), Colaborador en el proyecto Moodle. Evaluador por 3 años de CACEI. Participación en Congresos con ponencias como: Seguimiento de egresados del ITV para la mejora continua, Aplicación efectiva del paradigma de POO usando componentes de programación. Fuentes confiables de información para proyectos de investigación. Certificado por Microsoft como Database Administration Fundamentals y Professional. Trabajado en empresas como BANCOMER, TAMSA, RR & Asociados SC., SIGSA, CENESCO, UV, Administración, Contabilidad y Computación SA de CV y varias más. Impartido y recibido una gran variedad de cursos en temas relacionados con las TICs y Docencia.', '<ul>\r\n<li>Diseño estructurado de algoritmos</li>\r\n<li>Diseño de BD</li>\r\n<li>Taller de BD</li>\r\n<li>Sistemas Operativos</li>\r\n<li>Programación</li>\r\n<li>Análisis y diseño de Sistemas de Información</li>\r\n<li>Informática I y II</li>\r\n<li>Habilidades del Pensamiento</li>\r\n<li>Matemáticas Discretas</li>\r\n<li>Probabilidad y Estadística</li>\r\n<li>Métodos Numéricos</li>\r\n<li>etc.</li>\r\n</ul>', '<ul>\r\n<li>ezequiel.po@veracruz.tecnm.mx</li>\r\n<li>pina.ezequiel@gmail.com</li>\r\n</ul>', 'ezequielPinaOrtiz.webp', 1, NULL, NULL, NULL, NULL),
(13, 11, 'Gabriel Antonio Sánchez Ortiz', 'No sé qué le pasa a la gente: no aprenden comprendiendo; aprenden de alguna otra forma, por la rutina, o de algún otro modo. ¡Que frágil es su conocimiento! R.F.', 'Licenciatura en Ingeniería en Sistemas Computacionales.', '<ul>\r\n<li>Conmutación y Enrutamiento en Redes de Datos</li>\r\n<li>Sistemas Operativos de Red</li>\r\n<li>Algorítmica</li>\r\n<li>Administración de Bases de Datos</li>\r\n<li>Análisis de Algoritmos</li>\r\n<li>Fundamentos de Telecomunicaciones</li>\r\n<li>Fundamentos de Programación</li>\r\n<li>Redes de Computadoras</li>\r\n</ul>', 'gabriel.so@veracruz.tecnm.mx', 'gabrielAntonioSanchezOrtiz.webp', 1, NULL, NULL, NULL, NULL),
(14, 11, 'Genaro Méndez López', 'Egresado de la carrera en Sistemas Computacionales del\r\nInstituto Tecnológico de Veracruz, cuenta con Maestría en Sistemas de la Información\r\npor parte el Instituto Tecnológico Rosenblueth y recientemente con el diploma en \"Blockchain Course\" por el Berkeley Fintech Institute de la Universidad de Berkeley California. <br>\r\n<br>\r\nSe ha desempeñado como catedrático en los últimos 25 años; impartiendo distintas\r\nponencias y asignaturas enfocadas a los Sistemas Computacionales en instituciones\r\ncomo Universidad Cristóbal Colón, Instituto Tecnológico Rosenblueth, Universidad\r\nVeracruzana y el Instituto Tecnológico de Veracruz.', 'Durante su desarrollo profesional ha ejercido en diferentes cargos de los que\r\ndestacan: <br>\r\n<ul>\r\n<li>Gerencia de Desarrollo de Sistemas, RECO (Redes y Consultoría al Comercio\r\nExterior)</li>\r\n<li>Subgerencia de Informática, Administración Portuaria Integral de Veracruz</li>\r\n<li>Coordinación de Proyectos de Automatización, Tenaris Tamsa</li>\r\n<li>Dirección de Sistemas, H. Ayuntamiento de Veracruz,  2004-2007</li>\r\n<li>Dirección de Administración en Grupo CICE</li>\r\n<li>Dirección de Tecnologías de la Información en Grupo CICE</li>\r\n</ul>', 'Tecnologico de México - Campus Veracruz<br>\n      <ul><li>Topicos Avanzados de Programación</li>\n      <li>Graficación por Computadora</li>\n      <li>Transacciones Computacionales con Blockchain</li>\n      <li>Lenguaje Ensamblador</li>\n      <li>Analisis y Diseño Orientado a Objetos</li>\n       <li>Taller de Base de Datos II</li></ul>\n       \n       <br><ul><li>Universidad Cristobal Colón, 2004 - 2006</li>\n       <li>Catedrático en la materia Modelado de Sistemas en la Maestría en Sistemas deInformación y del Diplomado\n        “Proceso Unificado de Desarrollo de Software y Java 2EE” para ICCE.</li>\n        <li>Universidad Veracruzana, Instituto de Ingeniería - 2003</li>\n        <li>Catedrático de la materia Seguridad en Redes en la Maestría de Telecomunicaciones.</li>\n        <li>Instituto Tecnológico Rosenblueth - 2003</li>\n        <li>Catedrático de la materia Administración de Proyectos Informáticos en la Maestría en Sistemas de Información.', 'genaro.ml@veracruz.tecnm.mx', 'genaroMendezLopez.webp', 1, NULL, NULL, NULL, NULL),
(15, 11, 'Hector Pérez Ortiz', '', 'MAESTRO EN REDES Y TELECOMUNICACIONES', 'CÁLCULO INTEGRAL , REDES DE COMPUTADORAS, TECNOLOGIA DE NEGOCIOS', 'hector.po@veracruz.tecnm.mx', 'user.webp', 1, NULL, NULL, NULL, NULL),
(16, 11, 'Jesús Apolinar Martínez San Germán', 'Podemos automatizar lo que esta estandarizado. Para lo cual los sistemas de cómputo se convierten en un activo para la empresa. Cuando apoyan las tomas de decisiones en apoyo su Planeación Estratégica.', 'Diploma en Evaluación de Proyectos de Inversión. Diplomado en Administración Publica. Diplomado en Liderazgo. Diplomada en Alta Dirección.', '<ul>\r\n<li>Estructura de Datos</li>\r\n<li>Inteligencia Artificial</li>\r\n<li>Fundamentos , Taller y Administración de Bases de Datos </li>\r\n<li>Bases de Datos Distribuidas en el modulo de especialidad de Concurrencia Computacional Avanzada</li>\r\n</ul>', 'jesus.ms@veracruz.tecnm.mx', 'jesusApolinarMartinezSanGerman.webp', 1, NULL, NULL, NULL, NULL),
(17, 11, 'Jesus Cruzado Calleja', 'Enfocado a todo proceso relacionado con la tecnología y su aplicación en la solución de problemas de indole empresarial, enfocar la atención y compartirla con los alumnos para el desarrollo de soluciones para la toma de decisiones.', '\"Maestria en Sistemas de Información\r\nMapeo de procesos\"\r\n', '<ul>\r\n<li>Ingeniería de software</li>\r\n<li>Administración de bases de datos</li>\r\n<li>Taller de bases de datos</li>\r\n<li>Auditoría de datos</li>\r\n<li>Fundamentos de bases de datos</li>\r\n<li>Organización computacional</li>\r\n<li>Innovación tecnológica para las empresas</li>\r\n<li>Gestión de proyectos de software</li>\r\n<li>Formulación y evaluación de proyectos de inversión</li>\r\n</ul>\r\n', 'jcruzado@hotmail.com', 'jesusCruzadoCalleja.webp', 1, NULL, NULL, NULL, NULL),
(18, 11, 'Jorge Estudillo Ramírez', 'Pienso que todos las personas tenemos la capacidad mental de aprender en menor o mayor grado dependiendo de la disponibilidad y la actitud, lo cual nos permitirá enfocar nuestras destrezas y habilidades en la búsqueda del conocimiento. Como profesor, mi compromiso es ser guía y acompañante en dicho proceso para el logro de los objetivos planteados en el programa educativo.', 'Estudié la carrera de Ingeniería en Sistemas Computacionales en el Instituto Tecnológico de Tuxtla Gutiérrez. He realizado tres posgrados, dos maestrías y un doctorado. Cursé la Maestría en Redes y Telecomunicaciones en la Universidad Cristóbal Colón, la Maestría en Ciencias en Ciencias Computacionales y Doctorado en Ciencias en Ciencias Computacionales, éstos últimos en el Instituto Nacional de Astrofísica, Óptica y Electrónica.  Actualmente soy profesor de tiempo completo reconocido con perfil deseable por la Secretaría de Educación Pública.', '<ul>\r\n<li>Lenguajes y autómatas I</li>\r\n<li>Tópicos Avanzados de Programación</li>\r\n<li>Programación Avanzada</li>\r\n<li>Programación Orientada a Objetos</li>\r\n<li>Fundamentos de Programación</li>\r\n<li>Programación Lógica y Funcional</li>\r\n<li>Arquitecturas de Desarrollo Web</li>\r\n<li>Sistemas Distribuidos</li>\r\n<li>Programación Móvil</li>\r\n<li>Tecnologías de Desarrollo Ágil</li>\r\n<li>Taller de Investigación I</li>\r\n<li>Taller de Investigación II</li>\r\n<li>Fundamentos de Bases de Datos</li>\r\n<li>Redes de Computadoras</li>\r\n<li>Teleproceso</li>\r\n</ul>', 'jorge.er@veracruz.tecnm.mx', 'jorgeEstudilloRamirez.webp', 1, NULL, NULL, NULL, NULL),
(19, 11, 'José Enrique Torres Montoya ', 'Orgullo ITVer : Bachillerato e Ingeniería en Sistemas Computacionales. Más de 25 años de docencia.', 'Maestría en Tecnología Educativa (Especialidad en Educación a Distancia). Diplomado y seminarista en Educación Ambiental. Artículos varios en ambas temáticas en congresos nacionales  e internacionales.', 'Asignaturas varias en el área de Sistemas. \nProgramación y Desarrollo Sustentable para diferentes planes de estudio.', 'enriquetorresmontoya@gmail.com ', 'joseEnriqueTorresMontoya.webp', 1, NULL, NULL, NULL, NULL),
(20, 11, 'José Gerardo Javier Ortiz Quiroz', 'Desarrolla tu algoritmo para lograr tus objetivos profesionales y personales. existen muchas alternativas, pero siempre hay una mejor. \r\n\"No lo intentes hazlo\": jgjoq.\r\n', 'ingeniero industrial eléctrico con estudios de maestría en sistemas de información, catedrático en el itv desde 1974 y precursor organizador de la carrera de i.s.c. en los institutos tecnológicos. así como ocupado diferentes cargos de jefatura y comisiones académicas.', '<ul>\r\n<li>Cálculo</li>\r\n<li>Electricidad y magnetismo</li>\r\n<li>Ingeniería eléctrica</li>\r\n<li>Lenguajes algorítmicos</li>\r\n<li>Introducción a las ciencias computacionales</li>\r\n<li>Lenguajes de programación: fortran, basic, pascal, dbase, c/c++, java</li>\r\n<li>Estructura de datos i y ii</li>\r\n<li>Administración de archivos</li>\r\n<li>Algoritmos computacionales</li>\r\n<li>Bases de datos</li>\r\n</ul>', 'jose.oq@veracruz.tecnm.mx', 'joseGerardoJavierOrtizQuiroz.webp', 1, NULL, NULL, NULL, NULL),
(21, 11, 'José Hernández Silva', 'Catedrático fundador de la Lic. en Sistemas Computacionales.', 'Licenciatura: Ingeniería Industrial en Electrónica, Posgrado: Maestría en Sistemas de Información y Estudios de Doctorado en Arquitectura y Tecnología de los Sistemas Informáticos.', '<ul>\r\n<li>Redes de Computadoras</li>\r\n<li>Administración de redes</li>\r\n<li>Conmutación y enrutamiento</li>\r\n<li>Lenguajes y Autómatas</li>\r\n<li>Sistemas Operativos</li>\r\n<li>Taller de Sistemas Operativos</li>\r\n<li>Taller de Sistemas Concurrentes I y II</li>\r\n</ul>', 'jose.hs@veracruz.tecnm.mx', 'joseHernandezSilva.webp', 1, NULL, NULL, NULL, NULL),
(22, 11, 'José Ramón Beltrán Guzmán', 'Una mente curiosa no deja de formular preguntas, ni de cuestionarlo absolutamente todo. ¡No dejes de preguntar!', 'Ingeniero en Sistemas Computacionales, Agente en sitio de HP para la aduana de Veracruz, Jefe de Proyecto de Vinculación del ITVer.', '<ul>\r\n<li>Sistemas Operativos</li>\r\n<li>Taller de Sistemas Operativos</li>\r\n</ul>', 'jose.bg@veracruz.tecnm.mx', 'joseRamonBeltranGuzman.webp', 1, NULL, NULL, NULL, NULL),
(23, 11, 'Julia Guadalupe Trujillo Salamanca ', 'Bienvenidos a nuestra Alma Máter, espero sea de su agrado y que los servicios prestados se encuentren al nivel de sus expectativas. ', 'Ingeniería en Sistemas computacionales,  egresada del Instituto Tecnológico de Veracruz. \r\nMaestría en Sistemas de Información egresada de la Universidad Mexicana ', '<ul>\r\n<li>Fundamentos de programación</li>\r\n<li>Lenguajes algoritmicos</li>\r\n<li>Estructura de datos</li>\r\n<li>Lenguajes y autómatas</li>\r\n<li>Sistemas Operativos</li>\r\n<li>Taller de Investigacion II</li>\r\n<li>Administración de Centros de Computo</li>\r\n<li>Cultura Empresarial</li>\r\n</ul>', 'julia.ts@veracruz.tecnm.mx ', 'juliaGuadalupeTrujilloSalamanca.webp', 1, NULL, NULL, NULL, NULL),
(24, 11, 'Karla Gabriela Peralta Madrigal', '\"Cuando uno enseña, dos aprenden\"', 'POSTGRADO EN ADMINISTRACIÓN', '<ul>\r\n<li>Fundamentos de investigación</li>\r\n<li>Fundamentos de programación</li>\r\n<li>Estructura de datos</li>\r\n<li>Programación orientada a objetos</li>\r\n<li>Graficación</li>\r\n<li>Sistemas operativos</li>\r\n<li>Taller de base de datos</li>\r\n<li>Lenguajes y autómatas I</li>\r\n<li>Conmutación y enrutamiento de datos</li>\r\n</ul>', 'karla.pm@veracruz.tecnm.mx', 'karlaGabrielaPeraltaMadrigal.webp', 1, NULL, NULL, NULL, NULL),
(25, 11, 'Leonardo Lezama Hernández', 'Los éxitos profesionales requieren de esfuerzo, dedicación, compromiso y sobre todo de ética profesional para ser valorados y reconocidos.', 'A lo largo de 37 años de experiencia profesional y docente en el campo de la Ingeniería en Sistemas Computacionales, he participado en múltiples actividades tanto en la Industria como en el sector educativo que han contribuido a mi desarrollo profesional y docente.', '<ul>\n<li>Programación</li>\n<li>Estructura de datos</li>\n<li>Simulación</li>\n<li>Bases de datos</li>\n<li>Taller de Investigación</li>\n<li>Sistemas Operativos</li>\n<li>Administración de Redes</li>\n<li>Conmutacion y Enrutamiento de redes de datos</li>\n<li>etc.</li>\n</ul>', 'leonardo.lh@veracruz.tecnm.mx', 'leonardoLezamaHernandez.webp', 1, NULL, NULL, NULL, NULL),
(26, 11, 'Lizbeth Sánchez Ferrer', 'El estudio sin deseo estropea la memoria y no retiene nada de lo que toma (Leonardo da Vinci).<br>\r\n<br>\r\nEn las enseñanzas del budismo tibetano, nos dicen que a lo largo de nuestra vida necesitamos siempre tener un maestro que nos guíe y tener la disposición de aprender de cada uno de nuestros maestros. Dicho maestro será alguien formal o informal. ', 'Egresada de licenciatura del IT de Veracruz de la carrera en Ingeniería en \r\nsistemas computacionales y de la Universidad Cristóbal Colón de la maestría en \r\nredes y telecomunicaciones.<br>\r\n<br>\r\nA lo largo de mis 28 años de servicio he colaborado en:<br>\r\n<ul>\r\n<li>Proyectos de investigación.</li>\r\n<li>Cuerpos académicos.</li>\r\n<li>Publicaciones.</li>\r\n<li>Ponencias.</li>\r\n<li>Instructora de cursos.</li>\r\n<li>Certificaciones.</li>\r\n<li>Diseño curricular a nivel nacional.</li>\r\n<li>Concursos de creatividad, innovación.</li>\r\n<li>Puestos administrativos.</li>\r\n<li>Configuración de redes.</li>\r\n<li>Capacitación a empresas.</li>\r\n<li>Asesor de tesis de licenciatura y maestría.</li>\r\n<li>Estadías profesionales en diversas empresas.</li>\r\n<li>Convenios con el sector privado y de gobierno.</li>\r\n</ul>', '<ul>\r\n<li>Programación</li>\r\n<li>Administración de centros de cómputo</li>\r\n<li>Auditoría de datos</li>\r\n<li>Taller de investigación</li>\r\n<li>Telecomunicaciones</li>\r\n<li>Redes de computadoras</li>\r\n<li>Administración de redes</li>\r\n</ul>', 'lizbeth.sf@veracruz.tecnm.mx', 'lizbethSanchezFerrer.webp', 1, NULL, NULL, NULL, NULL),
(27, 11, 'Marco Alberto Romo Medina', '', '', '<ul>\r\n<li>Programación</li>\r\n<li>Simulación</li>\r\n</ul>', 'marco.rm@veracruz.tecnm.mx', 'user.webp', 1, NULL, NULL, NULL, NULL),
(28, 11, 'Miguel Angel Pérez Cabada', 'La programación mueve al mundo.', 'Maestría en seguridad informática, Participe en concursos de robótica con el robot NAO, actualmente preparando un sistema de realidad virtual para el metaverso', '<ul>\r\n<li>Programación avanzada</li>\r\n<li>Base de datos distribuidas</li>\r<li>Concurrencia con GPUs en videojuegos</li>\n</ul>', 'miguel.pc@veracruz.tecnm.mx', 'miguelAngelPerezCabada.webp', 1, NULL, NULL, NULL, NULL),
(29, 11, 'Noemi Del Carmen Tenorio Prieto', 'Profesor de tiempo completo con 27 años de experiencia docente, en el Tecnológico Nacional de México, campus Instituto Tecnológico Superior de San Andrés Tuxtla, Instituto Tecnológico Cerro Azul e Instituto Tecnológico de Veracruz.', 'Ha impartido asignaturas en las siguientes ingenierías:<br>\r\nIng. en Sistemas Computacionales, Industrial, Bioquímica, Química, Eléctrica, Electrónica, Energías Renovables, Mecatrónica, Mecánica,  y licenciatura en Administración.<br>\r\nProfesor con reconocimiento de Perfil Deseable.<br>\r\nEjerce la tutoría I y II para los alumnos de la carrera de Ingeniería en Sistemas Computacionales.<br>\r\n<br>\r\nFunciones administrativas ejercidas entre otras:<br>\r\n          &emsp;*  Enlace de Sistemas de Gestión del ITVER<br>\r\n          &emsp;*  Coordinadora de posgrado de la DEPI<br>\r\n          &emsp;*  Subcoordinadora de la Zona V de los Centros de Información del SNIT,<br>\r\n          &emsp;*  Instructor  de la Biblioteca Virtual tecnológica<br>\r\n          &emsp;*  Enlace de Conricyt<br>\r\n<br>\r\nEgresada del Instituto Tecnológico de Orizaba como Técnico laboratorista Químico,  Licenciado en Informática y Maestra en Ingeniería Administrativa.<br> \r\n<br>\r\nProfesor con Reconocimiento de Perfil deseable.<br> \r\n<br>\r\nHa realizado los siguientes diplomados:<br>\r\n       	&emsp;*  Microsoft Teams 4ª Emisión: Alternancia de dinámicas de enseñanza y aprendizaje.<br> \r\n        &emsp;   para la educación híbrida y remota (2021)<br>\r\n	&emsp;*  Educación Inclusiva (2020)<br>\r\n        &emsp;*  Recursos educativos en ambientes virtuales de aprendizaje (2017)<br>\r\n	&emsp;*  Formación de tutores (2016)<br>\r\n	&emsp;*  Formación docente en TIC (2014)<br>\r\n        &emsp;*  Formación y desarrollo de competencias docentes (2011)<br>\r\n	&emsp;*  Ingeniería Administrativa (2008)<br>\r\n	&emsp;*  Praxis de la Docencia (2004)<br>\r\n	&emsp;*  Iniciación a la Docencia (2002)<br>\r\n<br>\r\nCuenta con las siguientes certificaciones:<br>\r\nCertificado de competencias laborales en el estándar de competencia (CONOCER):<br>\r\n         &emsp;Impartición de cursos de formación del capital humano de manera presencial grupal<br> \r\n         &emsp;NORMA EC0217<br>\r\n         <br>\r\n         &emsp;Evaluación del aprendizaje con enfoque en competencias profesionales<br>\r\n         &emsp;NORMA EC0772<br>\r\n         <br>\r\n	 &emsp;Desarrollo de cursos en línea<br> \r\n         &emsp;NORMA EC0366<br>\r\n	 <br>\r\nHa publicado los siguientes libros:<br>\r\n         &emsp;Análisis de factibilidad de un CRAI, un nuevo paradigma de gestión del conocimiento<br>\r\n         &emsp;ISBN: 978-3-8417-6308-2<br>\r\n<br>\r\nEs coautora del siguiente libro:<br>\r\n        &emsp;Prospectivas y teorías integrales para ingeniería y administración<br>\r\n        &emsp;ISBN: 978-3-639-60263-0<br>\r\n<br>\r\nHa participado en los siguientes capítulos de libro:<br>\r\n         &emsp;Estudio Técnico.<br>\r\n         &emsp;ISBN: 978-1-4633-8127-1<br>\r\n<br>\r\n         &emsp;El efecto de la corrupción en las estrategias de gestión de las micro y pequeñas \r\n         &emsp;empresas. Casos: Boca del Río y Medellín, Veracruz, México.<br>\r\n         &emsp;ISBN: TOMO II 978-607-736-634-8<br>\r\n<br>\r\n         &emsp;Imagen pública de la micro y pequeña empresa en Veracruz, Veracruz.<br>\r\n         &emsp;ISBN:978-607-98311-6-5<br>\r\n<br>\r\n         &emsp;Innovación e Industria 4.0 en las micro y pequeñas empresas de Veracruz, Veracruz.<br>\r\n         &emsp;ISBN TOMO II: 978-1-4562-8208-0<br>\r\n<br>\r\n         &emsp;Caracterización de la cultura financiera en micro y pequeñas empresas del municipio \r\n         &emsp;de Veracruz del estado de Veracruz de Ignacio de la Llave, México.<br>\r\n         &emsp;ISBN TOMO II: 978-607-15-1602-2, entre otros.<br>\r\n<br>\r\nAsí como varios artículos de publicaciones<br>', '<ul>\r\n<li>Fundamentos de programación</li>\r\n<li>Algoritmos y Lenguajes de Programación</li>\r\n<li>Taller de Informática Administrativa I</li>\r\n<li>Análisis de Sistemas</li>\r\n<li>Introducción a la Ingeniería en Sistemas Computacionales</li>\r\n<li>Informática</li> \r\n<li>Planificación y Modelado</li>\r\n<li>Fundamentos de Desarrollo de Sistemas</li>\r\n<li>Taller de Administración</li>\r\n<li>Fundamentos de Investigación</li>\r\n<li>Taller de Investigación I</li>\r\n<li>Taller de Investigación II</li>\r\n<li>Cultura Empresarial</li>\r\n<li>Administración Estratégica</li>\r\n<li>Desarrollo Sustentable</li>\r\n<li>Taller de Gestión Empresarial</li>\r\n<li>Calidad Aplicada a la Gestión Empresarial</li>\r\n</ul>', 'noemi.tp@veracruz.tecnm.mx', 'noemiDelCarmenTenorioPrieto.webp', 1, NULL, NULL, NULL, NULL),
(30, 11, 'Ofelia Gutiérrez Giraldi', '\"Un profesor trabaja para la eternidad, nadie puede decir dónde acaba su influencia\" Henry Adams.', 'Maestría en Educación, con especialidad en Organización y Administración de la Educación Superior. <br>\r\n<br>\r\nMaestría en Sistemas de Información.', 'En licenciatura: \r\n<ul>\r\n<li>Lenguajes y Autómatas I y II</li>\r\n<li>Ingeniería de Software</li>\r\n<li>Estructura de Datos</li>\r\n<li>Taller de Investigación I y II</li>\r\n<li>Compiladores</li>\r\n<li>Teoría de la Computación</li>\r\n</ul>\r\n\r\nEn Maestría: \r\n<ul>\r\n<li>Teoría de la Computación</li>\r\n<li>Seminario de Investigación</li>\r\n<li>Tópicos de Computación</li>\r\n</ul>', 'ofelia.gg@veracruz.tecnm.mx', 'ofeliaGutierrezGiraldi.webp', 1, NULL, NULL, NULL, NULL),
(31, 11, 'Patricia Horta Rosado', '', 'Licenciatura en Sistemas Computacionales, Maestría en Sistemas de Información.\r\n', '<ul>\r\n<li>Programación</li>\r\n<li>Fundamentos de Programación</li>\r\n<li>Inteligencia Artificial</li>\r\n<li>Fundamentos de Telecomunicaciones</li>\r\n<li>Taller de Investigación I y II</li>\r\n<li>Taller de Sistemas Operativos</li>\r\n</ul>\r\n', 'patricia.hr@veracruz.tecnm.mx', 'patriciaHortaRosado.webp', 1, NULL, NULL, NULL, NULL),
(32, 11, 'Primavera Argüelles Lucho', '', 'Mi formación como Ingeniera en Sistemas Computacionales, Maestría en Ingeniería Aplicada y Doctorado en Materiales y Nanociencia las cuales las terminé en tiempo y forma. He participado en la publicación de 15 artículos de los cuales 4 son de investigación, 5 de congreso internacional, 5 de congreso nacional y 1 de divulgación; publicados en revistas pertenecientes al índice de revistas mexicanas de divulgación científica y tecnológica del CONACYT.  Algunos de mis trabajos están relacionados con el modelado de elementos finitos de sistemas microelectromecánicos, sensores de gas y síntesis química de óxido de titanio. En la siguiente liga se encuentran los trabajos antes mencionados<br><a href=\"https://scholar.google.com/citations?view_op=list_works&hl=es&hl=es&user=3EUcm1YAAAAJ\" target=\"_blank\">Google Scholar - Primavera Argüelles Lucho</a>', '<ul>\r\n<li>Tópicos selectos de programación</li>\r\n<li>Graficación</li>\r\n<li>Lenguajes y Autómatas I</li>\r\n<li>Taller de base de datos</li>\r\n<li>Ingeniería de materiales no metálicos</li>\r\n<li>Tópicos selectos de física</li>\r\n<li>Física y Física general  </li>\r\n</ul>', 'primavera.al@veracruz.tecnm.mx\n', 'primaveraArguellesLucho.webp', 1, NULL, NULL, NULL, NULL),
(33, 11, 'Rafael Córdoba Del Valle', 'Doctor en Sistemas y Ambientes Educativos. Catedrático del Departamento de Sistemas y Computación. \r\nLínea de investigación que desarrolla: Ambientes Virtuales de Aprendizaje. ', 'Publicación de diversos artículos en revistas nacionales. Participación de Congresos Nacionales e Internacionales. \r\nDesarrollo de un proyecto de investigación acerca de la inclusión de aplicaciones multimedia en la enseñanza y \r\naprendizaje para mejorar la comprensión de las fracciones en estudiantes de primaria. Miembro Activo del Consejo de \r\nTransformación Educativa.', '<ul>\r\n<li>Estructura de Datos</li>\r\n<li>Fundamentos de Programación</li>\r\n<li>Sistemas Operativos</li>\r\n<li>Taller de Investigación</li>\r\n<li>Programación</li>\r\n<li>Programación Estructurada</li>\r\n<li>Programación Orientada a Objetos</li>\r\n<li>Algoritmos y Lenguajes de Programación</li>\r\n<li>Tópicos Selectos de Programación</li>\r\n</ul>', 'rafael.cd@veracruz.tecnm.mx', 'rafaelCordobaDelValle.webp', 1, NULL, NULL, NULL, NULL),
(34, 11, 'Rafael Rivera López', 'Haz lo que tengas que hacer dando tu mayor esfuerzo\r\n', '\"Originario de Poza Rica de Hidalgo, Veracruz. Ingeniero en Sistemas Computacionales por el Instituto Tecnológico de Veracruz (1989), Maestro en Ciencias de la Computación por el Instituto Tecnológico y de Estudios Superiores de Monterrey (2000) y Doctor en Ciencias de la Computación por la Universidad Juárez Autónoma de Tabasco (2018).<br>\r\n<br>\r\nFue premiado como uno de los cinco mejores estudiantes de Física en México por la Dirección General de Educación Tecnológica Industrial en 1985, reconocido como estudiante de excelencia por el Tecnológico de Monterrey en el 2000, y con mención honorífica por la defensa de su tesis doctoral. <br>\r\n<br>\r\nActualmente es Profesor Investigador de Tiempo Completo del Departamento de Sistemas y Computación del Instituto Tecnológico de Veracruz.<br>\r\n<br>\r\nImparte cursos a nivel licenciatura en las áreas de programación orientada a objetos e inteligencia artificial.<br>\r\n<br>\r\nDesde 2007, es profesor con perfil deseable reconocido por PRODEP y a partir de 2019 es miembro del Sistema Nacional de Investigadores (SNI) de Conacyt. Además, en 2021 se integró como miembro de la Red Temática Conacyt de Aprendizaje e Inteligencia Computacional Aplicada (REDICA) y como miembro adherente de la Academia Mexicana de la Computación (AMEXCOMP). Desde 2022 forma parte de la Sociedad Mexicana de Ciencia de la Computación (SMCC).<br>\r\n<br>\r\nHa publicado artículos en revistas indexadas por el Journal Citation Report (JCR), y en diversos congresos nacionales y extranjeros. Sus intereses de investigación incluyen el estudio y aplicación de metaheurísticas para resolver problemas complejos y el diseño de modelos orientados a objetos para implementar procedimientos de aprendizaje automático.<br>\r\n<br>\r\n<br><a href=\"https://www.rafaelriveralopez.net\" target=\"_blank\">Sitio web personal</a> <br><a href=\"https://www.researchgate.net/profile/Rafael-Rivera-Lopez\" target=\"_blank\">Cuenta de ResearchGate - Rafael Rivera Lopez</a> <br><a href=\"https://www.webofscience.com/wos/author/record/1097915\" target=\"_blank\">Cuenta de Web of Sciences - Rafael Rivera Lopez</a>', '<ul>\r\n<li>Fundamentos de Programación</li>\r\n<li>Programación</li>\r\n<li>Programación Orientada a Objetos</li> <li>Graficación</li>\r\n<li>Tópicos Avanzados de Programación</li>\r\n<li>Inteligencia Artificial</li>\r\n<li>Redes de Computadoras</li>\r\n<li>Física</li>\r\n<li>Análisis de Sistemas</li>\r\n<ul>', '<ul><li>rafael.rl@veracruz.tecnm.mx</li><li>rafaelriveralopez@gmail.com</li></ul>', 'rafaelRiveraLopez.webp', 1, NULL, NULL, NULL, NULL),
(35, 11, 'Raúl Héctor Trujillo Jimémez', 'El éxito es la suma de pequeños esfuerzos repetidos día a día.', 'Ing. en sistemas computacionales y Master en sistemas de información así como empresario con mas de 30 años en TI \r\nen el sector Financiero. <br>\r\nCon 35 años Catedrático a nivel licenciatura como maestrías en diversas Universidades en el puerto de Veracruz.', '<ul>\r\n<li>Administración de Proyectos</li>\r\n<li>Fundamentos de Programación</li>\r\n<li>Programación</li>\r\n<li>Fundamentos de Bases de Datos</li>\r\n<li>Administración de Base de Datos</li> \r\n<li>Minería de base de datos</li>\r\n<li>Base de datos distribuidas</li>\r\n<li>Redes</li> \r\n<li>Entre Otras</li>\r\n</ul>', 'raul.tj@veracruz.tecnm.mx', 'raulHectorTrujilloJimemez.webp', 1, NULL, NULL, NULL, NULL),
(36, 11, 'Ricardo Rodríguez de la Lanza', 'Lo mas importante es obtener Profesionistas de Calidad Mundial', '28 años de Labor docente', '<ul><li>Bases de Datos</li><li>fundamentos</li><li>Ing de software</li><li>auditoria en informatica</li></ul>', 'ricardo.rd@veracruz.tecnm.mx', 'user.webp', 1, NULL, NULL, NULL, NULL),
(37, 11, 'Senén Juárez Tinoco', 'Trabajar por una superación constante.', 'Ingeniero en Sistemas Computacionales, miembro de la primera generación en la Carrera de ISC en el Instituto Tecnológico de Veracruz. Maestría en Sistemas Computacionales con especialidad en Inteligencia Artificial. Experiencia laboral en el área de Tecnologías de la Información en sectores Comercial y Portuario. Empresario en áreas como Tecnologías de la Información y la Seguridad. Consultor en Factorías de Software.', '<ul>\r\n<li>Programación Orientada a Objetos</li>\r\n<li>Tópicos Avanzados de Programación</li>\r\n<li>Ingeniería de Software</li>\r\n<li>Taller de Investigación I y II</li>\r\n<li>Introducción a las Bases de Datos</li>\r\n<li>Administración de Bases de Datos</li>\r\n</ul>', 'senen.jt@veracruz.tecnm.mx', 'senenJuarezTinoco.webp', 1, NULL, NULL, NULL, NULL),
(38, 11, 'Virginia Osorio Campos', '...', 'Maestría en Administración.', '<ul>\r\n<li>Programación</li> \r\n<li>Programación Estructurada</li>\r\n<li>Programación Básica</li>\r\n<li>Algoritmos y Lenguajes de Programación</li>\r\n<li>Algoritmos y Programación</li> \r\n<li>Lógica de Programación</li>\r\n<li>Tecnologías de la Información</li>\r\n<li>Taller de Informática Administrativa</li>\r\n</ul>', 'virginia.oc@veracruz.tecnm.mx', 'virginiaOsorioCampos.webp', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_especialidad`
--

CREATE TABLE `tbl_especialidad` (
  `especialidadId` int(11) NOT NULL,
  `carreraId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_especialidad`
--

INSERT INTO `tbl_especialidad` (`especialidadId`, `carreraId`, `nombre`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 1, 'Calidad y Productividad', 1, NULL, NULL, NULL, NULL),
(2, 1, 'Negocios Globales', 1, NULL, NULL, NULL, NULL),
(3, 2, 'Gestión y Negocios', 1, NULL, NULL, NULL, NULL),
(4, 2, 'Mercadotecnia y Negocios Internacionales', 1, NULL, NULL, NULL, NULL);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_materia`
--

CREATE TABLE `tbl_materia` (
  `materiaId` int(11) NOT NULL,
  `carreraId` int(11) NOT NULL,
  `especialidadId` int(11) DEFAULT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 NOT NULL,
  `area` varchar(150) DEFAULT NULL,
  `semestre` int(11) NOT NULL,
  `competencia` text NOT NULL,
  `urlVideo` varchar(150) DEFAULT NULL,
  `urlPrograma` varchar(150) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_materia`
--

INSERT INTO `tbl_materia` (`materiaId`, `carreraId`, `especialidadId`, `nombre`, `area`, `semestre`, `competencia`, `urlVideo`, `urlPrograma`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 1, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(2, 1, NULL, 'Fundamentos de Química', NULL, 1, 'Adquiere conocimientos básicos propios de la química para establecer programas de seguridad e higiene.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(3, 1, NULL, 'Fundamentos de Física', NULL, 1, 'Adquirir una visión general del desarrollo histórico de la física desde un punto de vista crítico y analítico, así como desarrollar la creatividad realizando prototipos didácticos que representen fenómenos físicos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(4, 1, NULL, 'Fundamentos de Gestión Empresarial', NULL, 1, 'Descubre sus potencialidades para propiciar su desarrollo personal y la mejora de su calidad de vida, a través del autoconocimiento.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(5, 1, NULL, 'Desarrollo Humano', NULL, 1, 'de una variable para la elaboración de modelos matemáticos aplicados', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(6, 1, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(7, 1, NULL, 'Software de Aplicación Ejecutivo', NULL, 2, 'Aplica las nuevas tecnologías de información en las organizaciones para optimizar los procesos de comunicación y procesamiento de información y hacer eficiente la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(8, 1, NULL, 'Cálculo Integral', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(9, 1, NULL, 'Contabilidad Orientada a los Negocios', NULL, 2, 'Formular Estados Financieros básicos utilizando normas y procedimientos, comprendiendo la importancia del proceso contable en los negocios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(10, 1, NULL, 'Dinámica Social', NULL, 2, 'Construye un modelo sociológico para comprender la problemática de las organizaciones y proponer soluciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(11, 1, NULL, 'Taller de Ética', NULL, 2, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(12, 1, NULL, 'Legislación Laboral', NULL, 2, 'Aplica la legislación laboral en las relaciones obrero-patronal para mantener la armonía entre el capital y el trabajo.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(13, 1, NULL, 'Marco Legal de las Organizaciones', NULL, 3, 'Diseña, evalúa y emprende nuevos negocios y proyectos empresariales, en un mercado competitivo y globalizado, con una perspectiva legal. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(14, 1, NULL, 'Probabilidad y Estadística Descriptiva', NULL, 3, 'Realiza el proceso de recopilación, presentación y análisis de información económica-administrativa, para interpretar estadísticas y parámetros en muestras y poblaciones utilizando métodos de cálculo y software estadístico para la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(15, 1, NULL, 'Costos Empresariales', NULL, 3, 'Aplica la información generada por la contabilidad de los costos empresariales en la gestión de los procesos relacionados con los costos de adquisición, producción, distribución, administración y financiamiento, para el desarrollo de las funciones de planeación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(16, 1, NULL, 'Habilidades Directivas I', NULL, 3, 'Desarrolla habilidades directivas con el fin de resolver situaciones en el ámbito social y laboral', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(17, 1, NULL, 'Economía Empresarial', NULL, 3, 'Aplica herramientas de análisis y diagnóstico económico empresarial que le permiten la toma de decisiones estratégicas logrando la ventaja competitiva de la organización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(18, 1, NULL, 'Álgebra Lineal', NULL, 3, 'Analiza las propiedades de los espacios vectoriales y las transformaciones lineales para vincularlos con otras ramas de las matemáticas y otras disciplinas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(19, 1, NULL, 'Ingeniería Económica', NULL, 4, 'Aplica el valor del dinero a través del tiempo en las inversiones, para detectar oportunidades de mejora e inversión en un mundo global que refleje en la rentabilidad del negocio.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(20, 1, NULL, 'Estadística Inferencial I', NULL, 4, 'Aplica los conceptos de la teoría de la probabilidad y estadística para organizar, clasificar, analizar e interpretar datos para la toma decisiones en aplicaciones de gestión empresarial.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(21, 1, NULL, 'Instrumentos de Presupuestación Empresarial', NULL, 4, 'Elaborar presupuestos como instrumentos para que sirvan de herramienta en la planeación y control de recursos, diseñando diversos escenarios que faciliten la toma de decisiones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(22, 1, NULL, 'Habilidades Directivas II', NULL, 4, 'Aplica y propone diferentes habilidades directivas para la toma de decisiones efectiva, así como el manejo facultamiento, delegación, comunicación afectiva y toma de decisiones con la finalidad de resolver situaciones reales en la vida cotidiana y profesional proponiendo soluciones efectivas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(23, 1, NULL, 'Entorno Macroeconómico', NULL, 4, 'Aplica indicadores macroeconómicos como herramientas para comprender el comportamiento del entorno socioeconómico y su influencia en la toma de decisiones de las empresas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(24, 1, NULL, 'Investigación de Operaciones', NULL, 4, 'Identifica y aplica las diferentes teorías y técnicas de la investigación de operaciones, en la solución de problemas relacionados con su profesión, en cuanto a una toma de decisiones adecuada y fundada en el método científico en la administración.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(25, 1, NULL, 'Finanzas en las Organizaciones', NULL, 5, 'Analiza, interpretar y diagnostica la información financiera de organizaciones para la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(26, 1, NULL, 'Estadística Inferencial II', NULL, 5, 'Utiliza las herramientas necesarias para establecer relaciones lineales entre dos o más variables explicatorias y las dependientes, así como la aplicación del diseño de experimentos industriales e identificación de las variables.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(27, 1, NULL, 'Ingeniería de Procesos', NULL, 5, 'Aplica los elementos de la ingeniería de procesos, favoreciendo la productividad en un ambiente organizacional, con una orientación sistémica y sustentable para la toma de decisiones en forma efectiva.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(28, 1, NULL, 'Gestión del Capital Humano', NULL, 5, 'Integrar la gestión del capital humano con las estrategias de la organización, permitiendo incrementar la productividad y competitividad de las mismas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(29, 1, NULL, 'Taller de Investigación I', NULL, 5, 'Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(30, 1, NULL, 'Mercadotecnia', NULL, 5, 'Diseña estrategias de mercadotecnia para posicionar un producto en el mercado, considerando las oportunidades y amenazas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(31, 1, NULL, 'Administración de la Salud y Seguridad Ocupacional', NULL, 6, 'Gestiona el desarrollo de programas de salud y seguridad en los centros de trabajo, para sensibilizar al estudiante en valorar las condiciones laborales a fin de asegurar que éstas favorezcan la productividad en un ambiente organizacional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(32, 1, NULL, 'El Emprendedor y la Innovación', NULL, 6, 'Desarrolla la capacidad creativa y el espíritu empresarial, la elaboración de un portafolio de ideas emprendedoras, respetando la ética en el ámbito personal y profesional, para llevar a cabo un óptimo desempeño en la realización de las habilidades emprendedoras.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(33, 1, NULL, 'Gestión de la Producción I', NULL, 6, 'Aplica conceptos, variables operativas, técnicas y herramientas de los procesos de producción en la optimización de los recursos de las organizaciones, mediante modelos cualitativos y cuantitativos para mejorar la productividad y competitividad organizacional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(34, 1, NULL, 'Diseño Organizacional', NULL, 6, 'Diseña estructuras organizacionales considerando las características propias de cada organización para su correcto funcionamiento. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(35, 1, NULL, 'Taller de Investigación II', NULL, 6, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(36, 1, NULL, 'Sistemas de Información de Mercadotecnia', NULL, 6, 'Desarrolla la capacidad de análisis para evaluar el significado de la información obtenida a través de un sistema de Información de Mercados para la oportuna y eficaz toma de decisiones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(37, 1, NULL, 'Calidad Aplicada a la Gestión Empresarial', NULL, 7, 'Aplica métodos estadísticos, técnicas de muestreo y las normas de un sistema de calidad, para evaluar, controlar y optimizar los procesos aplicando la mejora continua.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(38, 1, NULL, 'Plan de Negocios', NULL, 7, 'Elabora el plan de negocios para operar una empresa y/u obtener financiamiento, considerando los normatividad y reglas de operación vigentes.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(39, 1, NULL, 'Gestión de la Producción II', NULL, 7, 'Elabora los planes de producción para controlar su ejecución, de acuerdo a lo programado, en las instalaciones, recursos y procesos, y diseña políticas para las operaciones de las empresas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(40, 1, NULL, 'Gestión Estratégica', NULL, 7, 'Desarrolla estrategias empresariales considerando criterios de sustentabilidad, para obtener ventajas competitivas sostenibles en un entorno cambiante y globalizado.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(41, 1, NULL, 'Desarrollo Sustentable', NULL, 7, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(42, 1, NULL, 'Mercadotecnia Electrónica', NULL, 7, 'Conoce y desarrolla habilidades en el uso de tecnologías de negocios digitales que apoyen las decisiones mercadológicas para colocar productos o servicios en los mercados electrónicos con el fin de posicionar una marca.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(43, 1, NULL, 'Cadena de Suministros', NULL, 8, 'Gestiona y mejora sistemas integrados de producción, abastecimiento y distribución de organizaciones productoras de bienes y servicios para incrementar la competitividad de la cadena de suministro. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(44, 1, 1, 'Tecnologías de Negocios Electrónicos', NULL, 8, 'Aplica las tecnologías de información en las organizaciones para optimizar los procesos de comunicación y procesamiento de información y hacer eficiente la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(45, 1, 1, 'Sistemas de Gestión de la Calidad', NULL, 8, 'Integrar los conocimientos requeridos en una organización, para gestionar y dirigir sistemas de gestión de calidad que permitan mejorar la eficacia y eficiencia tanto de sus procesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(46, 1, 1, 'Administración de la Productividad', NULL, 8, 'Aplica técnicas para la medición, el análisis, el mejoramiento y la administración de la productividad en una organización con la finalidad de aumentar su rentabilidad. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(47, 1, 1, 'Cultura de la Calidad', NULL, 8, 'Analizar la importancia del desarrollo de una cultura de calidad en las organizaciones y la calidad de vida en las personas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(48, 1, 1, 'Medición de la Competitividad y Sustentabilidad', NULL, 9, 'Identificar aquellos procesos críticos y estratégicos que influyan en la competitividad y sustentabilidad de una empresa u organización y será capaz de elaborar propuestas que lleven a una solución que integre los diferentes recursos físicos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(49, 1, 1, 'Control Estadístico de la Calidad', NULL, 9, 'Diseñar e Implantar el Control estadístico de Calidad en procesos para alcanzar la mejora continua', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(50, 1, 2, 'Tecnologías de Negocios Electrónicos', NULL, 8, 'Aplica las tecnologías de información en las organizaciones para optimizar los procesos de comunicación y procesamiento de información y hacer eficiente la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(51, 1, 2, 'Tratados Internacionales', NULL, 8, 'Evalúa las funciones de los organismos internacionales para identificar como influyen en el comercio internacional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(52, 1, 2, 'Estrategia de Negocios Globales', NULL, 8, 'Desarrolla habilidades de pensamiento estratégico y marketing orientadas a solucionar problemáticas de negocios globales y a detectar oportunidades de negocio en el extranjero.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(53, 1, 2, 'Administración Financiera Internacional', NULL, 8, 'Conoce la estructura del Sistema Financiero Internacional y los mercados en que operan las organizaciones Internacionales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(54, 1, 2, 'Gestión Portuaria', NULL, 9, 'Desarrollar habilidades básicas y fundamentales relacionadas con la Gestión Portuaria fundamentados en el Legislación que rige el Comercio Exterior.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(55, 1, 2, 'Plan de Negocios Internacionales', NULL, 9, 'Desarrolla habilidades de pensamiento estratégico y crítico de organización, marketing, producción, económico-financiero orientadas a desarrollar planes de negocios internacionales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(56, 2, NULL, 'Teoría General de la Administración', NULL, 1, 'Identificar y enunciar los fundamentos generales de la administración que abarcan los distintos enfoques del pensamiento administrativo; la empresa, su clasificación y las tendencias globales, así como las competencias profesionales del administrador. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(57, 2, NULL, 'Informática para la Administración', NULL, 1, 'Desarrolla y utiliza las herramientas de las nuevas tecnologías de la información, que le permitan optimizar los procesos de comunicación y desarrollo en las organizaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(58, 2, NULL, 'Taller de Ética', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(59, 2, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(60, 2, NULL, 'Matemáticas Aplicadas a la Administración', NULL, 1, 'Analiza y aplica los criterios matemáticos como funciones lineales, sistemas de ecuaciones, matrices, cálculo diferencial e integral para mejorar el análisis de las técnicas cuantitativas plicadas a modelos económicos administrativos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(61, 2, NULL, 'Contabilidad General', NULL, 1, 'Identifica, analiza y aplica las técnicas y herramientas de carácter contable para generar información financiera de la organización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(62, 2, NULL, 'Función Administrativa I', NULL, 2, ' Aplica las bases conceptuales y procedimentales del proceso administrativo, para elaborar planes y diseñar estructuras organizacionales que conduzcan a una organización al éxito. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(63, 2, NULL, 'Estadística para la Administración I', NULL, 2, 'Aplica e interpreta la estadística descriptiva en las organizaciones para la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(64, 2, NULL, 'Derecho Laboral y Seguridad Social', NULL, 2, 'Interpreta el derecho laboral y la seguridad social vigentes, así como las implicaciones legales que tienen las empresas tanto públicas como privadas, para aplicar estos principios en el campo de su vida  profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(65, 2, NULL, 'Comunicación Corporativa', NULL, 2, 'Establece una comunicación eficaz dentro y fuera de la organización, diseñando un plan de relaciones públicas a través de la utilización de las tecnologías de la información para las organizaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(66, 2, NULL, 'Taller de Desarrollo Humano', NULL, 2, 'Entiende la importancia de su ser y de la vida, que le permita mantener un equilibrio personal a través del desarrollo sus capacidades, para mejorar su desempeño personal en las organizaciones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(67, 2, NULL, 'Costos de Manufactura', NULL, 2, ' Identifica y aplica el sistema de costos de producción para una adecuada toma de decisiones en relación al control y análisis de las operaciones productivas en la organización', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(68, 2, NULL, 'Función Administrativa II', NULL, 3, 'Aplica la fase dinámica procedimental del proceso administrativo para la integración, dirección y control en las organizaciones destacando las habilidades gerenciales. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(69, 2, NULL, 'Estadística para la Administración II', NULL, 3, 'Aplica herramientas de la inferencia estadística con métodos paramétricos y no paramétricos para la toma de decisiones en las organizaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(70, 2, NULL, 'Derecho Empresarial', NULL, 3, 'Identifica la importancia del derecho empresarial en el desarrollo de las operaciones mercantiles, para interpretar el marco normativo y su aplicación en lasorganizaciones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(71, 2, NULL, 'Comportamiento Organizacional', NULL, 3, 'Integra los elementos que conforman la organización que están relacionados con el comportamiento humano en un ambiente globalizado, para propiciar el desarrollo de organizaciones sanas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(72, 2, NULL, 'Dinámica Social', NULL, 3, 'Analiza los elementos de los procesos básicos, la relación con sus estructuras y con la sociedad global que le permiten conceptualizar a las organizaciones como sistemas complejos con el fin de tomar la mejor decisión. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(73, 2, NULL, 'Contabilidad Gerencial', NULL, 3, 'Identifica y aplica las técnicas y herramientas administrativas, que a partir de la información financiera de la organización, apoyan las funciones de planeación, control y toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(74, 2, NULL, 'Gestión Estratégica del Capital Humano I', NULL, 4, 'Aplica modelos y procesos en el desarrollo del capital humano para lograr un alto desempeño en las organizaciones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(75, 2, NULL, 'Procesos Estructurales', NULL, 4, 'Diseña o rediseña sistemas organizacionales con el fin de lograr la competitividad y productividad de la empresa ante el constante cambio. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(76, 2, NULL, 'Métodos Cuantitativos para la Administración', NULL, 4, 'Aplica los métodos de la teoría de decisiones, programación lineal, administración de proyectos y modelos de líneas de espera como técnicas de análisis cuantitativo parala toma de decisiones en la administración. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(77, 2, NULL, 'Fundamentos de Mercadotecnia', NULL, 4, 'Identifica los conceptos básicos e importancia de la mercadotecnia para generar el sustento teórico que permita diseñar proyectos integradores en los diferentes entornos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(78, 2, NULL, 'Economía Empresarial', NULL, 4, 'Reconoce y utiliza las diversas teorías y herramientas de análisis microeconómico para dar tratamiento a la información de la empresa y contribuir en la toma de decisiones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(79, 2, NULL, 'Matemáticas Financieras', NULL, 4, 'Aplica las herramientas de matemáticas financieras para establecer estrategias que apoyen la planeación, control y toma de decisiones para optimizar los resultados de la organización, de tal forma que ayuden en la solución de problemas financieros de forma efectiva. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(80, 2, NULL, 'Gestión Estratégica del Capital Humano II', NULL, 5, 'Realiza un diagnóstico del desempeño del capital humano, para detectar oportunidades de mejora e incrementar la competitividad de la organización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(81, 2, NULL, 'Derecho Fiscal', NULL, 5, 'Conoce, interpreta y aplica con responsabilidad, honestidad y compromiso las disposiciones tributarias de las leyes fiscales en las organizaciones que les permitan cumplir con las obligaciones emanadas de ellas', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(82, 2, NULL, 'Mezcla de Mercadotecnia ', NULL, 5, 'Diseña e implementa estrategias de mezcla de mercadotecnia basadas en el análisis de información sistemáticamente obtenida del entorno. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(83, 2, NULL, 'Macroeconomía', NULL, 5, 'Identifica y analiza las variables macroeconómicas fundamentales distinguiendo los agregados económicos para interpretar la dinámica de la actividad económica nacional, así como la afectación en las diferentes organizaciones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(84, 2, NULL, 'Administración Financiera I', NULL, 5, 'Analiza, interpreta y diagnostica la información financiera de organizaciones en la toma de decisiones para la optimización de los recursos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(85, 2, NULL, 'Desarrollo Sustentable', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(86, 2, NULL, 'Gestión de la Retribución ', NULL, 6, 'Analiza las retribuciones de una organización desde un punto de vista legal y aplica las metodologías en su descripción y valuación para una mejor distribución y equidad en el sector productivo. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(87, 2, NULL, 'Producción', NULL, 6, 'Aplica los principios y técnicas más importantes de la administración de la producción para utilizar de manera eficiente y efectiva los recursos productivos de la empresa, así como el desarrollo de habilidades para resolver los problemas de toma de decisiones asertivas', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(88, 2, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico -tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(89, 2, NULL, 'Sistemas de Información de Mercadotecnia', NULL, 6, 'Aplica el manejo de técnicas y herramientas que le permitan administrar los sistemas de información de mercadotecnia para generar, mediante la investigación, la toma de decisiones en los diversos ámbitos de las organizaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(90, 2, NULL, 'Innovación y Emprededurismo ', NULL, 6, 'Fortalece el potencial creativo y emprendedor a través del desarrollo de las habilidades para definir objetivos y estrategias, para la búsqueda de información que propicie la toma de decisiones en equipos interdisciplinarios', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(91, 2, NULL, 'Administración Financiera II', NULL, 6, 'Aplica eficazmente las diversas técnicas de evaluación de presupuesto de capital y la operación en los mercados bursátiles y extrabursátiles para la mejor toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(92, 2, NULL, 'Plan de Negocios', NULL, 7, 'Elabora el plan de negocios para operar una empresa y/u obtener financiamiento, considerando los normatividad y reglas de operación vigentes. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(93, 2, NULL, 'Procesos de Dirección', NULL, 7, 'Integra el proceso de dirección estratégica en las organizaciones para incrementar la productividad y lograr una ventaja competitiva.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(94, 2, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(95, 2, NULL, 'Administración de la Calidad', NULL, 7, 'Aplica los conocimientos, habilidades y actitudes requeridas en la administración de la calidad que permita mejorar la eficacia y eficiencia de la organización, tanto en sus procesos como en sus servicios, utilizando herramientas de control estadístico y de mejora continua para la toma de decisiones', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(96, 2, NULL, 'Economía Internacional', NULL, 7, 'Analiza la información económica internacional y diseña estrategias de mercado internacional adecuadas para las organizaciones de acuerdo al contexto global.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(97, 2, NULL, 'Diagnóstico y Evaluación Empresarial', NULL, 7, 'Elabora un informe donde emite una opinión acerca de la información presentada por la empresa después de haber verificado, evaluado y diagnosticado la estructura y funcionamiento general de una organización para lograr una administración más eficiente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(98, 2, NULL, 'Consultoría Empresarial', NULL, 8, 'Analiza situaciones problemáticas en las organizaciones y aplica sus destrezas y habilidades en el diseño de propuestas de solución y su implantación para mejorar las prácticas empresariales. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(99, 2, NULL, 'Formulación y Evaluación de Proyectos', NULL, 8, 'Formula, evalúa y gestiona proyectos de inversión, que le permitan desarrollar proyectos integrales para la generación y crecimiento de las empresas bajo criterios de competitividad y sostenibilidad. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(100, 2, NULL, 'Desarrollo Organizacional', NULL, 8, 'Aplica los conceptos teórico-prácticos del desarrollo organizacional para mejorar el desempeño administrativo empresarial, a través del análisis de su cultura y ambiente organizacional fomentando el trabajo en equipo. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(101, 2, 3, 'Sistemas de Gestión de la Calidad', NULL, 8, 'Aplica los conocimientos, habilidades y actitudes requeridas en las Normas de Calidad que permita mejorar la eficacia y eficiencia de una organización, tanto en sus procesos como en sus servicios, con fines de lograr una certificación', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(102, 2, 3, 'Comunicación Intercultural', NULL, 8, 'Identificar las diferencias que se dan en la comunicación intercultural y facilitarle el conocimiento y las habilidades que le permitirán tener éxito al interaccionar con personas de culturas diferentes a la suya, incorporando la comunicación oral y escrita en idioma inglés', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(103, 2, 3, 'Liderazgo y Dirección de Talento Humano', NULL, 8, 'Desarrolla habilidades, actitudes, valores, experiencias y criterios que permitan al alumno desempeñarse exitosamente en actividades directivas, que tengan un impacto positivo en el desarrollo de talento humano.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(104, 2, 3, 'Toma de Decisiones ', NULL, 9, 'El estudiante comprenderá que las decisiones son el generador de los negocios y los impactos y consecuencias de ellas', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(105, 2, 3, 'Tecnologías de la Información para los negocios', NULL, 9, 'Identifica los elementos básicos de la computadora y sus funciones. Identifica la terminología básica del sistema operativo. Guarda y recuperar la información en distintos medios de almacenamiento.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(106, 2, 3, 'Estrategias Comerciales', NULL, 9, 'Formular estrategias comerciales que le permitan al estudiante comprender la importancia del logro de metas, al desarrollar estrategias orientadas al cierre de la venta a través de la creación de hábitos de mejora continua, integridad y trabajo en equipo.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(107, 2, 3, 'Cultura de la Calidad', NULL, 9, 'Analizar la importancia del desarrollo de una cultura de calidad en las organizaciones y la calidad de vida en las personas', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(108, 2, 3, 'Responsabilidad Social', NULL, 10, 'Comprender los conceptos teóricos básicos de la Responsabilidad Social Empresarial. Identificar los grupos de interés y los procesos de diálogo que generen valor para los involucrados. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(109, 2, 4, 'Mercadotecnia Internacional', NULL, 8, 'Conocer los tratados comerciales firmados por México con otros países. Implementar estrategias logísticas en la resolución de casos prácticos con la aplicación de tratados comerciales y barreras arancelarias utilizando las ventajas que ofrecen los tratados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(110, 2, 4, 'Comunicación Intercultural', NULL, 8, 'Identificar las diferencias que se dan en la comunicación intercultural y facilitarle el conocimiento y las habilidades que le permitirán tener éxito al interaccionar con personas de culturas diferentes a la suya, incorporando la comunicación oral y escrita en idioma inglés.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(111, 2, 4, 'Tecnologías de Negocios Electrónicos ', NULL, 8, 'Aplica las tecnologías de información en las organizaciones para optimizar los procesos de comunicación y procesamiento de información y hacer eficiente la toma de decisiones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(112, 2, 4, 'Derecho Aduanero', NULL, 9, 'Investigar y analizar las diversas prácticas que contempla la Ley Aduanera, así como su reglamento para el ingreso y egreso legal de las mercancías.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(113, 2, 4, 'Gestión Portuaria', NULL, 9, 'Comprender losConceptos predominantes en el ámbito de la Gestión Internacional de los Recursos Humanos, lo que le permitirá conocer actividades de Reclutamiento, Selección, Integración, Contratación, Entrenamiento y Remuneraciones en este contexto internacional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(114, 2, 4, 'Administración Financiera', NULL, 9, 'Desarrolla habilidades orientadas a solucionar problemáticas de negocios globales y a detectar oportunidades, tomando en cuenta el entorno cultural, político, económico de las organizaciones internacionales', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(115, 2, 4, 'Gestión Internacional de Recursos Humanos', NULL, 10, 'La competencia específica de la asignatura, comprende los conceptos predominantes en el ámbito de la Gestión Internacional de los Recursos Humanos, lo que le permitirá conocer actividades de Reclutamiento, Selección, Integración, Contratación, Entrenamiento y Remuneraciones en este contexto internacional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(116, 3, NULL, 'Taller de ética', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(117, 3, NULL, 'Fundamentos de investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(118, 3, NULL, 'Cálculo diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(119, 3, NULL, 'Química Inorgánica', NULL, 1, 'Relaciona las propiedades físicas y químicas de las sustancias con los conceptos fundamentales de la estructura atómica y la forma en que los átomos interactúan entre sí para la formación de compuestos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(120, 3, NULL, 'Programación', NULL, 1, 'Desarrolla programas mediante el uso de un lenguaje de programación como herramientas en la construcción de soluciones a problemas de ingeniería optimizando el tiempo de resolución.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(121, 3, NULL, 'Dibujo Asistido por Computadora', NULL, 1, 'Interpreta, elabora, y utiliza planos y diagramas de equipos y procesos de Ingeniería Química o Bioquímica apoyándose en el dibujo asistido por computadora.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(122, 3, NULL, 'Álgebra Lineal', NULL, 2, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(123, 3, NULL, 'Mecánica Clásica', NULL, 2, 'Conoce los conceptos de estática y dinámica para establecer y comprender las bases del planteamiento de problemas de ingeniería, verificándolo mediante su modelado matemático.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(124, 3, NULL, 'Cálculo Integral', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(125, 3, NULL, 'Química Organica I', NULL, 2, 'Identifica los compuestos orgánicos por su estructura, su nomenclatura y su estereoquímica para comprender y desarrollar los procesos químicos donde participan dichos compuestos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(126, 3, NULL, 'Química Analítica', NULL, 2, 'Aplica los distintos métodos empleados en el análisis químico cuantitativo, así como los fundamentos y aplicaciones del equilibro químico (ácido-base, redox, solubilidad y complejos) para llevar a cabo procedimientos analíticos de diversas sustancias.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(127, 3, NULL, 'Análisis de Datos Experimentales', NULL, 3, 'Aplica conceptos estadísticos, análisis de varianza, diseño de experimentos y control estadístico de datos para probar inferencias y tomar decisiones que permitan optimizar las variables de procesos en industrias químicas y de servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(128, 3, NULL, 'Electricidad, Magnetismo y Óptica', NULL, 3, 'Aplica los principios fundamentales y leyes de la óptica y electromagnetismo para resolver problemas relacionados con los fenómenos físicos del entorno.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(129, 3, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(130, 3, NULL, 'Química Orgánica II', NULL, 3, 'Reconoce a los compuestos orgánicos por su estructura y nombre para identificar sus propiedades y comprende los mecanismos de reacción más importantes que suceden en estos compuestos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(131, 3, NULL, 'Termodinámica', NULL, 3, 'Aplica los principios y leyes de la termodinámica, para evaluar la energía en un sistema utilizando tablas y diagramas, cuantificando los requerimientos térmicos en diferentes procesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(132, 3, NULL, 'Gestión de la Calidad', NULL, 3, 'Implementa y opera sistemas de gestión de calidad, ambiental y seguridad en la industria, para lograr la estandarización y sistematización de los procesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(133, 3, NULL, 'Métodos Numéricos', NULL, 4, 'Aplica algoritmos numéricos y software estadístico para agilizar la solución de problemas relacionados con la ingeniería de procesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(134, 3, NULL, 'Ecuaciones Diferenciales', NULL, 4, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(135, 3, NULL, 'Mecánismos de Transferencia', NULL, 4, 'Genera grupos adimensionales y/o correlaciones en sistemas con transferencia de cantidad de movimiento, calor y masa utilizando las técnicas o métodos de análisis dimensional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(136, 3, NULL, 'Ingeniería Ambiental', NULL, 4, 'Maneja la terminología de la Química orgánica e inorgánica, conoce e identifica los tipos de ecosistema y sus componentes, dimensiona los elementos y componentes del ambiente, completa y balancea reacciones químicas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(137, 3, NULL, 'Balance de Materia y Energía', NULL, 4, 'Identifica, analiza y establece balances de materia y energía en sistemas en estado estable para cuantificar el proceso de transformación de la materia y la energía asegurando el óptimo aprovechamiento de los recursos involucrados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(138, 3, NULL, 'Análisis Instrumental', NULL, 4, 'Aplica los métodos de instrumentación analítica para identificar y cuantificar los componentes de una muestra con el mínimo de error.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(139, 3, NULL, 'Desarrollo Sustentable', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(140, 3, NULL, 'Ingeniería de Costos', NULL, 5, 'Comprende y aplica los métodos más adecuados para estimar, proyectar y reducir costos de capital para mejorar la factibilidad o rentabilidad de un proyecto.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(141, 3, NULL, 'Balance de Momento, Calor y Masa', NULL, 5, 'Calcula el flujo de masa o volumétrico, el flujo de calor, densidad de flujo de masa, perfiles de velocidad, de temperatura y concentración en sistemas con transferencia de cantidad de movimiento, calor y masa utilizando los balances correspondientes.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(142, 3, NULL, 'Procesos de Separación I', NULL, 5, 'Selecciona equipo relacionado con el flujo de fluidos, agitación y mezclado, reducción de tamaño, transporte de sólidos y separaciones mecánicas e hidráulica con base a los criterios de selección respectivos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(143, 3, NULL, 'Fisicoquímica I', NULL, 5, 'Resuelve problemas de equilibrio de fases de sistemas puros y mezclas, evaluando propiedades termodinámicas con el empleo de las relaciones fundamentales de la termodinámica, relaciones de Maxwell y coeficientes de actividad y fugacidad.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(144, 3, NULL, 'Salud y Seguridad en el Trabajo', NULL, 5, 'Propone programas de Seguridad e higiene industrial para una empresa, de acuerdo a los riesgos a los que se encuentre el trabajador y cumpliendo con la normatividad nacional e internacional , con la ética profesional y convivencia armónica.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(145, 3, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(146, 3, NULL, 'Procesos de Separación II', NULL, 6, 'Diseña y selecciona equipos utilizados en plantas químicas tales como: intercambiadores de calor, evaporadores, cristalizadores, torres de enfriamiento y secadores aplicando los conceptos de transferencia de masa y calor, equilibrio de fases y procedimientos de cálculo necesarios para el dimensionamiento de ellos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(147, 3, NULL, 'Laboratorio Integral I', NULL, 6, 'Opera equipo y obtiene e interpreta datos en mecánica de fluidos, manejo de sólidos, separación hidráulica y transferencia de momentum, calor y masa en un ambiente controlado de laboratorio mediante la planeación y desarrollo de actividades prácticas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(148, 3, NULL, 'Fisicoquímica II', NULL, 6, 'Realiza un balance termodinámico para determinar la constante de equilibrio químico y analiza el efecto de la presión y la temperatura en la composición de equilibrio y las condiciones óptimas de operación de un sistema con reacción química reversible.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(149, 3, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(150, 3, NULL, 'Procesos de Separación III', NULL, 7, 'Diseña y selecciona equipos utilizados en plantas químicas, tales como: destilación, absorción, extracción y adsorción de mezclas binarias y multicomponentes integrando las aplicaciones de transferencia de calor, transferencia de masa y equilibrio de fases en los procedimientos de cálculo que se establecen para la integración en los procesos químicos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(151, 3, NULL, 'Sínstesis y Óptimización de Procesos', NULL, 7, 'Adapta, selecciona, desarrolla, optimiza y evalúa económicamente un proceso o tecnología nueva, elaborando un informe para tomar decisiones, considerando la factibilidad ambiental.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(152, 3, NULL, 'Reactores Químicos', NULL, 7, 'Diseña reactores continuos y discontinuos, isotérmicos y no isotérmicos para la obtención de productos de la industria química y combina diferentes tipos de reactores para mejorar la eficiencia de reacción.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(153, 3, NULL, 'Laboratorio Integral II', NULL, 7, 'Planea y desarrolla experimentos para la obtención de datos que permitan la comprobación de las teorías y leyes de la Fisicoquímica I, II y de Reactores Químicos, para comprobar los fenómenos involucrados, en un ambiente controlado de laboratorio.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(154, 3, NULL, 'Taller de Administración General', NULL, 8, 'Conoce las etapas del proceso administrativo dentro de las empresas industriales y de servicios con el propósito de administrar adecuadamente una organización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(155, 3, NULL, 'Laboratorio Integral III', NULL, 8, 'Desarrolla la capacidad de obtención de datos experimentales y su interpretación de acuerdo con los conceptos de procesos de separación en un ambiente controlado de laboratorio.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(156, 3, NULL, 'Instrumentación y Control', NULL, 8, 'Selecciona y aplica la instrumentación para el control de procesos químicos o bioquímicos a partir de los requerimientos óptimos de operación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(157, 3, NULL, 'Ingeniería de Proyectos', NULL, 8, 'Desarrolla y evalúa un proyecto técnico considerando el desarrollo sustentable.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(158, 3, NULL, 'Simulación de Procesos', NULL, 8, 'Simula procesos químicos utilizando software comercial.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(159, 3, 5, 'Optimización y Costos de Procesos', NULL, 8, 'Optimizar procesos químicos y elaborar reportes de los costos involucrados mediante el uso de simuladores comerciales de procesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(160, 3, 5, 'Tubería e Instrumentación', NULL, 7, 'Diseñar el sistema de tuberías de un proceso químico, su instrumentación y control requerido utilizando normas nacionales e internacionales vigentes.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(161, 3, 5, 'Simulación dinámica', NULL, 7, 'Modelar equipos de procesos utilizados de la Industria Química en estado dinámico utilizando simuladores comerciales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(162, 3, 5, 'Seguridad y Riesgo de los Procesos', NULL, 7, 'Proporcionar los conocimientos necesarios para llevar a cabo los mecanismos del Análisis de Riesgo a través de la Identificación del Peligro y de las situaciones peligrosas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(163, 3, 5, 'Ingeniería de Servicios de Planta', NULL, 7, 'Especificar los componentes que conforman los diferentes circuitos de servicios auxiliares requeridos en plantas industriales tales como agua, vapor, aire y combustibles.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(164, 3, 6, 'Sistemas de Calidad e Inocuidad Alimentaria', NULL, 7, 'Identificar y desarrollar sistemas de inocuidad y de Calidad alimentaria, en base a la normatividad vigente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(165, 3, 6, 'Química de Alimentos', NULL, 7, 'Relacionar las características bioquímicas y de funcionalidad química del agua, proteínas y enzimas, carbohidratos, lípidos, vitaminas y minerales con su influencia sobre los alimentos y los procesos de transformación en los alimentos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(166, 3, 6, 'Innovaciones Tecnológicas en la Industria Alimentaria', NULL, 7, 'Desarrollar mecanismos para la producción de nuevos alimentos funcionalizados de origen animal o vegetal tomando en consideración las propiedades fisicoquímicas, sensoriales, así como las legislaciones vigentes de este tipo de productos alimenticios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(167, 3, 6, 'Ingeniería de Alimentos', NULL, 7, 'Conocer, comprender y dominar las características y aplicación de las operaciones unitarias y los procesos de conservación, embalaje y empacado más comunes en la industria de alimentos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(168, 3, 6, 'Microbiología y la Ingeniería  Alimentaria', NULL, 8, 'Analizar y valorar la importancia de la microbiología en los alimentos, considerando su identificación y cuantificación para asegurar la inocuidad de los alimentos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(169, 3, 7, 'Ingeniería de Procesos Ambientales', NULL, 8, 'Conoce los mecanismos de potabilización del agua, del tratamiento de aguas residuales, residuos sólidos y peligrosos y de emisiones a la atmósfer', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(170, 3, 7, 'Seguridad Laboral', NULL, 8, 'Proporcionar los conocimientos necesarios para la Gestión y el monitoreo la seguridad laboral de los trabajadores de la empresa.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30');
INSERT INTO `tbl_materia` (`materiaId`, `carreraId`, `especialidadId`, `nombre`, `area`, `semestre`, `competencia`, `urlVideo`, `urlPrograma`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(171, 3, 7, 'Seguridad y Riesgo de los Proceso', NULL, 8, 'Proporcionar los conocimientos necesarios para la administración de Riesgos en las empresas mediante el conocimiento del Sistema Globalmente Armonizado, los mecanismos de Identificación, Cuantificación y Jerarquización de Riesgos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(172, 3, 7, 'Gestión Integral de Residuos', NULL, 8, 'Identificar los diferentes aspectos de la problemática ambiental por residuos, clasificar las fuentes contaminantes, conocer los conceptos básicos para identificar, y caracterizar los residuos,saber los principios de operación de los diferentes tratamientos aplicados para su prevención y control.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(173, 3, 7, 'Gestión Ambiental', NULL, 8, 'Proporcionar los conocimientos necesarios para comprender los sistemas de gestión, la política ambiental, administrativa y jurídica que se aplica en materia ambiental en el país, para la protección del ambiente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(174, 4, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(175, 4, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(176, 4, NULL, 'Química', NULL, 1, 'Nombra adecuadamente a los elementos y compuestos químicos de importancia agronómica e industriales usando correctamente la tabla periódica para reafirmar conceptos básicos inorgánicos y orgánicos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(177, 4, NULL, 'Taller de Ética', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(178, 4, NULL, 'Comportamiento Organizacional', NULL, 1, 'Conoce los elementos que con las características de un individuo, del grupo y de las organizaciones y aplica los conocimientos para proponer estrategias en la solución de conflictos y propiciar el desarrollo de organizaciones sanas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(179, 4, NULL, 'Dibujo Asistido por Computadora', NULL, 1, 'Interpreta, elabora, y utiliza planos y diagramas de equipos y procesos de Ingeniería Química o Bioquímica apoyándose en el dibujo asistido por computadora. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(180, 4, NULL, 'Administración y Legislación de Empresas', NULL, 2, 'Aplica los conceptos del proceso administrativo para proveer una visión global de las áreas funcionales de una empresa con sustentabilidad.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(181, 4, NULL, 'Cálculo Integral', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(182, 4, NULL, 'Química Orgánica I', NULL, 2, 'Identifica y analiza las propiedades físicas y químicas de los compuestos orgánicos para comprender su relación con los distintos tipos de reacciones que generan. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(183, 4, NULL, 'Biología', NULL, 2, 'Comprende y describe la estructura y el funcionamiento de los sistemas biológicos, desde el nivel de organización de la célula hasta la transmisión de la información genética.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(184, 4, NULL, 'Química Analítica', NULL, 2, 'Comprender, aplicar y relacionar los fundamentos, métodos volumétricos, electros analíticos y gravimétricos de química analítica utilizados para la evaluación de materiales, intermediarios y productos de procesos industriales y recursos bióticos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(185, 4, NULL, 'Álgebra Lineal', NULL, 2, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(186, 4, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(187, 4, NULL, 'Ecuaciones Diferenciales', NULL, 3, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(188, 4, NULL, 'Química Orgánica II', NULL, 3, 'Identifica, compara y analiza las características estructurales, y las propiedades de glúcidos y proteínas para tener una base fundamental de la diversidad de grupos funcionales para comprender el metabolismo celular.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(189, 4, NULL, 'Termonidámica', NULL, 3, 'Aplica los principios y leyes de la termodinámica, para evaluar la energía en un sistema utilizando tablas y diagramas, cuantificando los requerimientos térmicos en diferentes procesos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(190, 4, NULL, 'Física', NULL, 3, 'Comprende las leyes que gobiernan los diferentes fenómenos físicos en los que intervienen fuerzas, movimiento, trabajo y energía para aplicar los principios fundamentales de la mecánica clásica en el análisis y la solución de problemas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(191, 4, NULL, 'Estadística', NULL, 3, 'Resuelve problemas donde se involucren eventos con incertidumbre, analiza procesos estadísticos para toma de decisiones mediante pruebas de hipótesis y un diseño de experimentos aplicado al tipo de proceso aplicando los modelos analíticos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(192, 4, NULL, 'Programación y Métodos Numéricos', NULL, 4, 'Aplica los métodos numéricos para la solución de problemas de ingeniería, utilizando la programación como una herramienta que facilita la resolución de problemas complejos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(193, 4, NULL, 'Electromagnetismo', NULL, 4, 'Aplica los conceptos básicos de las leyes y principios fundamentales del Electromagnetismo para la solución de problemas reales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(194, 4, NULL, 'Bioquímica', NULL, 4, 'Analiza la estructura, clasificación, función y propiedades de las biomoléculas y comprende las principales rutas del metabolismo celular para su aplicación en el aprovechamiento de recursos bióticos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(195, 4, NULL, 'Balance de Materia y Energía ', NULL, 4, 'Identifica, analiza y establece balances de materia y energía en sistemas en estado estable para cuantificar el proceso de transformación de la materia y la energía.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(196, 4, NULL, 'Analisís Instrumental', NULL, 4, 'Identifica, comprende, y relaciona los principios de la Química analítica e instrumental para la aplicación y solución de problemas en el análisis químico.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(197, 4, NULL, 'Aseguramiento de la calidad', NULL, 4, 'Aplica e integra las filosofías, las técnicas de aseguramiento y administración de la calidad y las normas nacionales e internacionales para la implementación de sistemas de aseguramiento de calidad total.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(198, 4, NULL, 'Ingeniería Económica', NULL, 5, 'Determina los costos fijos, variables y el costo total unitario de un producto que se genera en un proceso de manufactura para evaluar la factibilidad de venta de este producto. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(199, 4, NULL, 'Fenómenos de Transporte I', NULL, 5, 'Deduce y resuelve los balances microscópicos de cantidad de movimiento para efectuar el diseño termodinámico de sistemas de transporte de fluidos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(200, 4, NULL, 'Bioquímica del Nitrógeno y Regulación Genética', NULL, 5, 'Comprende, identifica, analiza y relaciona al metabolismo del nitrógeno y ácidos nucleicos en su composición, función y control.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(201, 4, NULL, 'Fisicoquímica', NULL, 5, 'Aplica los conocimientos físico-químicos que rigen a los diversos equilibrios de fases y fenómenos superficiales que permiten el diseño de procesos de transformación de los recursos naturales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(202, 4, NULL, 'Desarrollo Sustentable', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(203, 4, NULL, 'Instrumentación y Control', NULL, 5, 'Selecciona y aplica la instrumentación para el control de procesos químicos o bioquímicos a partir de los requerimientos óptimos de operación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(204, 4, NULL, 'Operaciones Unitarias I', NULL, 6, 'Aplica los conceptos, principios, métodos y criterios para el diseño, selección, operación y adaptación de equipos industriales utilizados en los procesos de separación mecánica, reducción de tamaño, agitación y mezclado y en el transporte de sólidos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(205, 4, NULL, 'Fenómenos de Transporte II', NULL, 6, 'Diseña, selecciona, simula y escala equipos y procesos en los que se aprovechen de manera sustentable los recursos bióticos.  ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(206, 4, NULL, 'Microbiología', NULL, 6, 'Aplica los conocimientos relacionados con la organización estructural de los microorganismos, identificando sus características químicas, físicas y metabólicas para su clasificación y manejo, resaltando su importancia en los ecosistemas y la industria.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(207, 4, NULL, 'Higiene y Seguridad', NULL, 6, 'Elabora programas y procedimientos de seguridad e higiene industrial que serán usados en la operación y supervisión de procesos industriales para cumplir con la legislación y normas gubernamentales y propias de la empresa, considerando el contexto social, ambiental y económico.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(208, 4, NULL, 'Cinética Química y Biológica', NULL, 6, 'Aplica los principios de la cinética química y de la catálisis química y enzimática, de la cinética de crecimiento microbiano, de consumo de sustrato y de formación de producto. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(209, 4, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(210, 4, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(211, 4, NULL, 'Operaciones Unitarias III', NULL, 7, 'Diseña, selecciona, opera, adapta e investiga científica y tecnológicamente equipos en procesos industriales que involucren las operaciones unitarias de transferencia de masa y energía de humidificación, secado, extracción y destilación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(212, 4, NULL, 'Operaciones Unitarias II', NULL, 7, 'Diseña y selecciona equipos que involucran la transferencia de masa en los procesos de estudio de esta materia, es decir, absorción y adsorción. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(213, 4, NULL, 'Ingeniería de Biorreactores', NULL, 7, 'Diseña, selecciona, adapta y opera los biorreactores industriales y equipos auxiliares utilizados en los procesos de producción celular o tisular y enzimática, aplicando los conceptos, principios, métodos y criterios técnicos científicos del área.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(214, 4, NULL, 'Ingeniería de Proyectos', NULL, 8, 'Diseña proyectos para la instalación de plantas industriales de procesos de transformación que satisfagan las necesidades sociales en un marco sustentable; aplicando las diversas competencias de la Ingeniería Bioquímica adquiridas a lo largo de su formación profesional', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(215, 4, NULL, 'Ingeniería y Gestión Ambiental', NULL, 8, 'Aplica los fundamentos para la evaluación y selección de los tratamientos adecuados para la prevención y control de la contaminación ambiental de agua, aire y suelo y aplica los métodos para la evaluación del impacto ambiental, considerando la legislación vigente correspondiente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(216, 4, NULL, 'Ingeniería de Procesos', NULL, 8, 'Modela, simula y optimiza equipos y procesos, para que, interactuando de manera interdisciplinaria y multidisciplinaria, desarrolle, transfiera y adapte tecnologías apropiadas para el aprovechamiento de los recursos bióticos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(217, 4, NULL, 'Formulación y Evaluación de Proyectos', NULL, 9, 'Definir la factibilidad y sustentabilidad de proyectos, mediante la integración de conocimientos de las áreas de producción, diseño, administración, mercadotecnia y finanzas; con el fin de emprender y desarrollar proyectos productivos aplicables a la industria. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(218, 4, 8, 'Artes y humanidades para ingeniería ', NULL, 7, 'Conoce, reconoce e identifica las 7 bellas artes mayores y 2 menores por medio de la presentación de dichas artes alrededor del mundo y sus principales expositores.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(219, 4, 8, 'Ingeniería y Sociedad ', NULL, 7, 'Reconoce y comprende la relación entre pobreza y modos-políticas socio-económicos, extendiendo el análisis hacia el objetivo No. 1 de la Agenda 2030 para el Desarrollo Sostenible, de la Organización de las Naciones Unidas ONU.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(220, 4, 8, 'Simulación de procesos ', NULL, 7, 'Al finalizar este curso el estudiante será capaz de aplicar la simulación de procesos y con ello dar solución a problemas reales a través del desarrollo de programas para simular un equipo de proceso.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(221, 4, 8, 'Ingeniería de Servicios Auxiliares ', NULL, 7, 'El alumno deberá ser capaz de diseñar su propia planta e identificar todo lo necesario para la construcción y operación de la mismo.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(222, 4, 8, 'Diseño de Bioprocesos ', NULL, 7, 'Desarrolla la capacidad de una visión holística e integrada de un diseño de proceso, desde la biología a través del bioproceso y finalmente a aspectos vinculados con los negocios” y con el desarrollo sostenible.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(223, 4, 8, 'Innovación en procesos de tecnología de alimentos ', NULL, 7, 'Reconocer, identificar y aplicar los principios de la Fisicoquímica relacionados con las innovaciones en la Bioingeniería de los alimentos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(224, 4, 8, 'Taller de ingeniería de alimentos ', NULL, 7, 'Conocer y aplicar los conocimientos históricos e innovadores de la deshidratación y secado en alimentos conservando sus propiedades funcionales y organolépticas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(225, 4, 9, 'Artes y humanidades para ingeniería ', NULL, 8, 'Conoce, reconoce e identifica las 7 bellas artes mayores y 2 menores por medio de la presentación de dichas artes alrededor del mundo y sus principales expositores.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(226, 4, 9, 'Ingeniería y Sociedad ', NULL, 8, 'Reconoce y comprende la relación entre pobreza y modos-políticas socio-económicos, extendiendo el análisis hacia el objetivo No. 1 de la Agenda 2030 para el Desarrollo Sostenible, de la Organización de las Naciones Unidas ONU.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(227, 4, 9, 'Simulación de procesos ', NULL, 8, 'Al finalizar este curso el estudiante será capaz de aplicar la simulación de procesos y con ello dar solución a problemas reales a través del desarrollo de programas para simular un equipo de proceso.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(228, 4, 9, 'Ingeniería de Servicios Auxiliares ', NULL, 8, 'El alumno deberá ser capaz de diseñar su propia planta e identificar todo lo necesario para la construcción y operación de la misma.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(229, 4, 9, 'Diseño de Bioprocesos ', NULL, 8, 'Desarrolla la capacidad de una visión holística e integrada de un diseño de proceso, desde la biología a través del bioproceso y finalmente a aspectos vinculados con los negocios” y con el desarrollo sostenible.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(230, 4, 9, 'Taller de bioenergías ', NULL, 8, 'Reconoce y comprende la relación entre los flujos de energía de la biósfera con los diseños en Ingeniería por medio de la presentación de un estudio de caso en Seminario.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(231, 4, 9, 'Ingeniería de diseño de sistemas ambientales ', NULL, 8, 'Identifica, reconoce y comprende los procesos de remediación, identifica, conoce y aplica los sistemas de control integral de la calidad del aire, identifica y diseña los reactores de sustrato sólido, distingue, selecciona, caracteriza y diseña la gestión de agua pertinente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(232, 4, 10, 'Artes y humanidades para ingeniería ', NULL, 9, 'Conoce, reconoce e identifica las 7 bellas artes mayores y 2 menores por medio de la presentación de dichas artes alrededor del mundo y sus principales expositores.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(233, 4, 10, 'Ingeniería y Sociedad ', NULL, 9, 'Reconoce y comprende la relación entre pobreza y modos-políticas socio-económicos, extendiendo el análisis hacia el objetivo No. 1 de la Agenda 2030 para el Desarrollo Sostenible, de la Organización de las Naciones Unidas ONU.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(234, 4, 10, 'Simulación de procesos ', NULL, 9, 'Al finalizar este curso el estudiante será capaz de aplicar la simulación de procesos y con ello dar solución a problemas reales a través del desarrollo de programas para simular un equipo de proceso.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(235, 4, 10, 'Ingeniería de Servicios Auxiliares ', NULL, 9, 'El alumno deberá ser capaz de diseñar su propia planta e identificar todo lo necesario para la construcción y operación de la misma.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(236, 4, 10, 'Diseño de Bioprocesos ', NULL, 9, 'Desarrolla la capacidad de una visión holística e integrada de un diseño de proceso, desde la biología a través del bioproceso y finalmente a aspectos vinculados con los negocios” y con el desarrollo sostenible.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(237, 4, 10, 'Biocatalisis en la industria farmacéutica ', NULL, 9, 'Reconoce y comprende la integración de conocimientos de ciencias básicas y de bioingeniería en la aplicación de la biocatálisis en la industria química, y en un entorno específico identifica sus ventajas de especificidad, reducción de etapas y de contaminación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(238, 4, 10, 'Proteínas terapéuticas ', NULL, 9, 'Distingue los diversos tipos y campos de aplicación de las proteínas terapéuticas y su impacto biotecnológico.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(239, 6, NULL, 'Taller de Ética', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(240, 6, NULL, 'Fundamentos de Investigación', NULL, 1, 'Comprender y aplicar los procesos en las estructuras y funciones fundamentales de las organizaciones para contribuir sustantivamente con los procesos de planeación.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(241, 6, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(242, 6, NULL, 'Química', NULL, 1, 'Comprende la estructura de la materia y su relación con las propiedades físicas y químicas, así como a las técnicas requeridas para la construcción de equipos o sistemas electrónicos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(243, 6, NULL, 'Metrología y normalización ', NULL, 1, 'Utiliza adecuadamente los diferentes instrumentos y/o equipos de medición para la lectura de los diferentes parámetros mecánicos y eléctricos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(244, 6, NULL, 'Dibujo Asistido por Computadora', NULL, 1, 'Conoce e interpreta las normas utilizadas para el correcto desarrollo de dibujos, así como las herramientas utilizadas en la elaboración de dibujos bidimensionales y tridimensionales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(245, 6, NULL, 'Programación Básica', NULL, 2, 'Soluciona problemas susceptibles de ser computarizados a través del manejo de técnicas estructuradas de diseño y formulación de algoritmos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(246, 6, NULL, 'Estadística y Control de Calidad', NULL, 2, 'Aplica los métodos estadísticos en el diseño, interpretación e implantación de sistemas de control de calidad.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(247, 6, NULL, 'Ciencia e Ingeniería de materiales ', NULL, 2, 'Comprende las propiedades y el comportamiento de diferentes materiales utilizados en ingeniería para poder seleccionar el material más adecuado de acuerdo a su \naplicación. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(248, 6, NULL, 'Administración y Contabilidad', NULL, 2, 'Aplica los conceptos de administración y contabilidad en el desempeño profesional \npara la toma de decisiones. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(249, 6, NULL, 'Cálculo Integral ', NULL, 2, 'Resolver problemas de aplicación e interpretar las soluciones utilizando matrices y sistemas de ecuaciones lineales para las diferentes áreas de la ingeniería. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(250, 6, NULL, 'Algebra Lineal', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(251, 6, NULL, 'Procesos de Fabricación', NULL, 3, 'Selecciona los procesos de fabricación y ensamble más apropiado de acuerdo al producto y material de construcción, para obtener la funcionalidad deseada en el producto.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(252, 6, NULL, 'Estática', NULL, 3, 'Analiza y diseña estructuras resistentes y seguras que satisfagan las necesidades del hombre aplicando ecuaciones de equilibrio estático. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(253, 6, NULL, 'Desarrollo Sustentable', NULL, 3, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(254, 6, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(255, 6, NULL, 'Métodos Numéricos', NULL, 3, 'Utiliza algoritmos numéricos para obtener soluciones aproximadas de modelos matemáticos de interés en física e ingeniería que no se pueden resolver por métodos analíticos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(256, 6, NULL, 'Electromagnetismo', NULL, 3, 'Emplea adecuadamente los conceptos básicos de las leyes y principios fundamentales del Electromagnetismo, desarrollando habilidades para la resolución de problemas reales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(257, 6, NULL, 'Mecánica de Materiales', NULL, 4, 'Identificar los efectos de los elementos mecánicos al ser sometidos a cargas de torsión, flexión, axial y combinados', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(258, 6, NULL, 'Fundamentos de Termodinámica', NULL, 4, 'Aplica los conceptos y leyes termodinámicas para eficientar procesos en los que se presentan fenómenos de transformación de\nenergía en sistemas mecatrónicos, que permitan reducir consumos de energía. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(259, 6, NULL, 'Dinámica', NULL, 4, 'Conoce los principios que rigen el comportamiento de partículas y cuerpos rígidos en cuanto a su posición, velocidad y aceleración así como las causas y efectos que \nlo producen, para poder aplicarlos en el  análisis a sistemas mecatrónicos \r', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(260, 6, NULL, 'Análisis de circuitos eléctricos ', NULL, 4, 'Analiza, diseña, simula e implementa circuitos eléctricos de corriente directa y alterna básicos con elementos pasivos y activos lineales para su aplicación en sistemas eléctricos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(261, 6, NULL, 'Ecuaciones Diferenciales', NULL, 4, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(262, 6, NULL, 'Taller de Investigación I', NULL, 5, 'Elabora un protocolo de investigación con el que se propongan soluciones científico - tecnológicas a problemáticas relacionadas con el contexto de la ingeniería', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(263, 6, NULL, 'Electrónica Analógica ', NULL, 5, 'Analiza, simula y aplica los dispositivos semiconductores básicos en el diseño \nde circuitos electrónicos utilizados en los sistemas mecatrónicos. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(264, 6, NULL, 'Análisis de Fluidos', NULL, 5, 'Aplica los principios de la mecánica de fluidos en sistemas Mecatrónicos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(265, 6, NULL, 'Mecanismos', NULL, 5, 'Aplica los conocimientos necesarios para el diseño cinemático de sistemas mecánicos, formulando modelos matemáticos y prototipos mediante la utilización de métodos gráficos, analíticos y computacionales. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(266, 6, NULL, 'Maquinas eléctricas', NULL, 5, 'Conoce y aplica los principios de funcionamiento de las máquinas eléctricas estáticas y dinámicas. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(267, 6, NULL, 'Taller de Investigación II', NULL, 6, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(268, 6, NULL, 'Electrónica Digital', NULL, 6, 'Conoce, diseña y aplica los circuitos digitales para el control de los diferentes sistemas\nmecatrónicos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(269, 6, NULL, 'Electrónica de Potencia Aplicada', NULL, 6, 'Diseñar circuitos electrónicos de potencia y  convertidores de energía, para el arranque, control y protección de motores eléctricos de corriente alterna y directa de uso industrial con dispositivos electromagnéticos y de estado sólido. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(270, 6, NULL, 'Diseño de elementos mecánicos ', NULL, 6, 'Diseña elementos mecánicos aplicados en sistemas mecatrónicos, analizando \ncondiciones de falla bajo diversas solicitaciones de carga estática y dinámica. Así \ncomo, seleccionar y optimizar elementos mecánicos para transmisión.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(271, 6, NULL, 'Vibraciones Mecánicas ', NULL, 6, 'Modela sistemas mecánicos oscilatorios para determinar sus características y comportamiento dinámico y aplicar técnicas de: balanceo dinámico de maquinaria, edición, uso de instrumentos, software para el análisis de vibraciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(272, 6, NULL, 'Instrumentación', NULL, 6, 'Desarrolla las competencias necesarias para seleccionar, aplicar, calibrar, operar los instrumentos de medición empleados en los procesos industriales, así mismo las habilidades para la sintonización de los controladores PID.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(273, 6, NULL, 'Mantenimiento', NULL, 7, 'Analizar, desarrollar y ejecutar planes de mantenimiento', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(274, 6, NULL, 'Circuitos Hidráulicos y Neumáticos.', NULL, 7, 'Diseña y analiza circuitos neumáticos e hidráulicos, utilizando metodologías \nespecializadas, conecta los diferentes elementos utilizados en los circuitos \nhidráulicos y neumáticos utilizando los diferentes elementos de trabajo y control \nneumáticos e hidráulicos así como interpretar y utilizar simbología neumática e \nhidráulica.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(275, 6, NULL, 'Microcontroladores', NULL, 7, 'Programa y aplica sistemas basados en microcontroladores y sus interfaces en la \nautomatización y control industrial', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(276, 6, NULL, 'Dinámica de Sistemas', NULL, 7, 'Modela, simula y analiza sistemas dinámicos continuos y discretos de distinta \nnaturaleza, entre los que se incluyen sistemas híbridos y de procesos, mediante \ndiferentes métodos de representación para el análisis de procesos o sistemas físicos \npresentes en la naturaleza.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(277, 6, NULL, 'Programación Avanzada', NULL, 7, 'Aprende técnicas propias de la ingeniería en sistemas computacionales, aplicándolas al desarrollo de sistemas mecatrónicos automáticos, controlados por computadora, a través de sus interfaces electrónicas, incluyendo el desarrollo de interfaces gráficas para interacción hombre-máquina', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(278, 6, NULL, 'Manufactura avanzada', NULL, 7, 'Diseña y fabrica piezas y equipos mecatrónicos utilizando sistemas y tecnologías \nCAD-CAM', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(279, 6, NULL, 'Formulación y Evaluación de \nProyectos', NULL, 8, 'Desarrolla, en tiempo y forma, un proyecto de inversión, técnica, económica y \nfinancieramente factible, considerando su impacto ambiental y social.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(280, 6, NULL, 'Control', NULL, 8, 'Adquiere los conocimientos necesarios para evaluar, analizar, comprender, construir, \nsintonizar, controlar y mantener sistemas dinámicos invariantes en el tiempo para \ndiferentes procesos industriales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(281, 6, NULL, 'Controladores Lógicos Programables.', NULL, 8, 'Conoce, analiza y aplica lenguajes de programación de controladores lógicos \nprogramables para automatizar, mantener y administrar equipos y sistemas \nmecatrónicos', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(282, 6, NULL, 'Robótica', NULL, 9, 'Adquiere los conocimientos necesarios para proponer soluciones en la automatización \nde procesos de manufactura industriales mediante la selección y aplicación de \nmanipuladores robóticos, para asegurar la calidad eficiencia y rentabilidad de dichos \nprocesos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(283, 6, 13, 'Análisis y Síntesis de Mecanismos', NULL, 9, 'Analizará y diseñará cinemáticamente mecanismos planos y espaciales que resuelvan una problemática de transmisión o transformación de movimiento. Realizará el análisis de fuerzas de diferentes mecanismos planos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(284, 6, 13, 'Simulación', NULL, 9, 'Adquirirá los conocimientos y habilidades que le permitan aplicar técnicas de simulación numérica modernas a una amplia gama de fenómenos físicos y sistemas en Ingeniería Mecatrónica.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(285, 6, 13, 'Optoelectrónica', NULL, 9, 'Conocerá los conceptos y teorías que explican la operación de los dispositivos optoelectrónicos para el diseño y construcción de circuitos de aislamiento, acondicionamiento de señales y comunicación electrónica.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(286, 6, 13, 'Introducción a la robótica móvil', NULL, 9, 'Realizará el análisis, diseño e implementación de prototipos robóticos móviles para resolver problemas relacionados con la navegación, identififación de patrones y mapeo mediante el uso de arquitecturas de secuencias de control de la información en un contexto de exploración de ambientes en interiores y exteriores.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(287, 6, 13, 'Diseño Mecatrónico', NULL, 9, 'Desarrollará prototipos mecatrónicos para resolver problemas en diversos contextos utilizando de manera integral los conocimientos adquiridos previamente e incorporando buenas prácticas en su diseño e implementación así como diferentes tecnologías, plataformas o dispositivos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(335, 7, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(336, 7, NULL, 'Taller de Ética ', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(337, 7, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(338, 7, NULL, 'Taller de Herramientas Intelectuales', NULL, 1, 'Aplica las herramientas intelectuales para fortalecer en el estudiante el aprender a aprender, aprender a hacer, aprender a ser y aprender a convivir a lo largo de su vida estudiantil, profesional y personal. ', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(339, 7, NULL, 'Química', NULL, 1, 'Adquiere conocimientos básicos sobre la estructura de los compuestos químicos orgánicos e inorgánicos, así como su nomenclatura, propiedades físicas, reactividad, energía y equilibrio, considerando los impactos económico y al medio ambiente, para tomar decisiones que permitan seleccionar materiales industriales, así como asegurar las condiciones de sustentabilidad, higiene y seguridad industrial y la responsabilidad social.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(340, 7, NULL, 'Dibujo Industrial ', NULL, 1, 'Adquirir conocimientos generales para elaborar, interpretar y supervisar planos de diferentes ramas de la ingeniería y especificaciones de piezas industriales, equipo especializado en los manuales y catálogo de los fabricantes, apoyándose en el software de dibujo asistido por computadora', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(341, 7, NULL, 'Electricidad y Electrónica Industrial', NULL, 2, 'Aplica los principios de la electricidad y electrónica industrial para integrar sistemas productivos y establecer programas adecuados de mantenimiento industrial.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(342, 7, NULL, 'Propiedad de los materiales', NULL, 2, 'Identifica y aplica los materiales adecuados en los diferentes procesos industriales de acuerdo a sus características y propiedades para obtener productos de calidad, bajo costo y protegiendo al ambiente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(343, 7, NULL, 'Cálculo Integral', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(344, 7, NULL, 'Probabilidad y Estadística', NULL, 2, 'Aplica los conceptos de la teoría de la probabilidad y estadística para organizar, clasificar, analizar e interpretar datos para la toma decisiones en aplicaciones de industrial y logística.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(345, 7, NULL, 'Análisis de la Realidad Nacional', NULL, 2, 'Interpretar la realidad nacional, a través de los indicadores económicos, sociales y sustentables, que le permitan comprender la situación actual del país y sea capaz de definir propuestas emprendedoras y de mejora en las industrias, con apego a la normatividad económica, social y ambiental de sustentabilidad de los recursos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(346, 7, NULL, 'Taller de Liderazgo', NULL, 2, 'Desarrolla las habilidades que le permitan guiar grupos de personas en el diseño, producción y mejora de productos y servicios, cumpliendo con los estándares de calidad, eficiencia, ambientales, económicos y sociales, en los sistemas organizacionales establecidos y en la creación de empresas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(347, 7, NULL, 'Metrología y Normalización', NULL, 3, 'Maneja desde un punto de vista de la metrología y normalización, los métodos y sistemas de medición.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(348, 7, NULL, 'Álgebra Lineal', NULL, 3, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(349, 7, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(350, 7, NULL, 'Economía', NULL, 3, 'Comprende, evalúa y analiza alternativas micro y macroeconómicas relacionadas con el consumo y la producción a través de la aplicación de los conceptos, metodología e instrumentos de la teoría económica para el mejoramiento de la productividad.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(351, 7, NULL, 'Estadística Inferencial I', NULL, 3, 'Emplea los métodos de muestreo adecuados para la obtención de la muestra experimental con la finalidad de realizar inferencias sobre la población y el desarrollo de pruebas estadísticas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(352, 7, NULL, 'Estudio del trabajo I', NULL, 3, 'Identifica, evalúa, diseña y genera propuestas de mejora en los procesos de producción, estaciones de trabajo, distribución de planta, genera métodos de trabajo y establece tiempos estándar con cronómetro para elevar la productividad en las empresas de su entorno.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(353, 7, NULL, 'Procesos de fabricación', NULL, 4, 'Analiza los diferentes procesos físicos para la obtención, tratamientos térmicos y cambios de forma de materiales ferrosos, cerámicos y poliméricos para definir los más apropiados a utilizar en la industria.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(354, 7, NULL, 'Física', NULL, 4, 'Aplica las leyes y principios fundamentales de la mecánica en la solución de problemas de partículas y cuerpos rígidos sujetos a la acción de fuerzas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(355, 7, NULL, 'Algoritmos y Lenguajes de Programación', NULL, 4, 'Resuelve problemas de programación mediante la aplicación de herramientas computacionales para el desarrollo de proyectos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(356, 7, NULL, 'Investigación de Operaciones I', NULL, 4, 'Formula y plantea modelos matemáticos lineales en situaciones reales del entorno, interpreta las soluciones obtenidas a través de los diferentes criterios de optimización y las expresa en un lenguaje accesible.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(357, 7, NULL, 'Estadística Inferencial II', NULL, 4, 'Identifica fuentes de variación aplicando el modelo estadístico más adecuado para planear, ejecutar y desarrollar experimentación orientado a la mejora de procesos logísticos, industriales, comerciales y de servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(358, 7, NULL, 'Estudio del trabajo II', NULL, 4, 'Diseña, mejora e integra sistemas productivos de bienes y servicios aplicando tecnologías para su optimización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(359, 7, NULL, 'Higiene y Seguridad Industrial', NULL, 4, 'El estudiante gestiona sistemas de seguridad e higiene y salud ocupacional de manera sustentable, en sistemas productivos de bienes y servicios cumpliendo con los lineamientos legales aplicables.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(360, 7, NULL, 'Administración de Proyectos', NULL, 5, 'Planear y organizar actividades; así como integrar, dirigir y controlar recursos en tiempo-costo aplicando herramientas de la gestión de proyectos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(361, 7, NULL, 'Gestión de Costos', NULL, 5, 'Calcula los diferentes tipos de costos de un proyecto, aplicando los principios y conceptos de la Gestión de Costos, para la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(362, 7, NULL, 'Administración de las Operaciones I', NULL, 5, 'Utiliza técnicas de pronósticos y de planeación de la capacidad para tomar decisiones en la administración de sistemas de producción de bienes y servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(363, 7, NULL, 'Investigación de Operaciones II', NULL, 5, 'Formula y resuelve modelos matemáticos aplicando técnicas deterministas y probabilistas a situaciones reales o teóricas del entorno, interpretando las soluciones obtenidas expresadas en un lenguaje accesible al usuario como apoyo a la toma de decisiones.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(364, 7, NULL, 'Control Estadístico de la Calidad', NULL, 5, 'Diseñar e Implantar el Control estadístico de Calidad en procesos para alcanzar la mejora continua', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(365, 7, NULL, 'Ergonomía', NULL, 5, 'Diseña áreas de trabajo tomando en cuenta la antropometría, la biomecánica, la ergonomía ocupacional y las condiciones ambientales para el aumento de la productividad del sector manufacturero y de servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(366, 7, NULL, 'Desarrollo Sustentable', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le\npermitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(367, 7, NULL, 'Taller de investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico -\ntecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(368, 7, NULL, 'Ingeniería Económica', NULL, 6, 'Aplica las herramientas de ingeniería económica para establecer estrategias que apoyen la planeación, control y toma de decisiones para optimizar los resultados de la organización de tal forma que ayuden en la solución de problemas financieros de forma efectiva.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(369, 7, NULL, 'Administración de las Operaciones II', NULL, 6, 'Diseña, implementa, administra y mejora sistemas integrados de abastecimiento, producción y distribución de bienes y servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(370, 7, NULL, 'Simulación', NULL, 6, 'Analiza sistemas e identifica problemas mediante el enfoque de la simulación con el fin de proponer una solución al problema o una reconfiguración del sistema que lo mejore\nsignificativamente.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(371, 7, NULL, 'Administración del Mantenimiento', NULL, 6, 'Comprende la evolución y generalidades del sistema del departamento de mantenimiento en aplicar técnicas para administrar planes y programas de conservación de equipos e instalaciones con el fin de prever problemas y evitar paros no planeados en los procesos de producción de bienes y servicios para la mejora continua.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(372, 7, NULL, 'Mercadotecnia', NULL, 6, 'Aplica los principales conceptos y áreas de estudio de la mercadotecnia en las organizaciones, su entorno e interrelación con la logística, desarrollando propuestas y planes de acción relacionados con el producto y la cadena de abastecimiento y distribución atendiendo a las necesidades del mercado, del cliente y de la organización.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(373, 7, NULL, 'Taller de investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(374, 7, NULL, 'Planeación Financiera', NULL, 7, 'Utiliza los conceptos fundamentales, que involucran la planeación financiera, balance pro-forma, estado de resultados, el punto de equilibrio para que el estudiante sepa interpretar estados financieros usándolos como herramientas para tomar la mejor decisión en empresas de manufactura y servicios', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(375, 7, NULL, 'Planeación y diseño de instalaciones', NULL, 7, 'Realiza estudios de localización, determinación del tamaño óptimo, diseño y distribución de instalaciones de plantas productivas.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(376, 7, NULL, 'Sistemas de Manufactura', NULL, 7, 'Evalúa y optimiza los sistemas de manufactura empleados en la generación de bienes y servicios, mediante el uso de técnicas y herramientas de vanguardia.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(377, 7, NULL, 'Logística y cadenas de suministro', NULL, 7, 'Diseña y mejora sistemas integrados de producción, abastecimiento y distribución de organizaciones productoras de bienes y servicios para incrementar la competitividad de la cadena de suministro.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(378, 7, NULL, 'Gestión de los Sistemas de Calidad', NULL, 7, 'Aplica los requisitos y principios de los sistemas de Gestión de Calidad con base al Marco Normativo Internacional y sus equivalentes nacionales en el diseño, implementación y mejora del modelo de calidad en las organizaciones, con la finalidad de hacerlas más productivas en un entorno de competitividad, sustentabilidad y lograr permanencia en la trascendencia de las empresas nacionales y extranjeras.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(379, 7, NULL, 'Ingeniería de Sistemas', NULL, 7, 'Desarrollar un pensamiento holístico al obtener conocimientos sobre el enfoque de sistemas, que le permita un mejor análisis para la toma de decisiones, búsqueda de alternativas y oportunidades, para redefinir y solucionar problemas, estableciendo una relación armónica con su medio ambiente comprendiendo todas las entradas, salidas del sistema, sus interrelaciones y características de suselementos permitiéndole modelar un sistema de interés para obtener una solución viable respetando la naturaleza del sistema.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(380, 7, NULL, 'Formulación y Evaluación de Proyectos', NULL, 8, 'Formula, evalúa y gestiona proyectos de inversión, que le permitan desarrollar proyectos integrales para la generación y crecimiento de las empresas bajo criterios de competitividad y sostenibilidad.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(381, 7, NULL, 'Relaciones industriales', NULL, 8, 'Aplicar las técnicas fundamentales de la administración de recursos humanos para el buen funcionamiento y evolución en las organizaciones de manufactura y servicios.', NULL, NULL, 1, NULL, '2023-05-30', NULL, '2023-05-30'),
(382, 8, NULL, 'Química ', NULL, 1, 'Aplica conocimientos, teorías, conceptos y procedimientos básicos de química en la comprensión de los fenómenos involucrados para su aplicación en la generación de energía proveniente de fuentes renovables.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(383, 8, NULL, 'Programación', NULL, 1, 'Implementa mediante el uso de estructuras de control, bibliotecas, funciones, arreglos y archivos programas que permitan una solución rápida a problemas donde intervienen los sistemas renovables de energía.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31');
INSERT INTO `tbl_materia` (`materiaId`, `carreraId`, `especialidadId`, `nombre`, `area`, `semestre`, `competencia`, `urlVideo`, `urlPrograma`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(384, 8, NULL, 'Fuentes Renovables de Energía', NULL, 1, 'Analiza los diferentes tipos de energías provenientes de fuentes renovables con la finalidad de identificar que recurso utilizar en un sitio determinado', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(385, 8, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones de una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(386, 8, NULL, 'Bioquímica ', NULL, 2, 'Analiza las teorías, conceptos y procedimientos básicos de bioquímica que le permiten comprender los procesos involucrados en el metabolismo microbiano', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(387, 8, NULL, 'Electromagnetismo', NULL, 2, 'Aplica los conceptos básicos de las leyes y principios fundamentales del Electromagnetismo para la solución de problemas reales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(388, 8, NULL, 'Dibujo', NULL, 1, 'Aplica las herramientas del CAD en la realización de planos necesarios, para la elaboración de sistemas y dispositivos relacionados con la utilización de fuentes renovables de energía. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(389, 8, NULL, 'Álgebra Lineal ', NULL, 2, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(390, 8, NULL, 'Cálculo Integral ', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(391, 8, NULL, 'Taller de Ética', NULL, 2, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(392, 8, NULL, 'Estadística y Diseño de Experimentos', NULL, 2, 'Aplica herramientas estadísticas para el análisis de datos experimentales obtenidos durante pruebas o procesos de sistemas de energía renovable. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(393, 8, NULL, 'Microbiología', NULL, 3, 'Analiza el papel que desempeñan los microorganismos en su entorno y en la generación de productos para que sean utilizados en la producción de fuentes de energía renovables. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(394, 8, NULL, 'Taller de Sistemas de Información Geográfica', NULL, 3, 'Interpreta la cartografía y emplea tecnologías de posicionamiento para ubicar los sitios potenciales para la obtención y generación de energía proveniente de fuentes renovables. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(395, 8, NULL, 'Tecnología e Ingeniería de Materiales', NULL, 3, 'Selecciona el material que por su comportamiento mecánico, resistencia a la corrosión y costo, sea el adecuado para una aplicación determinada y así mismo identifica el método para mejorar la resistencia y el ensayo mecánico correspondiente.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(396, 8, NULL, 'Estática y Dinámica ', NULL, 3, 'Aplica los conceptos básicos, leyes y principios fundamentales de la estática y la dinámica para solución de problemas, mediante el análisis de los fenómenos físicos relacionados con la mecánica que se presenten en el ámbito profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(397, 8, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(398, 8, NULL, 'Metrología Mecánica y Eléctrica', NULL, 3, 'Utiliza los instrumentos de medición y prueba para la medición e interpretación de variables eléctricas en componentes y circuitos eléctricos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(399, 8, NULL, 'Resistencia de Materiales', NULL, 4, 'Aplica los conceptos de esfuerzos de deformación, normales, cortantes y apoyo para la resolución de problemas de ingeniería en los cuáles los elementos de estudio se encuentren sometidos a distribuciones de carga. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(400, 8, NULL, 'Termodinámica ', NULL, 4, 'Interpreta y aplica los conceptos básicos y las leyes de la termodinámica para seleccionar y evaluar sistemas y equipos térmicos relacionados con la ingeniería en energías renovables', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(401, 8, NULL, 'Comportamiento Humano en las Organizaciones ', NULL, 4, 'Analiza de forma sistémica, crítica y propositiva los diversos aspectos del comportamiento humano en las organizaciones, identificando áreas de oportunidad que le permitan plantear la solución de problemasy toma de decisiones informadas, con sentido ético. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(402, 8, NULL, 'Óptica y Semiconductores ', NULL, 4, 'Aplica la geometría y conceptos de óptico para diseñar colectores planos, de canal compuesto, parabólico y de concentración solar. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(403, 8, NULL, 'Ecuaciones Diferenciales ', NULL, 4, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(404, 8, NULL, 'Circuitos Eléctricos I ', NULL, 4, 'Analiza y diseña circuitos eléctricos para entender el funcionamiento de los dispositivos electrónicos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(405, 8, NULL, 'Biocombustibles', NULL, 5, 'Comprende los procesos de conversión (químicos, físicos y biológicos) presentes en la transformación de la biomasa para la obtención de biocombustibles.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(406, 8, NULL, 'Marco Jurídico en Gestión Energética ', NULL, 5, 'Interpreta y aplica la normatividad y legislación de la política energética, administrativa y jurídica aplicable en materia de recursos energéticos renovables y no renovables, para el desarrollo de proyectos de ingeniería. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(407, 8, NULL, 'Desarrollo Sustentable ', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le \npermitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(408, 8, NULL, 'Mecánica de Fluidos ', NULL, 5, 'Aplica los principios de la mecánica de fluidos para planteamiento y resolución de problemas prácticos, relacionados con el transporte de fluidos en sistemas de fuentes renovables de energía, con el auxilio de herramientas computacionales', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(409, 8, NULL, 'Transferencia de Calor', NULL, 5, 'Aplica, interpreta y evalúa las leyes de transferencia de calor para analizar sistemas de energías renovables donde los mecanismos de transferencia de calor son necesarios para mejorar el diseño y funcionamiento de éstos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(410, 8, NULL, 'Circuitos Eléctricos II ', NULL, 5, 'Aplica los conceptos y leyes fundamentales que se emplean en el análisis en estado permanente de circuitos eléctricos excitados con corriente alterna', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(411, 8, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(412, 8, NULL, 'Máquinas Eléctricas', NULL, 6, 'Analiza el funcionamiento de las diferentes máquinas eléctricas, y selecciona la máquina apropiada para el suministro de una carga específica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(413, 8, NULL, 'Máquinas Hidráulicas ', NULL, 6, 'Diseña, instala, evalúa y mantiene sistemas hidráulicos para solucionar problemas productivos y de servicios tecnológicos mediante la adecuada selección uso de equipos y materiales', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(414, 8, NULL, 'Refrigeración y Aire Acondicionado', NULL, 6, 'Diseña, evalúa y mantiene sistemas de aire acondicionado y refrigeración, relacionados con los sistemas renovables de energías, utilizando software para programar mantenimientos correctivos y preventivos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(415, 8, NULL, 'Instalaciones Eléctricas e Iluminación ', NULL, 6, 'Elabora proyectos de instalaciones eléctricas de baja tensión y de iluminación para usos generales de aplicación industrial y de servicios públicos, de acuerdo a la normatividad vigente', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(416, 8, NULL, 'Sistemas Térmicos ', NULL, 6, 'Selecciona, instala, opera las diferentes máquinas y equipos térmicos utilizados en la industria para incrementar la eficiencia energética de los mismos solucionando consumos excesivos de energía', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(417, 8, NULL, 'Sistemas Solares Fotovoltaicos y Térmicos', NULL, 7, 'Diseña, construye, instala, mantiene, dimensiona y opera sistemas solares fotovoltaicos y térmicos eficientes para aplicaciones específicas', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(418, 8, NULL, 'Simulación de Sistemas de Energías Renovables ', NULL, 7, 'Construye y analiza los modelos de simulación para su aplicación en dispositivos y procesos que permitan la optimización de los sistemas de energía renovable ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(419, 8, NULL, 'Instrumentación ', NULL, 7, 'Selecciona, aplica, calibra y opera los instrumentos de medición y control para automatizar los procesos industriales, mediante la configuración y programación adecuada de los mismos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(420, 8, NULL, 'Energía Eólica ', NULL, 7, 'Diseña, evalúa e implementa sistemas de generación eólica aprovechando la energía proveniente del viento para la obtención de energía eléctrica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(421, 8, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(422, 8, 18, 'Instalaciones Eléctricas Industriales', NULL, 7, 'Proyectar instalaciones eléctricas de manejo y utilización de fuerza en media y baja tensión en sistemas industriales y de servicios de alto consumo, respetando la normatividad \r', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(423, 8, 22, 'Gestión Ambiental', NULL, 7, 'Proporcionar los conocimientos necesarios para comprender la política ambiental, de calidad y de la seguridad desde una óptica administrativa y jurídica que se aplica en materia ambiental en el país, para la protección del ambiente.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(424, 8, 23, 'Contabilidad Orientada a los Negocios', NULL, 7, 'Comprende la importancia del proceso contable en los negocios para formular Estados Financieros Básicos utilizando normas y procedimientos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(425, 8, NULL, 'Formulación y Evaluación de Proyectos de Energías Renovables', NULL, 8, 'Demuestra la factibilidad y sustentabilidad de proyectos relacionados con las fuentes renovables de energía', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(426, 8, NULL, 'Administración y Técnicas de Conservación ', NULL, 8, 'Aplica técnicas para administrar planes y programas de conservación de equipos e instalaciones con el objeto de evitar paros no planeados en la producción de energía y para maximizar el tiempo de vida útil de los componentes que conforman un sistema de energías renovables', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(427, 8, NULL, 'Auditoría Energética', NULL, 8, 'Aplicar las normas vigentes de Ahorro de Energía en los sectores industriales y de servicios para promover el uso eficiente de la energía y el desarrollo sustentable. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(428, 8, NULL, 'Gestión de Empresas de Energías Renovables', NULL, 8, 'Analiza los elementos que integran la empresa particularmente relacionada con las energías renovables', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(429, 8, 18, 'Electrónica Industrial', NULL, 8, 'Analizar, diseñar y simular circuitos eléctricos y electrónicos, para interpretar las formas de ondas y el funcionamiento de los dispositivos semiconductores de potencia para la implementación de convertidores para aplicaciones industriales. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(430, 8, 18, 'Instrumentación Virtual', NULL, 8, 'Empleando: Controles, indicadores, gráficas, ciclos de repetición, temporización, subrutinas, grupos de datos y Registro de datos en archivos.txt y .csv', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(431, 8, 20, 'Costos Empresariales', NULL, 8, 'Aplica la información generada por la contabilidad de los costos empresariales en la gestión de los procesos relacionados con los costos de adquisición, producción, distribución, administración y financiamiento', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(432, 8, 20, 'Gestión Estratégica', NULL, 8, 'Desarrolla estrategias empresariales considerando criterios de sustentabilidad, para obtener ventajas competitivas sostenibles en un entorno cambiante y globalizado. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(433, 8, 18, 'Calidad de la Energía Eléctrica', NULL, 9, 'Comprende, identifica y analiza los problemas de calidad de la energía en sistemas eléctricos de potencia para proponer las soluciones pertinentes.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(434, 8, 19, 'Seguridad Laboral', NULL, 9, 'Proporcionar los conocimientos necesarios para llevar a cabo el monitoreo la seguridad laboral de los trabajadores de la empresa.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(435, 8, 20, 'El Emprendedor y la Innovación', NULL, 9, 'Desarrolla la capacidad creativa y el espíritu empresarial, la elaboración de un portafolio de ideas emprendedoras, respetando la ética en el ámbito personal y profesional', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(436, 8, 20, 'Gestión y Liderazgo', NULL, 9, 'Desarrollar las habilidades que le permitan guiar, dirigir y orientar grupos de personas en el diseño, y mejora de los sistemas organizacionales cumpliendo con los estándares de calidad, eficiencia, ambientales, económicos y sociales y en la creación de empresas.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(437, 8, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(438, 9, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones \nde una variable para la elaboración de modelos matemáticos aplicados', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(439, 9, NULL, 'Química', NULL, 1, 'Comprende la estructura de la materia y su relación con las propiedades físicas y químicas, enfocadas a sus aplicaciones a los dispositivos eléctricos y electrónicos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(440, 9, NULL, 'Probabilidad y Estadística', NULL, 1, 'Conoce y aplica los conceptos de probabilidad y estadística como una herramienta en la solución de problemas de ingeniería e investigación', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(441, 9, NULL, 'Desarrollo Humano Integral', NULL, 1, 'Promueve su desarrollo personal a través del autoconocimiento y el descubrimiento de sus\npotencialidades humanas para lograr la autorrealización en armonía con los demás y con su entorno', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(442, 9, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(443, 9, NULL, 'Cálculo Integra', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(444, 9, NULL, 'Mecánica Clásica', NULL, 2, 'Conoce los conceptos de estática y dinámica para establecer y comprender las bases del planteamiento de problemas de ingeniería, verificándolo mediante su modelado matemático. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(445, 9, NULL, 'Electromagnetismo', NULL, 2, 'Aplica los conceptos básicos de las leyes y principios fundamentales del Electromagnetismo para la solución de problemas reales', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(446, 9, NULL, 'Mediciones Eléctricas', NULL, 2, 'Utiliza los instrumentos de medición y prueba para la medición e interpretación de variables eléctricas en componentes y circuitos eléctricos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(447, 9, NULL, 'Dibujo Asistido por Computadora', NULL, 2, 'Clasifica e interpreta las normas en dibujo utilizadas para su implementación, y utiliza las herramientasnecesarias para la elaboración de dibujos bidimensionales y tridimensionales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(448, 9, NULL, 'Tecnología de los Materiales', NULL, 2, ' Define y analiza las características principales de los materiales utilizados en la construcción de los dispositivos, equipos y máquinas eléctricas en general, para evaluar las aplicaciones prácticas.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(449, 9, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de \ningeniería del entorno. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(450, 9, NULL, 'Álgebra Linea', NULL, 3, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(451, 9, NULL, 'Circuitos Eléctricos I', NULL, 3, 'Aplica técnicas y métodos para analizar y resolver circuitos eléctricos resistivos y de primero y segundo orden, comprobando las respuestas experimentalmente y con software de simulación', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(452, 9, NULL, 'Programación', NULL, 3, 'Diseña algoritmos y desarrolla programas de aplicación, utilizando un lenguaje de programación estructurado de alto nivel, para su aplicación en la solución de problemas propios del área', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(453, 9, NULL, 'Mecánica de Fluidos y Termodinámica', NULL, 3, 'Aplica los conocimientos básicos de termodinámica y mecánica de los fluidos en el estudio, selección y\naplicación de equipos mecánicos, máquinas eléctricas y accesorios para la generación y utilización de la energía eléctrica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(454, 9, NULL, 'Comunicación Humana', NULL, 3, 'Comprende y aplica la comunicación humana en sus diversas formas como un proceso a través del cual e manifiesta el pensamiento crítico y creativo, estableciendo relaciones con los demás en un ambiente de coparticipación, buscando una mejor y más profunda comunicación verbal que le permite alcanzar.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(455, 9, NULL, 'Ecuaciones Diferenciales', NULL, 4, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(456, 9, NULL, 'Física Moderna', NULL, 4, 'Comprende los conceptos básicos de las leyes y principios fundamentales de la Óptica y Física Moderna para aplicarlos en problemas del ámbito profesional.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(457, 9, NULL, 'Circuitos Eléctricos II', NULL, 4, 'Conoce, comprende y aplica los conceptos y leyes fundamentales que se emplean en el análisis de circuitos eléctricos excitados con corriente alterna senoidal, con apoyo de herramientas de análisis y simulación. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(458, 9, NULL, 'Electrónica Analógica', NULL, 4, 'Selecciona, analiza y utiliza dispositivos básicos de electrónica analógica, optoelectrónica y potencia para desarrollar circuitos que den una solución a los requerimientos de los sistemas eléctricos y electromecánicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(459, 9, NULL, 'Teoría Electromagnética', NULL, 4, 'Adquiere los conocimientos fundamentales de la teoría electromagnética para emplearlos de manera conjunta con herramientas analíticas, que permitan dar solución a ejemplos físicos, teóricos y prácticos que impliquen campos eléctricos y magnéticos ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(460, 9, NULL, 'Métodos Numéricos', NULL, 4, 'Aplica los métodos numéricos en la solución de problemas de cálculo de ingeniería eléctrica, empleando herramientas computacionales para obtener resultados y elaborar rutinas que muestren su representación gráfica para su análisis. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(461, 9, NULL, 'Control I', NULL, 5, 'Aplica los conceptos básicos de control clásico para el análisis y modelado de sistemas físicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(462, 9, NULL, 'Equipos Mecánicos', NULL, 5, 'Asocia los conceptos de la ingeniería eléctrica con los correspondientes a los de la ingeniería mecánica ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(463, 9, NULL, 'Transformadores', NULL, 5, 'para integrar los procesos e interrelaciones de la conversión de la energía electromecánica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(464, 9, NULL, 'Electrónica Digital', NULL, 5, ' Selecciona, analiza e implementa los dispositivos básicos de la electrónica digital para integrarlos como una solución a los requerimientos de los sistemas eléctricos y\nelectromecánicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(465, 9, NULL, 'Instalaciones Eléctricas', NULL, 5, 'Elabora proyectos de instalaciones eléctricas de baja tensión de usos generales de aplicación residencial, comercial y de servicios públicos, de acuerdo a la normatividad vigente y empleando paquetes de cómputo adecuados ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(466, 9, NULL, 'Desarrollo Sustentable', NULL, 5, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno, tomando en cuenta estrategias y considerando profesionalmente los valores ambientales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(467, 9, NULL, 'Control II ', NULL, 6, 'Conoce, comprende y aplica los conceptos y leyes fundamentales que se emplean en el análisis en estado permanente de circuitos eléctricos excitados con corriente alterna, con apoyo de herramientas de análisis y simulación. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(468, 9, NULL, 'Legislación en Materia Eléctrica', NULL, 6, 'Adquiere, analiza y evalúa comparativamente la legislación nacional en materia eléctrica, aplica leyes y reglamentos, así como la normatividad y procedimientos para regir su actividad profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(469, 9, NULL, 'Máquinas Sincrónicas y de CD', NULL, 6, ' Aplica los fundamentos de las máquinas sincrónicas y las máquinas de corriente directa para analizar su operación en estado estacionario. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(470, 9, NULL, 'Motores de Inducción y Especiales', NULL, 6, ' Conoce el funcionamiento de las máquinas de inducción y máquinas especiales para su identificación y selección. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(471, 9, NULL, 'Instalaciones Eléctricas Industriales', NULL, 6, 'Proyecta instalaciones eléctricas de manejo y utilización de fuerza, en media y baja tensión, para la utilización en sistemas industriales y de servicios de alto consumo, respetando la normatividad vigente y utilizando paquetes computacionales adecuados', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(472, 9, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico - tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(473, 9, NULL, 'Control de Máquinas Eléctricas', NULL, 7, 'Utiliza los dispositivos electromagnéticos, electrónicos y equipo programable para el control de los motores eléctricos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(474, 9, NULL, 'Modelado de Sistemas Eléctricos de Potencia', NULL, 7, 'Analiza el comportamiento de las cargas y flujos de potencia en un sistema eléctrico de potencia, incluyendo las condiciones bajo situaciones de falla del sistema eléctrico. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(475, 9, NULL, 'Centrales Eléctricas', NULL, 7, 'Evalúa, en base al conocimiento general de diseño y operación de las centrales de generación eléctrica convencionales y no convencionales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(476, 9, NULL, 'Electrónica Industrial', NULL, 7, 'Analiza, diseña, simula construye y aplica circuitos eléctricos y sistemas electrónicos, para el control de potencia y conversión de la energía eléctrica para optimizar su uso. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(477, 9, NULL, 'Instrumentación', NULL, 7, 'Selecciona, aplica, calibra y opera los instrumentos de medición y control para automatizar los procesos industriales, mediante la configuración y programación adecuada de los mismos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(478, 9, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(479, 9, NULL, 'Costos y Presupuesto de Proyectos', NULL, 8, 'Conoce los conceptos generales y los criterios de análisis de precios unitarios para la determinaciónde costos y presupuestos de obra.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(480, 9, NULL, 'Gestión Empresarial y Liderazgo', NULL, 8, 'Identifica, plantea y resuelve problemas para el desarrollo personal y profesional, aplicando el proceso de toma de decisiones, como un proceso racional, desarrollando las habilidades del liderazgo y del trabajo en equipo para desempeñarlas en su ámbito personal, social y laboral. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(481, 9, NULL, 'Controlador Lógico Programable', NULL, 8, 'Diseña, instala, programa y realiza la puesta en servicio de controladores lógicos programables\npreviamente configurados, a partir del conocimiento de los dispositivos periféricos de entrada y salida, para implementar proyectos de automatización industrial, y de servicios. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(482, 9, NULL, 'Pruebas y Mantenimiento Eléctrico', NULL, 8, ' Conoce, aplica y desarrolla las actividades de mantenimiento eléctrico para el buen funcionamiento de las máquinas y equipos eléctricos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(483, 9, NULL, 'Sistemas de Iluminación', NULL, 8, 'Aplica los conocimientos y tecnologías correspondientes en el diseño y realización de proyectos de alumbrado y nivel de iluminación de sitios interiores y exteriores para diversas aplicaciones en los sectores industriales, comerciales y de servicios públicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(484, 10, NULL, 'Cálculo Diferencial', NULL, 1, 'Plantea y resuelve problemas utilizando las definiciones de límite y derivada de funciones \nde una variable para la elaboración de modelos matemáticos aplicados.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(485, 10, NULL, 'Mecánica Clásica', NULL, 1, 'Conoce los conceptos de estática y dinámica para establecer y comprender las bases del planteamiento de problemas de ingeniería, verificándolo mediante su modelado matemático', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(486, 10, NULL, 'Química', NULL, 1, 'Comprende la estructura de la materia y su relación con las propiedades físicas y químicas, enfocadas a sus aplicaciones a los dispositivos eléctricos y electrónicos', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(487, 10, NULL, 'Taller de ética', NULL, 1, 'Desarrolla conciencia sobre el significado y sentido de la Ética para orientar su comportamiento en el contexto social y profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(488, 10, NULL, 'Fundamentos de Investigación', NULL, 1, 'Aplica los elementos de la investigación documental para elaborar escritos académicos de su entorno profesional. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(489, 10, NULL, 'Comunicación Humana', NULL, 1, 'Comprender el proceso de la comunicación humana, y las propiedades del lenguaje. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(490, 10, NULL, 'Cálculo Integral', NULL, 2, 'Aplica la definición de integral y las técnicas de integración para resolver problemas de ingeniería.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(491, 10, NULL, 'Probabilidad y Estadística', NULL, 2, 'Conoce y aplica los conceptos de probabilidad y estadística como una herramienta en la solución de problemas de ingeniería e investigación ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(492, 10, NULL, 'Desarrollo Sustentable', NULL, 2, 'Aplica una visión sustentable, en los ámbitos social, económico y ambiental que le permitirá evaluar y disminuir el impacto de la sociedad sobre el entorno', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(493, 10, NULL, 'Mediciones Eléctricas', NULL, 2, 'Conocer los conceptos básicos de medición, utilizar los instrumentos para la medición y el análisis de señales provenientes de circuitos eléctricos reales, simular y diseñar modelos esquemáticos de circuitos impresos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(494, 10, NULL, 'Tópicos Selectos de Física', NULL, 2, 'Analiza, describe, soluciona problemas y aplica los conceptos básicos de fluidos, termodinámica, ondas y óptica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(495, 10, NULL, 'Desarrollo Humano', NULL, 2, 'Promover su desarrollo personal a través del autoconocimiento y el descubrimiento de sus potencialidades humanas que conlleven a una autorrealización en armonía con los demás y con su entorno. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(496, 10, NULL, 'Cálculo Vectorial', NULL, 3, 'Aplica los principios y técnicas básicas del cálculo vectorial para resolver problemas de ingeniería del entorno. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(497, 10, NULL, 'Electromagnetismo', NULL, 3, 'Aplica los conceptos básicos de las leyes y principios fundamentales del Electromagnetismo para la solución de problemas reales.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(498, 10, NULL, 'Álgebra Lineal', NULL, 3, 'Resuelve problemas de modelos lineales aplicados en ingeniería para la toma de decisiones de acuerdo a la interpretación de resultados utilizando matrices y sistemas de ecuaciones. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(499, 10, NULL, 'Física de Semiconductores', NULL, 3, 'Comprende el principio de operación de los dispositivos semiconductores desde la perspectiva de su construcción y régimen de operación para su aplicación en el diseño de circuitos electrónicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(500, 10, NULL, 'Programación Estructurada', NULL, 3, 'Diseña algoritmos y desarrolla programas de aplicación, utilizando un lenguaje de programación estructurado de alto nivel, para su aplicación en la solución de problemas propios del área electrónica. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(501, 10, NULL, 'Ecuaciones Diferenciales', NULL, 4, 'Aplica los métodos de solución de ecuaciones diferenciales ordinarias para resolver problemas que involucran sistemas dinámicos que se presentan en la ingeniería. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(502, 10, NULL, 'Circuitos Eléctricos I', NULL, 4, 'Aplica técnicas y métodos para analizar y resolver circuitos eléctricos resistivos y de primero y segundo orden, comprobando las respuestas experimentalmente y con herramientas computacionales. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(503, 10, NULL, 'Marco Legal de la Empresa', NULL, 4, ' Diseñar, evaluar y emprender nuevos negocios y proyectos empresariales, en el mercado competitivo y globalizado, con una perspectiva legal. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(504, 10, NULL, 'Análisis Numérico', NULL, 4, 'Aplica métodos numéricos apropiados en la solución de problemas de ingeniería, electrónica para facilitar y agilizar el cómputo de cálculos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(505, 10, NULL, 'Diseño Digital', NULL, 4, ' Conoce, comprende, analiza, diseña y simula circuitos digitales básicos, combinacionales, secuenciales síncronos y asíncronos además conoce los fundamentos del lenguaje VHDL para circuitos combinacionales en sistemas digitales', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(506, 10, NULL, 'Programación Visual', NULL, 4, 'Desarrolla programas de aplicación con interfaces gráficas de usuario a partir del conocimiento de los elementos básicos que faciliten la interacción entre hombre, sistemas y dispositivos electrónicos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(507, 10, NULL, 'Circuitos Eléctricos II', NULL, 5, 'Conoce, comprende y aplica los conceptos y leyes fundamentales que se emplean en el análisis en estado permanente de circuitos eléctricos excitados con corriente alterna, con apoyo de herramientas de análisis y simulación.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(508, 10, NULL, 'Diodos y Transistores', NULL, 5, 'Analiza, diseña e implementa circuitos con diodos, transistores bipolares, unipolares y fuentes de alimentación, para diferentes configuraciones de circuitos electrónicos de aplicación. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(509, 10, NULL, 'Teoría Electromagnética', NULL, 5, 'Aplica las leyes electromagnéticas para analizar, identificar y evaluar los parámetros para el funcionamiento y operación de Líneas de Transmisión, Guías de Onda y Antenas. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(510, 10, NULL, 'Máquinas Eléctricas', NULL, 5, 'Analiza el funcionamiento de las diferentes máquinas eléctricas y realiza una adecuada selección para su aplicación, según el tipo de carga. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(511, 10, NULL, 'Diseño Digital con VHDL', NULL, 5, 'Desarrolla y simula estructuras avanzadas de un programa en VHDL de circuitos lógicos secuenciales síncronos para la programación e implementación de FPGA´s o CPLD´s en aplicaciones reales', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(512, 10, NULL, 'Desarrollo Profesional', NULL, 5, 'Ejerce la profesión de manera responsable, ética, con actitudes emprendedoras de liderazgo, actualización profesional, desarrolla habilidades para la toma de decisiones en el entorno social, económico, cultural, político y dentro del marco legal y un ambiente globalizado. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(513, 10, NULL, 'Control I', NULL, 6, 'Aplica los conceptos básicos de control clásico para el análisis y modelado de sistemas físicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(514, 10, NULL, 'Diseño con Transistores', NULL, 6, 'Analiza, diseña e implementa circuitos amplificadores de múltiples etapas, configuraciones especiales, amplificadores sintonizados, amplificadores de lazo abierto y cerrado, así como amplificadores de potencia, para su aplicación en diferentes circuitos integrados lineales. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(515, 10, NULL, 'Fundamentos Financieros', NULL, 6, 'Comprender la estructura, significado y utilidad de la información financiera para su aplicación y desarrollo en actividades administrativas. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(516, 10, NULL, 'Microcontroladores', NULL, 6, 'Conoce y explica el funcionamiento interno y externo del microcontrolador, realiza programas en lenguaje ensamblador y de alto nivel, utilizando los recursos del microcontrolador.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(517, 10, NULL, 'Taller de Investigación I', NULL, 6, 'Elabora un protocolo de investigación en el que presenta soluciones científico-tecnológicas a problemáticas relacionadas con su campo profesional en diversos contextos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(518, 10, NULL, 'Control II', NULL, 7, ' Interpreta gráficas y aplica métodos de respuesta a la frecuencia para analizar sistemas de control y dispositivos utilizados en eléctrica y electrónica', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(519, 10, NULL, 'Amplificadores Operacionales', NULL, 7, 'Analiza, simula, diseña, construye y aplica circuitos con amplificadores operacionales y circuitos integrados lineales para aplicaciones de la electrónica analógica.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(520, 10, NULL, 'Instrumentación', NULL, 7, 'Selecciona, aplica, calibra y opera los instrumentos de medición y control para automatizar los procesos industriales, mediante la configuración y programación adecuada de los mismos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(521, 10, NULL, 'Optoelectrónica', NULL, 7, 'Define los conceptos y teorías que explican la operación de los dispositivos optoelectrónicos para el diseño y construcción de circuitos electrónicos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(522, 10, NULL, 'Introduccón a las Telecomunicaciones', NULL, 7, 'Desarrolla la capacidad de análisis de los sistemas de comunicaciones electrónicos, que le permitan comprender, operar, instalar y adaptar sistemas de comunicaciones electrónicos basándose en normas nacionales e internacionales. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(523, 10, NULL, 'Taller de Investigación II', NULL, 7, 'Consolida el protocolo para ejecutar la investigación y obtener productos para su exposición, defensa y gestión de su transcendencia. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(524, 10, NULL, 'Control Digital', NULL, 8, 'Diseña, Analiza e implementa controladores discretos de sistemas físicos mediante técnicas de control clásico para instrumentación y control en el sector industrial.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(525, 10, NULL, 'Controladores Lógicos Programables', NULL, 8, 'Domina y estructura la programación de PLCs para su aplicación en el control de procesos en el sector industrial y de servicios. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(526, 10, NULL, 'Electrónica de Potencia', NULL, 8, 'Analiza, simula, diseña, construye y aplica circuitos y sistemas electrónicos para el control de potencia, y conversión de la energía eléctrica para optimizar su uso. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(527, 10, NULL, 'Administración Generencial', NULL, 8, 'Analiza e identifica el proceso administrativo, con el fin de que el estudiante cuente con los elementos que le permitan aplicarlo en su entorno organizacional y social, propiciando el desarrollo humano, sustentable y económico en las organizaciones', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(528, 10, 23, 'Instrumentación Virtual', NULL, 8, 'Empleando: Controles, indicadores, gráficas, ciclos de repetición, temporización, subrutinas, grupos de datos y Registro de datos en archivos .txt y .csv.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(529, 10, 23, 'Modelado y Optimizacion de Sistemas Electricos Renovables', NULL, 8, 'Conoce los requerimientos de energía y sus balances en edificaciones y procesos para cuantificarlos y caracterizarlos. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(530, 10, 24, 'Diseño Digital Avanzado con FPGA', NULL, 8, 'Aplica el lenguaje de descripción de hardware para diseñar sistemas de lógica digital avanzada en tarjetas de desarrollo FPGA’s.\r', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(531, 10, 24, 'Interfaces', NULL, 8, ' Utilizar con precisión la terminología y simbología de microcontroladores e interfaces', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(532, 10, NULL, 'Desarrollo y Evaluación de Proyectos', NULL, 9, 'Conoce y aplica las distintas metodologías existentes para formular, evaluar y gestionar una idea de inversión que le permitan desarrollar proyectos integrales en la generación y/o crecimiento de las empresas bajo criterios de competitividad y sostenibilidad. ', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(533, 10, 23, 'Redes de Comunicación Industrial', NULL, 9, 'Conoce analíticamente los conceptos y características de los protocolos de red y comunicación industrial para su implementación en las diferentes industrias de México para elevar la calidad en la automatización de los procesos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(534, 10, 24, 'Comunicación entre Sistemas Embebidos', NULL, 9, 'Estudia los protocolos de comunicación RS 485, CAN y Ethernet para diseñar e implementar la comunicación entre sistemas embebidos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31'),
(535, 10, 24, 'Procesamiento Digital de Señales', NULL, 7, 'Conocer los conceptos fundamentales y de arquitectura de los DSP, para la comprensión de los procesos internos y de control de los mismos.', NULL, NULL, 1, NULL, '2023-05-31', NULL, '2023-05-31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modulo`
--

CREATE TABLE `tbl_modulo` (
  `moduloId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_modulo`
--

INSERT INTO `tbl_modulo` (`moduloId`, `nombre`, `status`, `createdBy`, `createdAt`, `updatedBy`, `updatedAt`) VALUES
(1, 'Inicio', 1, 1, NULL, NULL, NULL),
(2, 'Perfil de Egreso', 1, 1, NULL, NULL, NULL),
(3, 'Plantilla Docente', 1, 1, NULL, NULL, NULL),
(4, 'Mapa Curricular', 1, 1, NULL, NULL, NULL),
(5, 'Conócenos', 1, 1, NULL, NULL, NULL),
(6, 'Comunidades', 1, 1, NULL, NULL, NULL),
(7, 'Enlaces', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_objeto`
--

CREATE TABLE `tbl_objeto` (
  `objetoId` int(11) NOT NULL,
  `seccionId` int(11) NOT NULL,
  `imagen` text DEFAULT NULL,
  `titulo` text DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pagina`
--

CREATE TABLE `tbl_pagina` (
  `paginaId` int(11) NOT NULL,
  `moduloId` int(11) NOT NULL,
  `carreraId` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `rolId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rolpermiso`
--

CREATE TABLE `tbl_rolpermiso` (
  `rolPermisoId` int(11) NOT NULL,
  `rolId` int(11) NOT NULL,
  `departamentoId` int(11) NOT NULL,
  `add` int(2) NOT NULL,
  `modify` int(2) NOT NULL,
  `delete` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_seccion`
--

CREATE TABLE `tbl_seccion` (
  `seccionId` int(11) NOT NULL,
  `moduloId` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipoobjeto`
--

CREATE TABLE `tbl_tipoobjeto` (
  `tipoObjId` int(11) NOT NULL,
  `nombre` text DEFAULT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `usuarioId` int(11) NOT NULL,
  `rolId` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` int(2) NOT NULL,
  `createdBy` int(2) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedBy` int(2) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  ADD PRIMARY KEY (`carreraId`),
  ADD UNIQUE KEY `carreraId_UNIQUE` (`carreraId`),
  ADD KEY `fk_tbl_carrera_departamentoId` (`departamentoId`);

--
-- Indices de la tabla `tbl_comunidad`
--
ALTER TABLE `tbl_comunidad`
  ADD PRIMARY KEY (`comunidadId`),
  ADD UNIQUE KEY `comunidadId_UNIQUE` (`comunidadId`),
  ADD KEY `fk_tbl_comunidad_carreraId` (`carreraId`);

--
-- Indices de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  ADD PRIMARY KEY (`departamentoId`),
  ADD UNIQUE KEY `departamentoId_UNIQUE` (`departamentoId`);

--
-- Indices de la tabla `tbl_docente`
--
ALTER TABLE `tbl_docente`
  ADD PRIMARY KEY (`docenteId`),
  ADD UNIQUE KEY `docenteId_UNIQUE` (`docenteId`),
  ADD KEY `fk_tbl_docente_carreraId` (`carreraId`);

--
-- Indices de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  ADD PRIMARY KEY (`especialidadId`),
  ADD UNIQUE KEY `especialidadId_UNIQUE` (`especialidadId`),
  ADD KEY `fk_tbl_especialidad_carreraId` (`carreraId`);

--
-- Indices de la tabla `tbl_materia`
--
ALTER TABLE `tbl_materia`
  ADD PRIMARY KEY (`materiaId`),
  ADD UNIQUE KEY `materiaId_UNIQUE` (`materiaId`),
  ADD KEY `fk_tbl_materia_carreraId` (`carreraId`),
  ADD KEY `fk_tbl_materia_especialidadId` (`especialidadId`);

--
-- Indices de la tabla `tbl_modulo`
--
ALTER TABLE `tbl_modulo`
  ADD PRIMARY KEY (`moduloId`),
  ADD UNIQUE KEY `moduloId_UNIQUE` (`moduloId`);

--
-- Indices de la tabla `tbl_objeto`
--
ALTER TABLE `tbl_objeto`
  ADD PRIMARY KEY (`objetoId`),
  ADD UNIQUE KEY `objetoId_UNIQUE` (`objetoId`),
  ADD KEY `fk_tbl_objeto_seccionId` (`seccionId`);

--
-- Indices de la tabla `tbl_pagina`
--
ALTER TABLE `tbl_pagina`
  ADD PRIMARY KEY (`paginaId`),
  ADD UNIQUE KEY `paginaId_UNIQUE` (`paginaId`),
  ADD KEY `fk_tbl_pagina_moduloId` (`moduloId`),
  ADD KEY `fk_tbl_pagina_carreraId` (`carreraId`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`rolId`),
  ADD UNIQUE KEY `rolId_UNIQUE` (`rolId`);

--
-- Indices de la tabla `tbl_rolpermiso`
--
ALTER TABLE `tbl_rolpermiso`
  ADD PRIMARY KEY (`rolPermisoId`),
  ADD UNIQUE KEY `rolPermisoId_UNIQUE` (`rolPermisoId`),
  ADD KEY `fk_tbl_rolPermiso_rolId` (`rolId`),
  ADD KEY `fk_tbl_rolPermiso_departamentoId` (`departamentoId`);

--
-- Indices de la tabla `tbl_seccion`
--
ALTER TABLE `tbl_seccion`
  ADD PRIMARY KEY (`seccionId`),
  ADD UNIQUE KEY `seccionId_UNIQUE` (`seccionId`),
  ADD KEY `fk_tbl_seccion_moduloId` (`moduloId`);

--
-- Indices de la tabla `tbl_tipoobjeto`
--
ALTER TABLE `tbl_tipoobjeto`
  ADD PRIMARY KEY (`tipoObjId`),
  ADD UNIQUE KEY `tipoObjId_UNIQUE` (`tipoObjId`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`usuarioId`),
  ADD UNIQUE KEY `usuarioId_UNIQUE` (`usuarioId`),
  ADD KEY `fk_tbl_usuario_rolId` (`rolId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  MODIFY `carreraId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_comunidad`
--
ALTER TABLE `tbl_comunidad`
  MODIFY `comunidadId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_departamento`
--
ALTER TABLE `tbl_departamento`
  MODIFY `departamentoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_docente`
--
ALTER TABLE `tbl_docente`
  MODIFY `docenteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  MODIFY `especialidadId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tbl_materia`
--
ALTER TABLE `tbl_materia`
  MODIFY `materiaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=536;

--
-- AUTO_INCREMENT de la tabla `tbl_modulo`
--
ALTER TABLE `tbl_modulo`
  MODIFY `moduloId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tbl_objeto`
--
ALTER TABLE `tbl_objeto`
  MODIFY `objetoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_pagina`
--
ALTER TABLE `tbl_pagina`
  MODIFY `paginaId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  MODIFY `rolId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_rolpermiso`
--
ALTER TABLE `tbl_rolpermiso`
  MODIFY `rolPermisoId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_seccion`
--
ALTER TABLE `tbl_seccion`
  MODIFY `seccionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_tipoobjeto`
--
ALTER TABLE `tbl_tipoobjeto`
  MODIFY `tipoObjId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `usuarioId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  ADD CONSTRAINT `fk_tbl_carrera_departamentoId` FOREIGN KEY (`departamentoId`) REFERENCES `tbl_departamento` (`departamentoId`);

--
-- Filtros para la tabla `tbl_comunidad`
--
ALTER TABLE `tbl_comunidad`
  ADD CONSTRAINT `fk_tbl_comunidad_carreraId` FOREIGN KEY (`carreraId`) REFERENCES `tbl_carrera` (`carreraId`);

--
-- Filtros para la tabla `tbl_docente`
--
ALTER TABLE `tbl_docente`
  ADD CONSTRAINT `fk_tbl_docente_carreraId` FOREIGN KEY (`carreraId`) REFERENCES `tbl_carrera` (`carreraId`);

--
-- Filtros para la tabla `tbl_especialidad`
--
ALTER TABLE `tbl_especialidad`
  ADD CONSTRAINT `fk_tbl_especialidad_carreraId` FOREIGN KEY (`carreraId`) REFERENCES `tbl_carrera` (`carreraId`);

--
-- Filtros para la tabla `tbl_objeto`
--
ALTER TABLE `tbl_objeto`
  ADD CONSTRAINT `fk_tbl_objeto_seccionId` FOREIGN KEY (`seccionId`) REFERENCES `tbl_seccion` (`seccionId`);

--
-- Filtros para la tabla `tbl_pagina`
--
ALTER TABLE `tbl_pagina`
  ADD CONSTRAINT `fk_tbl_pagina_carreraId` FOREIGN KEY (`carreraId`) REFERENCES `tbl_carrera` (`carreraId`),
  ADD CONSTRAINT `fk_tbl_pagina_moduloId` FOREIGN KEY (`moduloId`) REFERENCES `tbl_modulo` (`moduloId`);

--
-- Filtros para la tabla `tbl_rolpermiso`
--
ALTER TABLE `tbl_rolpermiso`
  ADD CONSTRAINT `fk_tbl_rolPermiso_departamentoId` FOREIGN KEY (`departamentoId`) REFERENCES `tbl_departamento` (`departamentoId`),
  ADD CONSTRAINT `fk_tbl_rolPermiso_rolId` FOREIGN KEY (`rolId`) REFERENCES `tbl_rol` (`rolId`);

--
-- Filtros para la tabla `tbl_seccion`
--
ALTER TABLE `tbl_seccion`
  ADD CONSTRAINT `fk_tbl_seccion_moduloId` FOREIGN KEY (`moduloId`) REFERENCES `tbl_modulo` (`moduloId`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `fk_tbl_usuario_rolId` FOREIGN KEY (`rolId`) REFERENCES `tbl_rol` (`rolId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
