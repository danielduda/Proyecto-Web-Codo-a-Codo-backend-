-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2024 a las 22:35:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_peluqueria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can view permission', 1, 'view_permission'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add user', 3, 'add_user'),
(10, 'Can change user', 3, 'change_user'),
(11, 'Can delete user', 3, 'delete_user'),
(12, 'Can view user', 3, 'view_user'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add producto', 6, 'add_producto'),
(22, 'Can change producto', 6, 'change_producto'),
(23, 'Can delete producto', 6, 'delete_producto'),
(24, 'Can view producto', 6, 'view_producto'),
(25, 'Can add carrito', 7, 'add_carrito'),
(26, 'Can change carrito', 7, 'change_carrito'),
(27, 'Can delete carrito', 7, 'delete_carrito'),
(28, 'Can view carrito', 7, 'view_carrito'),
(29, 'Can add carrito item', 8, 'add_carritoitem'),
(30, 'Can change carrito item', 8, 'change_carritoitem'),
(31, 'Can delete carrito item', 8, 'delete_carritoitem'),
(32, 'Can view carrito item', 8, 'view_carritoitem'),
(33, 'Can add log entry', 9, 'add_logentry'),
(34, 'Can change log entry', 9, 'change_logentry'),
(35, 'Can delete log entry', 9, 'delete_logentry'),
(36, 'Can view log entry', 9, 'view_logentry'),
(37, 'Can add turno', 10, 'add_turno'),
(38, 'Can change turno', 10, 'change_turno'),
(39, 'Can delete turno', 10, 'delete_turno'),
(40, 'Can view turno', 10, 'view_turno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$WhJRaiJYG2w56Pxhljo02v$8wZ2j+6F+lEeRwB1+9qf9s/j2fCP4nrCB/rP6F7G6sU=', '2024-07-05 23:28:43.164713', 1, 'daniel', '', '', 'danielosvaldoduda93@gmail.com', 1, 1, '2024-06-28 23:09:27.069089'),
(2, 'pbkdf2_sha256$720000$rRF9mB5xaBIeHRA3L3LzkP$pzD5kTJjaWokvjZW98QZMxASAKI8sAqmvDcnMiBav3w=', NULL, 1, 'DD', '', '', 'danielosvaldoduda93@gmail.com', 1, 1, '2024-06-28 23:20:32.881859');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-06-28 23:27:50.186096', '7', 'yo', 1, '[{\"added\": {}}]', 6, 1),
(2, '2024-06-28 23:28:10.498891', '8', 'lucia', 1, '[{\"added\": {}}]', 6, 1),
(3, '2024-06-28 23:30:23.387210', '8', 'lucia', 3, '', 6, 1),
(4, '2024-06-28 23:30:23.387210', '7', 'yo', 3, '', 6, 1),
(5, '2024-06-28 23:30:23.387210', '6', 'la casa', 3, '', 6, 1),
(6, '2024-06-28 23:30:23.403805', '5', '', 3, '', 6, 1),
(7, '2024-06-28 23:30:23.403805', '4', 'Kit 3 piezas', 3, '', 6, 1),
(8, '2024-06-28 23:30:23.403805', '3', '', 3, '', 6, 1),
(9, '2024-06-28 23:30:23.420739', '2', 'Kit 3 piezas', 3, '', 6, 1),
(10, '2024-06-28 23:31:58.299578', '9', 'Cepillo Bolsillo De Cerdas', 1, '[{\"added\": {}}]', 6, 1),
(11, '2024-06-28 23:32:36.805709', '10', 'Kit 3 PIEZAS BARBERIA', 1, '[{\"added\": {}}]', 6, 1),
(12, '2024-06-28 23:51:41.336127', '10', 'Kit 3 PIEZAS BARBERIA', 3, '', 6, 1),
(13, '2024-06-28 23:51:41.336127', '9', 'Cepillo Bolsillo De Cerdas', 3, '', 6, 1),
(14, '2024-06-28 23:53:00.295208', '11', 'CEPILLO BOLSILLO DE CERDAS', 1, '[{\"added\": {}}]', 6, 1),
(15, '2024-06-28 23:54:53.353008', '11', 'CEPILLO BOLSILLO DE CERDAS', 3, '', 6, 1),
(16, '2024-06-28 23:55:48.895880', '12', 'CEPILLO BOLSILLO DE CERDAS', 1, '[{\"added\": {}}]', 6, 1),
(17, '2024-06-28 23:56:17.582427', '13', 'KIT 3 PIEZAS BARBERIA', 1, '[{\"added\": {}}]', 6, 1),
(18, '2024-06-28 23:56:48.373746', '14', 'AFEITADORA METALICA BENETHON', 1, '[{\"added\": {}}]', 6, 1),
(19, '2024-06-28 23:57:15.001507', '15', 'MAQUINA CORTADORA DE PELO', 1, '[{\"added\": {}}]', 6, 1),
(20, '2024-06-28 23:57:41.279113', '16', 'AFEITADORA DE DOBLE HOJA PRIMAX', 1, '[{\"added\": {}}]', 6, 1),
(21, '2024-06-28 23:58:20.275926', '17', 'CORTADORA  DE PELO + KIT DE TIJERAS', 1, '[{\"added\": {}}]', 6, 1),
(22, '2024-06-28 23:58:55.197087', '18', 'TATTOO MACHINE', 1, '[{\"added\": {}}]', 6, 1),
(23, '2024-06-28 23:59:11.262440', '19', 'SECADOR DE PELO ALTRO', 1, '[{\"added\": {}}]', 6, 1),
(24, '2024-06-28 23:59:36.423791', '20', 'SECADOR DE PELO PROFESIONAL', 1, '[{\"added\": {}}]', 6, 1),
(25, '2024-06-29 00:11:36.268091', '12', 'CEPILLO BOLSILLO DE CERDAS', 3, '', 6, 1),
(26, '2024-06-29 00:12:21.342377', '21', 'hola', 1, '[{\"added\": {}}]', 6, 1),
(27, '2024-06-29 00:12:41.273925', '21', 'hola', 3, '', 6, 1),
(28, '2024-06-29 00:15:43.159835', '22', 'hola', 1, '[{\"added\": {}}]', 6, 1),
(29, '2024-06-29 00:16:01.569641', '22', 'hola', 3, '', 6, 1),
(30, '2024-06-29 00:21:25.129653', '23', 'holaaa', 1, '[{\"added\": {}}]', 6, 1),
(31, '2024-06-29 00:21:53.630310', '23', 'holaaa', 3, '', 6, 1),
(32, '2024-06-29 00:32:12.531878', '24', 'ssssss', 1, '[{\"added\": {}}]', 6, 1),
(33, '2024-06-29 00:32:26.679236', '24', 'ssssss', 3, '', 6, 1),
(34, '2024-06-29 00:35:25.544694', '25', 'aaaaa', 1, '[{\"added\": {}}]', 6, 1),
(35, '2024-06-29 00:35:40.587765', '25', 'aaaaa', 3, '', 6, 1),
(36, '2024-06-29 00:37:15.226664', '26', 'dddddd', 1, '[{\"added\": {}}]', 6, 1),
(37, '2024-06-29 00:37:33.383318', '26', 'dddddd', 3, '', 6, 1),
(38, '2024-06-29 00:45:04.783364', '27', 'aaaaa', 1, '[{\"added\": {}}]', 6, 1),
(39, '2024-06-29 00:45:18.533315', '27', 'aaaaa', 3, '', 6, 1),
(40, '2024-06-30 17:38:52.465691', '14', 'AFEITADORA METALICA BENETHON', 3, '', 6, 1),
(41, '2024-06-30 17:39:41.226501', '15', 'MAQUINA CORTADORA DE PELO', 3, '', 6, 1),
(42, '2024-06-30 17:40:14.924576', '18', 'TATTOO MACHINE', 3, '', 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'admin', 'logentry'),
(2, 'auth', 'group'),
(1, 'auth', 'permission'),
(3, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(7, 'gestion_peluqueria', 'carrito'),
(8, 'gestion_peluqueria', 'carritoitem'),
(6, 'gestion_peluqueria', 'producto'),
(10, 'gestion_peluqueria', 'turno'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-28 01:05:39.251010'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-06-28 01:05:39.381044'),
(3, 'auth', '0001_initial', '2024-06-28 01:05:40.337331'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-06-28 01:05:40.458803'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-06-28 01:05:40.487241'),
(6, 'auth', '0004_alter_user_username_opts', '2024-06-28 01:05:40.510119'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-06-28 01:05:40.606538'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-06-28 01:05:40.611167'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-28 01:05:40.626416'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-06-28 01:05:40.733333'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-28 01:05:40.756076'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-06-28 01:05:40.834274'),
(13, 'auth', '0011_update_proxy_permissions', '2024-06-28 01:05:40.849705'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-28 01:05:40.923190'),
(15, 'gestion_peluqueria', '0001_initial', '2024-06-28 01:05:41.132693'),
(16, 'sessions', '0001_initial', '2024-06-28 01:05:41.234197'),
(17, 'gestion_peluqueria', '0002_alter_producto_imagen', '2024-06-28 02:14:32.595282'),
(18, 'gestion_peluqueria', '0003_remove_producto_imagen', '2024-06-28 02:21:42.306503'),
(19, 'gestion_peluqueria', '0004_carritoitem', '2024-06-28 03:57:03.059279'),
(20, 'gestion_peluqueria', '0005_delete_carritoitem', '2024-06-28 04:13:51.852700'),
(21, 'gestion_peluqueria', '0006_producto_imagen', '2024-06-28 23:00:48.254736'),
(22, 'admin', '0001_initial', '2024-06-28 23:19:11.919892'),
(23, 'admin', '0002_logentry_remove_auto_add', '2024-06-28 23:19:11.919892'),
(24, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-28 23:19:11.968382'),
(25, 'gestion_peluqueria', '0007_alter_producto_imagen_alter_producto_nombre_and_more', '2024-06-30 17:17:04.739181'),
(26, 'gestion_peluqueria', '0008_turno', '2024-06-30 22:48:53.795141');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bbm0s8x55vc7r3v3sava5tsolchybkzj', '.eJxVjMsOwiAQRf-FtSE8y-DSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2el3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VubUlCAV5NV1vskCJxGAul80pI0IZQIxoiCCGgcgspCOoXFWxNJTez9AdfHN7A:1sPUWZ:i9I1nSU3vNhYmAvFJUymlnfqob6xgeY-pvtNWLIYiMI', '2024-07-18 22:01:55.059497'),
('iiaqboba8jhdjbsx594tiq4r5qivwvos', '.eJxVjMsOwiAQRf-FtSE8y-DSvd9ABhikaiAp7cr479qkC93ec859sYDbWsM2aAlzZmcm2el3i5ge1HaQ79hunafe1mWOfFf4QQe_9kzPy-H-HVQc9VubUlCAV5NV1vskCJxGAul80pI0IZQIxoiCCGgcgspCOoXFWxNJTez9AdfHN7A:1sNKqy:iL4OhxHXgu_S0VlHyiSlFlysjj18Ijr7QVaZ6vG6WCk', '2024-07-12 23:18:04.930142');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_peluqueria_carrito`
--

CREATE TABLE `gestion_peluqueria_carrito` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL CHECK (`cantidad` >= 0),
  `producto_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_peluqueria_producto`
--

CREATE TABLE `gestion_peluqueria_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `gestion_peluqueria_producto`
--

INSERT INTO `gestion_peluqueria_producto` (`id`, `nombre`, `precio`, `imagen`) VALUES
(16, 'AFEITADORA DE DOBLE HOJA PRIMAX', 12000.00, 'imagenes/articulo5_Uw1u0cr.jpeg'),
(17, 'CORTADORA  DE PELO + KIT DE TIJERAS', 18000.00, 'imagenes/articulo6.jpeg'),
(19, 'SECADOR DE PELO ALTRO', 32000.00, 'imagenes/articulo8.jpeg'),
(29, 'MAQUINA CORTADORA DE PELO', 18000.00, 'imagenes/articulo4.jpeg'),
(30, 'TATOO MACHINE', 54000.00, 'imagenes/articulo7.jpeg'),
(31, 'SECADOR DE PELO PROFESIONAL', 42800.00, 'imagenes/articulo9.jpeg'),
(32, 'CEPILLO BOLSILLO DE CERDAS', 15000.00, 'imagenes/articulo1_RvTCb1V.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_peluqueria_turno`
--

CREATE TABLE `gestion_peluqueria_turno` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `gestion_peluqueria_carrito`
--
ALTER TABLE `gestion_peluqueria_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gestion_peluqueria_c_producto_id_bb20b800_fk_gestion_p` (`producto_id`);

--
-- Indices de la tabla `gestion_peluqueria_producto`
--
ALTER TABLE `gestion_peluqueria_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestion_peluqueria_turno`
--
ALTER TABLE `gestion_peluqueria_turno`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `gestion_peluqueria_carrito`
--
ALTER TABLE `gestion_peluqueria_carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `gestion_peluqueria_producto`
--
ALTER TABLE `gestion_peluqueria_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `gestion_peluqueria_turno`
--
ALTER TABLE `gestion_peluqueria_turno`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `gestion_peluqueria_carrito`
--
ALTER TABLE `gestion_peluqueria_carrito`
  ADD CONSTRAINT `gestion_peluqueria_c_producto_id_bb20b800_fk_gestion_p` FOREIGN KEY (`producto_id`) REFERENCES `gestion_peluqueria_producto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
