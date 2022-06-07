<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
		<link href="http://localhost/tienda_virtual/Assets/css/normalize.css" rel="stylesheet">

	<!-- Bootstrap core CSS -->
	<link href="http://localhost/tienda_virtual/Assets/css/bootstrap.min.css" rel="stylesheet">


	<script src="http://localhost/tienda_virtual/Assets/js/jquery-1.10.2.js"> </script>
	<script src="http://localhost/tienda_virtual/Assets/js/bootstrap.js"> </script>
	<link href='https://fonts.googleapis.com/css?family=Nosifer|League+Script|Yellowtail|Permanent+Marker|Codystar|Eater|Molle:400italic|Snowburst+One|Shojumaru|Frijole|Gloria+Hallelujah|Calligraffitti|Tangerine|Monofett|Monoton|Arbutus|Chewy|Playball|Black+Ops+One|Rock+Salt|Pinyon+Script|Orbitron|Sacramento|Sancreek|Kranky|UnifrakturMaguntia|Creepster|Pirata+One|Seaweed+Script|Miltonian|Herr+Von+Muellerhoff|Rye|Jacques+Francois+Shadow|Montserrat+Subrayada|Akronim|Faster+One|Megrim|Cedarville+Cursive|Ewert|Plaster' rel='stylesheet' type='text/css'>

	<link href="http://localhost/tienda_virtual/Assets/tdesignAPI/css/api.css" rel="stylesheet">
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

	<script type="text/javascript" src="http://localhost/tienda_virtual/Assets/tdesignAPI/js/html2canvas.js"></script>

	<script src="http://localhost/tienda_virtual/Assets/tdesignAPI/js/jquery.form.js"></script>
	<script src="http://localhost/tienda_virtual/Assets/tdesignAPI/js/mainapp.js"></script>
	<link rel="stylesheet" href="http://localhost/tienda_virtual/Assets/tdesignAPI/css/jquery-ui.css" />
	<script src="http://localhost/tienda_virtual/Assets/tdesignAPI/js/jquery-ui.js"></script>
</head>
<body>
	<main>
<script type="text/javascript">
	function changeval() {
		$total = parseInt($("#small").val()) + parseInt($("#medium").val()) + parseInt($("#large").val()) + parseInt($("#xlarge").val()) + parseInt($("#xxlarge").val());
		$('.small').val($("#small").val());
		$('.medium').val($("#medium").val());
		$('.large').val($("#large").val());
		$('.xlarge').val($("#xlarge").val());
		$('.xxlarge').val($("#xxlarge").val());
		$('.total').val($total);
	}

	function changeval2() {
		$total = parseInt($("#small2").val()) + parseInt($("#medium2").val()) + parseInt($("#large2").val()) + parseInt($("#xlarge2").val()) + parseInt($("#xxlarge2").val());
		//alert($total);
		$('.small').val($("#small2").val());
		$('.medium').val($("#medium2").val());
		$('.large').val($("#large2").val());
		$('.xlarge').val($("#xlarge2").val());
		$('.xxlarge').val($("#xxlarge2").val());
		$('.total').val($total);
	}

	function b() {
		$('#custom_text').toggleClass('bold_text');
		$("#bold_button").toggleClass('box-shadow', '0 0 10px inset #3c3c3c');
	}

	function i() {
		$('#custom_text').toggleClass('italic_text');
	}

	function changeFont(_name) {
		$('#custom_text').css("font-family", _name);
	}

	function changeFontSize(_size) {
		$('#custom_text').css("font-size", _size);
	}

	function changeColor(_color) {
		$('#custom_text').css("color", _color);
	}
