<!-- Fixed navbar -->
<section class="navbar lumenHeaderWrapper navbar-default navbar-fixed-top">
  <div class="container">
    <div class="row">
      <div class="lumenHeader">
        <div class="col-xs-6">
          <h2 class="brand">Your Brand</h2>
        </div>
        <div class="col-xs-6">
          <h1 class="logo">LUMEN</h1>
        </div>
      </div>
    </div>
  </div>
</section>


<section class="lumenSubPanelWrapper">
  <div class="container">
    <div class="row">
      <div class="lumenSubPanel">
        <div class="col-xs-2 col-sm-2">
          <span class="icon icon-lumen_cog"></span>
        </div>
        <div class="col-xs-7 col-sm-8">
          <span class="lumenMuted">
            User Name
          </span>
        </div>
        <div class="col-xs-3 col-sm-2">
          <a class="lumenBtn" href="/session/end">
            Log out
          </a>
        </div>
      </div>
    </div>
  </div>
</section>



<!-- Begin page content -->
<main class="lumenMainWrapper" id="lumenViewport">
  <div class="container">
    {{ content() }}
  </div>
</main>

<footer class="footer lumenSticky">
  <div class="container">
    <div class="row">
      <div class="lumenFooterNavWrapper lumenSix">
        <div class="lumenNavigationTab">
          <a href="#">
            <i class="icon lumenIcon icon-lumen_home"></i>
            <br>
    						Home
    					
          </a>
        </div>
        <div class="lumenNavigationTab">

          <a href="#">
            <i class="icon lumenIcon icon-lumen_wallet"></i>
            <br>
							Spend
						
          </a>
        </div>
        <div class="lumenNavigationTab lumenActive">
          <a href="#">
            <i class="icon lumenIcon icon-lumen_community"></i>
            <br>
							Reach
						
          </a>
        </div>
        <div class="lumenNavigationTab">
          <a href="#">
            <i class="icon lumenIcon icon-lumen_magnet"></i>
            <br>
							Engagement
						
          </a>
        </div>
        <div class="lumenNavigationTab">
          <a href="#">
            <i class="icon lumenIcon icon-lumen_lights"></i>
            <br>
							Traffic
						
          </a>
        </div>
        <div class="lumenNavigationTab">
          <a href="#">
            <i class="icon lumenIcon icon-lumen_cart"></i>
            <br>
							Sales
						
          </a>
        </div>
      </div>
    </div>
  </div>
</footer>

<script src="lib/bootstrap/js/bootstrap.min.js"></script>
<script>
  $(document).ready(function(){
  $("[data-align='vertical']").each(function(index, element){
  console.info($(element).parents("li:first"));
  $(element).css("height", $(element).parents($(element).attr("data-height-parent")+":first").height());
  $(element).css("width", $(element).parents($(element).attr("data-width-parent")+":first").width());
  });
  });
</script>
