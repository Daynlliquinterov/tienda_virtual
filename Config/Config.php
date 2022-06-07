<?php
const BASE_URL = "http://localhost/tienda_virtual";
//Zona horaria
date_default_timezone_set('America/Bogota');

//Datos de conexión a Base de Datos
const DB_HOST = "localhost";
const DB_NAME = "db_tiendavirtual";
const DB_USER = "root";
const DB_PASSWORD = "";
const DB_CHARSET = "utf8";

//Para envío de correo
const ENVIRONMENT = 0;

//Deliminadores decimal y millar Ej. 24,1989.00
const SPD = ".";
const SPM = ",";

//Simbolo de moneda
const SMONEY = "$";
const CURRENCY = "COP";

//Datos envio de correo
const NOMBRE_REMITENTE = "Tienda Virtual Hoodies Neeo";
const EMAIL_REMITENTE = "no-reply@hoodiesNeeo.com";
const NOMBRE_EMPESA = "Tienda Virtual Hoodies Neeo";

const DESCRIPCION = "La mejor tienda en línea de venta de busos personalizados.";
const SHAREDHASH = "TiendaVirtualHoodiesNeeo";

//Datos Empresa
const MENSAJEX = " -- Si tienes un diseño propio para estampar, escríbenos al interno para tener tu imagen en la mejor resolución y calidad posible. --";
const DIRECCION = "Cra. 4 #16-48, Pereira, Risaralda";
const TELEMPRESA = "+(606)3134374";
const WHATSAPP = "+573197406482";
const EMAIL_EMPRESA = "info@hoodiesNeeo.com";
const EMAIL_PEDIDOS = "info@hoodiesNeeo.com";
const EMAIL_SUSCRIPCION = "info@hoodiesNeeo.com";
const EMAIL_CONTACTO = "info@hoodiesNeeo.com";

const CAT_SLIDER = "1,4,5,6";
const CAT_BANNER = "4,5,6";
const CAT_FOOTER = "1,2,3,4,5,6";

//Datos para Encriptar / Desencriptar
const KEY = 'hoodiesNeeo';
const METHODENCRIPT = "AES-128-ECB";

//Envío
const COSTOENVIO = 5000;

//Módulos
const MDASHBOARD = 1;
const MUSUARIOS = 2;
const MCLIENTES = 3;
const MPRODUCTOS = 4;
const MPEDIDOS = 5;
const MCATEGORIAS = 6;
const MSUSCRIPTORES = 7;
const MDCONTACTOS = 8;
const MDPAGINAS = 9;

//Páginas
const PINICIO = 1;
const PTIENDA = 2;
const PCARRITO = 3;
const PNOSOTROS = 4;
const PCONTACTO = 5;
const PPREGUNTAS = 6;
const PTERMINOS = 7;
const PERROR = 9;

//Roles
const RADMINISTRADOR = 1;
const RSUPERVISOR = 2;
const RCLIENTES = 3;

const STATUS = array('Completo', 'Aprobado', 'Cancelado', 'Reembolsado', 'Pendiente', 'Entregado');

//Productos por página
const CANTPORDHOME = 8;
const PROPORPAGINA = 8;
const PROCATEGORIA = 8;
const PROBUSCAR = 4;

//REDES SOCIALES
const FACEBOOK = "https://www.facebook.com/Hoodiesneeoco-121598916129066";
const INSTAGRAM = "https://www.instagram.com/neeo.dtf/";