</script>
<div class="container design_api_container">
	<div class='design_api'>
		<!--=============================================================-->
		<div id="menu">
			<div class="menu_option sel_type">

			</div>
			<div class="menu_option sel_color">
				<i class="fa fa-paint-brush fa-3x"></i>

			</div>
			<div class="menu_option sel_art">
				<i class="fa fa-camera-retro fa-3x"></i>
			</div>
			<div class="menu_option sel_custom_icon">
				<span class="fa fa-folder fa-3x"></span>
			</div>
			<div class="menu_option sel_text">
				<i class="fa fa-font fa-3x"></i>

			</div>
		</div>
		<!--=============================================================-->
		<div id='options'>
			<div class="T_type">
				<div id="radio1"><img src="http://localhost/tienda_virtual/Assets/tdesignAPI/images/menu_icons/submenu/hoodie_sincapota.png" width="100%" height="100%" />
				</div>
				<div id="radio3"><img src="http://localhost/tienda_virtual/Assets/tdesignAPI/images/menu_icons/submenu/hoodie.png" width="100%" height="100%" />
				</div>
			</div>

			<div class="color_pick">
				<div class="color_radio_div" id="red"></div>
				<div class="color_radio_div" id="black"></div>
				<div class="color_radio_div" id="white"></div>
				<div class="color_radio_div" id="navy"></div>
				<div class="color_radio_div" id="green"></div>
			</div>
			<div class="default_samples">


				<?php
				$files1 = ['alien.png', 'boo.png', ''];
				foreach ($files1 as &$value) {
					if (strpos($value, '.png') !== false) {
						echo '<div class="sample_icons"><img src="http://localhost/tienda_virtual/Assets/tdesignAPI/images/Images/' . $value . '" width="100%" height="100%" /></div>';
					} elseif (strpos($value, '.') === false) {
					}
				}
				?>
			</div>
			<div class="custom_icon">
				<form id="form1" runat="server">
					<span class="btn btn-default btn-file"> MI ORDENADOR
						<input type='file' id="imgInp" />
					</span>

				</form>
			</div>

			<div class="custom_font">

				<select id="fs" onchange="changeFont(this.value);">
					<option value="arial">Arial</option>
					<option value="Nosifer, cursive">Nosifer</option>
					<option value="League Script, cursive">League Script</option>
					<option value="Yellowtail, cursive">Yellowtail</option>
					<option value="Permanent Marker, cursive">Permanent Marker</option>
					<option value="Codystar, cursive">Codystar</option>
					<option value="'Eater', cursive">Eater</option>
					<option value="Molle, cursive">Molle</option>
					<option value="Snowburst One, cursive">Snowburst One</option>
					<option value="Shojumaru, cursive">Shojumaru</option>
					<option value="Frijole, cursive">Frijole</option>
					<option value="Gloria Hallelujah, cursive">Gloria Hallelujah</option>
					<option value="Calligraffitti, cursive">Calligraffitti</option>
					<option value="Tangerine, cursive">Tangerine</option>
					<option value="Monofett, cursive">Monofett</option>
					<option value="Monoton, cursive">Monoton</option>
					<option value="Arbutus, cursive">Arbutus</option>
					<option value="Chewy, cursive">Chewy</option>
					<option value="Playball, cursive">Playball</option>
					<option value="Black Ops One, cursive">Black Ops One</option>
					<option value="'Rock Salt', cursive">Rock Salt</option>
					<option value=" 'Pinyon Script', cursive">Pinyon Script</option>
					<option value="'Orbitron', sans-serif">Orbitron</option>
					<option value="'Sacramento', cursive">acramento</option>
					<option value="'Sancreek', cursive">Sancreek</option>
					<option value="'Kranky', cursive">Kranky</option>
					<option value="'UnifrakturMaguntia', cursive">UnifrakturMaguntia</option>
					<option value="'Creepster', cursive">Creepster</option>
					<option value="'Pirata One', cursive">Pirata One</option>
					<option value=" 'Seaweed Script', cursive">Seaweed Script</option>
					<option value=" 'Miltonian', cursive">Miltonian</option>
					<option value=" 'Herr Von Muellerhoff', cursive">Herr Von Muellerhoff</option>
					<option value=" 'Rye', cursive"> 'Rye'</option>
					<option value=" 'Jacques Francois Shadow', cursive">Jacques Francois Shadow</option>
					<option value=" 'Montserrat Subrayada', sans-serif">Montserrat Subrayada</option>
					<option value=" 'Akronim', cursive">Akronim</option>
					<option value=" 'Faster One', cursive">Faster One</option>
					<option value=" 'Megrim', cursive">Megrim</option>
					<option value=" 'Cedarville Cursive', cursive">Cedarville Cursive</option>
					<option value=" 'Ewert', cursive">Ewert</option>
					<option value="'Plaster', cursive">Plaster</option>
					<option value="verdana">Verdana</option>
					<option value="impact">Impact</option>
					<option value="ms comic sans">MS Comic Sans</option>
				</select>
				<input type="color" name="favcolor" onChange="changeColor(this.value);" placeholder="Color Name" />
				<div class="font_styling">

					<span id="bold_button" onclick="b();"><b>B</b></span>
					<span id="italic_button" onclick="i();"><i>I</i></span>

					<select id="font_size" onchange="changeFontSize(this.value);">
						<?php
						for ($i = 10; $i <= 140; $i += 2) {
						?>

							<option value="<?php echo $i; ?>px"><?php echo $i; ?>px</option>
						<?php
						}
						?>


					</select>
				</div>
				<textarea id="custom_text" placeholder="Escribe aquí..."></textarea>
				<button type="button" class="btn btn-primary" id="apply_text">
					APLICAR
				</button>

			</div>
		</div>
		<!--=============================================================-->
		<!--=========================preview start====================================-->

		<div id='preview_t'>
			<div id="preview_front">
				<div class="front_print">

				</div>
			</div>
			<div id="preview_back">
				<div class="back_print">

				</div>
			</div>

		</div>
		<!--=============================================================-->
		<!--======================view start=======================================-->

		<div id='view_mode'>
			<div class="mode"><img id="o_front" src="http://localhost/tienda_virtual/Assets/tdesignAPI/images/product/tee/black/black_front.png" width="100%" height="80%" />FRENTE
			</div>
			<div class="mode"><img id="o_back" src="http://localhost/tienda_virtual/Assets/tdesignAPI/images/product/tee/black/black_back.png" width="100%" height="80%" />ATRAS
			</div>
			<div class="mode">
				<i class="fa fa-binoculars fa-4x preview_images" id="preview_images" data-toggle="modal" data-target=".bs-example-modal-lg"></i>VER
			</div>
		</div>
		<!--=====================View Ends========================================-->
		<div id="overview">
			<div class="">

				<table class="table">
					<tr>
						<th>Talla</th>
						<th>Cantidad</th>
					</tr>
					<tr>
						<td><b>S</b></td>
						<td>
							<input id="small" onchange="changeval()" name="small" type="number" value="1" class="form-control small input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>M</b></td>
						<td>
							<input id="medium" onchange="changeval()" name="medium" type="number" value="0" class="form-control medium input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>L</b></td>
						<td>
							<input id="large" onchange="changeval()" name="large" type="number" value="0" class="form-control large input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>XL</b></td>
						<td>
							<input id="xlarge" onchange="changeval()" name="xlarge" type="number" value="0" class="form-control xlarge input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>XXL</b></td>
						<td>
							<input id="xxlarge" onchange="changeval()" name="xxlarge" type="number" value="0" class="form-control xxlarge input-md" min=0 max=99999 />
						</td>
					</tr>
					<tr>
						<td><b>Total</b></td>
						<td>
							<input id="total" name="total" type="number" value="1" class="form-control total input-md" disabled min=1 max=99999 />
						</td>
					</tr>

				</table>

				<button type="button" class="btn btn-primary btn-block preview_images" data-toggle="modal" data-target=".bs-example-modal-lg">
					CONTINUAR
				</button>
			</div>
		</div>
	</div>

	<div class="layer">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close close_img" data-dismiss="modal">
					<span aria-hidden="true">&times;</span><span class="sr-only close_img">Close</span>
				</button>
				<h4 class="modal-title">HOODIE</h4>
			</div>
			<div class="modal-body">

				<div id="image_reply"></div>
				<div class="modal-footer">
					<div class="row">
						
							<div class="col-md-1">
								<button type="button" class="btn btn-default close_img" data-dismiss="modal">
									CERRAR
								</button>
							</div>


							<div class="col-md-6">
								<center>
									<div class="form-group">
										<select name="talla" id="talla_producto" class="form-control" style="width: 100px;">
											<option value="s">S</option>
											<option value="m">M</option>
											<option value="l">L</option>
											<option value="x">X</option>
											<option value="xl">XL</option>
											<option value="xxl">XXL</option>
										</select>
									</div>	
								</center>
								
							</div>
							
							<input type="hidden" name="img_front" id="img_front" value="" />
							<input type="hidden" name="img_back" id="img_back" value="" />
							<button type="button" id="btn-add-custom-product" class="btn btn-primary">Agregar Carrito</button>

					

					</div>
				</div>
			</div>

		</div>
	</div>

