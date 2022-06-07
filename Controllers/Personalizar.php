<?php

require_once("Models/TProducto.php");


class Personalizar extends Controllers
{
	use TProducto;
	public function __construct()
	{
		parent::__construct();
		session_start();
	}

	public function personalizar()
	{
		$this->views->getView($this, "personalizar", []);
	}

	public function createCustomProduct(){
		if($_POST){
			$talla = $_POST['talla'];
			$img_front = $_POST['img_front'];
			$img_back = $_POST['img_back'];

			try{
				$result = $this->createProduct($talla, $img_front, $img_back);
				echo json_encode(['status' => true, 'result' => $result]);
			} catch(\Throwable $e) {
				echo json_encode(['status' => false, 'message' => $e->getMessage()]);	
			}
		} else {
			echo json_encode(['status' => false]);
		}
	}

	public function addCarrito()
	{
		if ($_POST) {
			$arrCarrito = array();
			$cantCarrito = 0;
			$idproducto = $_POST['id'];
			$cantidad = $_POST['cant'];
			if (is_numeric($idproducto) and is_numeric($cantidad)) {
				$arrInfoProducto = $this->getProductoIDT($idproducto);
				if (!empty($arrInfoProducto)) {
					$arrProducto = array(
						'idproducto' => $idproducto,
						'producto' => $arrInfoProducto['nombre'],
						'cantidad' => $cantidad,
						'precio' => $arrInfoProducto['precio'],
						'imagen' =>  $arrInfoProducto['img'] ?? $arrInfoProducto['images'][0]['url_image']
					);
					if (isset($_SESSION['arrCarrito'])) {
						$on = true;
						$arrCarrito = $_SESSION['arrCarrito'];
						for ($pr = 0; $pr < count($arrCarrito); $pr++) {
							if ($arrCarrito[$pr]['idproducto'] == $idproducto) {
								$arrCarrito[$pr]['cantidad'] += $cantidad;
								$on = false;
							}
						}
						if ($on) {
							array_push($arrCarrito, $arrProducto);
						}
						$_SESSION['arrCarrito'] = $arrCarrito;
					} else {
						array_push($arrCarrito, $arrProducto);
						$_SESSION['arrCarrito'] = $arrCarrito;
					}

					foreach ($_SESSION['arrCarrito'] as $pro) {
						$cantCarrito += $pro['cantidad'];
					}
					$htmlCarrito = "";
					$htmlCarrito = getFile('Template/Modals/modalCarrito', $_SESSION['arrCarrito']);
					$arrResponse = array(
						"status" => true,
						"msg" => '¡Se agregó al carrito!',
						"cantCarrito" => $cantCarrito,
						"htmlCarrito" => $htmlCarrito
					);
				} else {
					$arrResponse = array("status" => false, "msg" => 'Producto no existente.');
				}
			} else {
				$arrResponse = array("status" => false, "msg" => 'Dato incorrecto.');
			}
			echo json_encode($arrResponse, JSON_UNESCAPED_UNICODE);
		}
		die();
	}
}
