<!DOCTYPE html>
<html lang="en">
<head>
	<title>Digital Registry</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<!-- Loading Icon -->
                <div class="loader-backdrop">
                    <div id="loader-div"></div>
                    <img id="loader-img" src="images/loading.gif">
                </div>

	<div class="bg-contact2" style="background-image: url('images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<!-- <form class="contact2-form validate-form"> -->
					<span class="contact2-form-title">
						Find Your Transaction!!!
					</span>

					<div class="wrap-input2 validate-input" data-validate="Pan detail is required">
						<input class="input2" type="text" name="pan" id="pan">
						<span class="focus-input2" data-placeholder="PAN"></span>
					</div>
					<div class="wrap-input2 validate-input" data-validate="Name detail is required">
						<input class="input2" type="text" name="name" id="name">
						<span class="focus-input2" data-placeholder="Name"></span>
					</div>
					<div class="wrap-input2 validate-input" data-validate="Address detail is required">
						<input class="input2" type="text" name="address" id="address">
						<span class="focus-input2" data-placeholder="Address"></span>
					</div>
					<div class="wrap-input2 validate-input" data-validate="Aadhaar detail is required">
						<input class="input2" type="text" name="aadhaar" id="aadhaar">
						<span class="focus-input2" data-placeholder="Aadhaar"></span>
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn" id="search">
								Search
							</button>
						</div>
					</div>
				<!-- </form> -->
				
				

				<div class="modal fade" id="myModal">
					    <div class="modal-dialog modal-lg">
					      	<div class="modal-content">
					      
					        <!-- Modal Header -->
					        <div class="modal-header">
					          	<h4 class="modal-title"></h4>
					          	<button type="button" class="close" data-dismiss="modal">&times;</button>
					        </div>
					        
					        <!-- Modal body -->
					        <div class="modal-body">
					          	<table class = "table table-hover table-bordered">
					          		<thead>
					          			<tr>
					          				<th>Transaction ID</th>
					          				<th>PDF</th>
					          			</tr>
					          		</thead>
					          		<tbody id="content-tbody">
					          			<tr>
					          				
					          			</tr>
					          		</tbody>
					          	</table>
					        </div>
					        
					        <!-- Modal footer -->
					        <div class="modal-footer">
					          	<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					        </div>
					        
					    </div>
				    </div>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>


	<script type="text/javascript">

		$(document).ajaxStart(function(){
            $(".loader-backdrop").css("display", "block");
        });

        $(document).ajaxComplete(function(){
            $(".loader-backdrop").css("display", "none");
        });

		//AJAX Request
		

	</script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>
 -->
</body>
</html>