</div>
<script>
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				image_icon(e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}


	$('#btn-add-custom-product').click(function(){
		console.log('Guardando...')
		const formData = new FormData();

		formData.append("img_front", $('#img_front').val());
		formData.append("img_back", $('#img_back').val());
		formData.append("talla", $('#talla_producto').val());

		let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
		request.open("POST",'http://localhost/tienda_virtual/Personalizar/createCustomProduct',true);
	    request.send(formData);
	    request.onreadystatechange = function(){
	        if(request.readyState != 4) return;
	        if(request.status == 200){
				const response = JSON.parse(request.responseText);

				if(response.status){
					addProductToCart(response.result);
				} else {
					alert('Error al crear el producto: ' + response.message)
				}
	        } 
	        return false;
	    }
	})

	function addProductToCart(productId){
		let request = (window.XMLHttpRequest) ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
	    let ajaxUrl = 'http://localhost/tienda_virtual/Personalizar/addCarrito'; 

	    let formData = new FormData();
	    formData.append('id', productId);
	    formData.append('cant', '1');
	    request.open("POST",ajaxUrl,true);
	    request.send(formData);

	    request.onreadystatechange = function(){
	        if(request.readyState != 4) return;
	        if(request.status == 200){
	        	let objData = JSON.parse(request.responseText);
				console.log(objData);
	        	if(objData.status){
		            document.querySelector("#productosCarrito").innerHTML = objData.htmlCarrito;
		            //document.querySelectorAll(".cantCarrito")[0].setAttribute("data-notify",objData.cantCarrito);
		            //document.querySelectorAll(".cantCarrito")[1].setAttribute("data-notify",objData.cantCarrito);
		            const cants = document.querySelectorAll(".cantCarrito");
					cants.forEach(element => {
						element.setAttribute("data-notify",objData.cantCarrito)
					});
					alert(nameProduct + "¡Se agregó al carrito!");
	        	}else{
	        		alert('Ha ocurrido un error al agregar el producto al carrito!');
	        	}
	        } 
	        return false;
	    }
	}


	$("#imgInp").change(function() {
		readURL(this);
	});
</script> 
	</main>
</body>
</html>