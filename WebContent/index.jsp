<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>MusicOverDecades</title>

    <!-- Bootstrap Core CSS -->
    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <!-- Custom CSS -->
    <link href="css/style.css" rel="stylesheet">

  </head>
  <body>

    <nav class = "navbar navbar-custom" role = "navigation">
        <div class = "container-fluid">
            <div class = "navbar-header">
                <button type = "button" class = "navbar-toggle" data-toggle = "collapse" data-target = "#bs-example-navbar-collapse-1">
                    <span class = "sr-only">Toggle navigation</span>
                    <span class = "icon-bar"></span>
                    <span class = "icon-bar"></span>
                    <span class = "icon-bar"></span>
                </button>

                <!-- =============== hidden nav bar ===================== -->
                <a class = "navbar-brand" href="index.jsp"><img src="music-icon-logo.png" width="30" height="30"></a>
            </div>

            <div class = "collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                   <li><a class="tabs" href="index.jsp">Home</a></li>
					<li><a class="tabs" href="analytics.jsp">Analytics</a>
					<li><a class="tabs" href="topcharts.jsp">Music Popularity</a></li>
					<li><a class="tabs" href="topartists.jsp">Top Artist</a></li>
                </ul>
            </div>
        </div> <!-- container-->
    </nav>

		<div class="container-fluid">	
			<div class="carousel slide" id="carousel-66737">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-66737">
					</li>
					<li  data-slide-to="1" data-target="#carousel-66737">
					</li>
					<li data-slide-to="2" data-target="#carousel-66737">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="Carousel Bootstrap First" src="music.jpg">
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Second" src="poster.jpg">
					</div>
					<div class="item">
						<img alt="Carousel Bootstrap Third" src="classic.jpg">
					</div>
				</div> 
					<a class="left carousel-control" href="#carousel-66737" data-slide="prev">
						<span class="glyphicon glyphicon-chevron-left"></span>
					</a>
					<a class="right carousel-control" href="#carousel-66737" data-slide="next">
						<span class="glyphicon glyphicon-chevron-right"></span>
					</a>
			</div>
			<div class="jumbotron">
				<h2 class = "heading" >
				<img src ="music-logo-banner.png"><img src="music-icon-logo1.png">
				</h2>
				<p class = "center">
					Our mission is to find trends in music throughout the decades and figure 
					out how to use this data to help artists advertise, see how you can analyze this data for marketing efforts and more.
				</p>
				<!--<p>
					<a class="btn btn-primary btn-large" href="#">Learn more</a>
				</p>-->
			</div>
		</div>
	</div>
	<div class="row">
		<div><h2 class = "heading"> Analyze Data </h2><hr></div>

		<div class="col-md-3">
			<h3 class = "heading">Analytics</h3>
			<p>
				We calculate which genres are most popular for specific time period. This data is useful for record labels to decide which artists to sign
				based on the genre they perform for that current decade. This data is also useful for musical analytics and research purposes. 
			</p>
		</div>
		<div class="col-md-1">&#x270e;</div>
		<div class="col-md-3">
			<h3 class = "heading">Top Artists</h3>
			<p>
				Check out who's on the top of the list. Compare why and how they are on the top. Check their hotness, genre and what type of listeners to attract. 
				Based on this data, advertisers can choose their target audience.
			</p>
			
		</div>
		<div class="col-md-1">&#x265a;</div>
		<div class="col-md-3">
			<h3 class = "heading">Music Popularity</h3>
			<p>
				Which songs is on the top? Compare and analyze the data based on familiarity and years.
				Popularity by Locations and genre. Marketing ideas for hosting concerts. New raising artist can analyze data and choose suitable location to perform at.
			</p>
			
		</div>
		<div class="col-md-1">&#x2606;</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>