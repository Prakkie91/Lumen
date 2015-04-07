
{{ content() }}



<!DOCTYPE html>
<html charset="utf-8">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=1">
	<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="0" />
	
	<title>LUMEN</title>

	<link rel="stylesheet" type="text/css" href="/lib/lumen/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="/lib/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/lib/lumen/lumen_font/style.css">
	<link rel="stylesheet" type="text/css" href="/lib/lumen/montserrat_font/font.css">
	<link rel="stylesheet" type="text/css" href="/lib/lumen/css/app.css">

	<script src="/lib/jquery/jquery.min.js"></script>
	
</head>

<body class="lumenHome">

	<!-- Fixed navbar -->

	    <section class="navbar lumenHeaderWrapper navbar-default">
	      <div class="container-fluid">
	      	<div class="row">
	      		<div class="lumenHeader" style="border-bottom: 1px solid #fff;padding:5px 0;margin:0;height:50px;">
			      	<div class="col-xs-2 col-sm-1">&nbsp;</div>
			      	<div class="col-xs-10 col-sm-11">
			      		<form class="form-inline lumenRight lumenHomeLoginForm" style="padding:0;">
							<input type="text" class="form-control" value="Register">
						</form>
			      	</div>
		      	</div>
	      	</div>
	      </div>
	    </section> 

	<!-- End fixed navbar -->


	    <section class="lumenSubPanelWrapper navbar navbar-default" style="z-index:2;">
	    	<div class="container-fluid">
	    		<div class="row">
	    			<div class="lumenSubPanel" style="border-bottom: 1px solid #fff;">
	    				<div class="col-xs-2 col-sm-1" style="border-right: 1px solid #fff;text-align:right;padding-right:0;height:100%;padding:8px 0;">
	    					<div class="icon icon-lumen_cog" style="float:right;clear:none;text-align:right;color:#fff;color:rgba(255, 255, 255, .7);padding-top:0px;"></div>
	    				</div>
	    				<div class="col-xs-10 col-sm-11" style="padding:8px 15px;">
		    				<form class="form-inline lumenRight lumenHomeLoginForm">
								<input type="text" class="form-control" id="lumenStartDate" name="lumenStartDate" value="User Name">
								<input type="text" class="form-control" id="lumenEndDate" name="lumenEndDate" value="Password">
								<input type="submit" class="form-control" value="Log On">
							</form>
	    				</div>
	    			</div>
	    		</div>
	    	</div>
	    </section>

    	<img src="lib/lumen/images/logo_lumen.png" width="302" style="width:302px;height:auto;position:absolute;z-index:9999;" class="lumenHomeLogo">

    <footer class="footer lumenSticky">
     	<div class="container">
     		<div class="row">
				<div class="col-xs-12">
					Registered 2015<br>Lumen PTY Ltd

				</div>
			</div>
     	</div>
    </footer>

	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function(){
		// Position home logo
			function lumenPositionLogo(){
				var windowHeight = $(document).height();
				var windowWidth = $(document).width();
				console.log(windowHeight);
				var topOffset = $(".lumenHeaderWrapper").position().top;
				var logoHeight = $(".lumenHomeLogo").height();
				var logoWidth = $(".lumenHomeLogo").width();
				var positionLogoAt = (((windowHeight-topOffset))/2);
				var positionLogoAtWidth = ((windowWidth/2)-(logoWidth/2));
				console.log(positionLogoAtWidth);
				$(".lumenHomeLogo").css("top",positionLogoAt+"px");
				$(".lumenHomeLogo").css("left",positionLogoAtWidth+"px");
			}
			lumenPositionLogo();
		// End position home logo
		$(window).on("resize", function(){
			lumenPositionLogo();
		})
		$(window).on("orientationchange", function(){
			lumenPositionLogo();
		})
	});
	</script>
</body>
</html>








<div class="row">

    <div class="col-md-6">
        <div class="page-header">
            <h2>Log In</h2>
        </div>
        {{ form('session/start', 'role': 'form') }}
            <fieldset>
                <div class="form-group">
                    <label for="email">Username/Email</label>
                    <div class="controls">
                        {{ text_field('email', 'class': "form-control") }}
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="controls">
                        {{ password_field('password', 'class': "form-control") }}
                    </div>
                </div>
                <div class="form-group">
                    {{ submit_button('Login', 'class': 'btn btn-primary btn-large') }}
                </div>
            </fieldset>
        </form>
    </div>

    <div class="col-md-6">

        <div class="page-header">
            <h2>Don't have an account yet?</h2>
        </div>

        <p>Create an account offers the following advantages:</p>
        <ul>
            <li>Create, track and export your invoices online</li>
            <li>Gain critical insights into how your business is doing</li>
            <li>Stay informed about promotions and special packages</li>
        </ul>

        <div class="clearfix center">
            {{ link_to('register', 'Sign Up', 'class': 'btn btn-primary btn-large btn-success') }}
        </div>
    </div>

</div>
