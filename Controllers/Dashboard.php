<?php

class Dashboard extends Controllers
{
	public function __construct()
	{
		parent::__construct();
		session_start();

		if (empty($_SESSION['login'])) {
			header('Location: ' . base_url() . '/login');
			die();
		}
		getPermisos(MDASHBOARD);
	}

	public function dashboard()
	{
		$data['page_id'] = 2;
		$data['page_tag'] = "Dashboard - Tienda Virtual Hoodies Neeo";
		$data['page_title'] = "Dashboard - Tienda Virtual Hoodies Neeo";
		$data['page_name'] = "dashboard";
		$data['page_functions_js'] = "functions_dashboard.js";
		$data['usuarios'] = $this->model->cantUsuarios();
		$data['clientes'] = $this->model->cantClientes();
		$data['productos'] = $this->model->cantProductos();
		$data['pedidos'] = $this->model->cantPedidos();
		$data['pedidos'] = $this->model->cantPedidos();
		$data['lastOrders'] = $this->model->lastOrders();
		$data['productosTen'] = $this->model->productosTen();

		$anio = date('Y');
		$mes = date('m');
		if ($_SESSION['userData']['idrol'] == RCLIENTES) {
			$this->views->getView($this, "dashboardCliente", $data);
		} else {
			$this->views->getView($this, "dashboard", $data);
		}
	}
}
