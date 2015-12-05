<%@ page import="java.io.*,java.util.*,java.sql.*"%>


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
                <a class = "navbar-brand" href="test.html">MOD</a>
            </div>

            <div class = "collapse navbar-collapse" id = "bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="tabs" href="index.jsp">Home</a></li>
					<li><a class="tabs" href="analytics.jsp">Analytics</a>
					<li><a class="tabs" href="topcharts.jsp">Top Charts</a></li>
					<li><a class="tabs" href="topartists.jsp">Top Artist</a></li>
					<li><a class="tabs" href="topsongs.jsp">Top Songs</a></li>
                </ul>
            </div>
        </div> <!-- container-->
    </nav>
	<!-- For all drop downs, text fields and query specification fields -->
	<div class="specifications">
		<form action="SongServlet">
			<fieldset>
				<legend>Specify Your Search:</legend>
				Location: <input type="text" id="location" name="location" value="" /><br>
				Age: <select id="age" name = "age">
					<option></option>
					<option value="10_15">10 - 15</option>
					<option value="15_20">15 - 20</option>
					<option value="20_25">20 - 25</option>
					<option value="25_30">25 - 30</option>
					<option value="30_35">30 - 35</option>
					<option value="35_40">35 - 40</option>
					<option value="40_45">40 - 45</option>
					<option value="45_50">45 - 50</option>
					<option value="50_55">50 - 55</option>
					<option value="55_60">55 - 60</option>
					<option value="60_65">60 - 65</option>
					<option value="65_70">65 - 70</option>
				</select>
						<br> 
				Genre: 
				<select id="genre" name = "genre">
					<option></option>
					<option value="rock">rock</option>
					<option value="hop">hip-hop/trip-hop</option>
					<option value="classical">classical</option>
					<option value="rap">rap</option>
					<option value="jazz">jazz</option>
					<option value="metal">metal</option>
					<option value="punk">punk</option>
					<option value="country">country</option>
					<option value="disco">dance/disco</option>
					<option value="electronic">electronic</option>
					<option value="pop">pop</option>
					<option value="soundtrack">soundtrack</option>
					<option value="house">house/dub</option>
				</select>
						<br> 
				<input id="js-trigger-overlay" type="submit" value="Submit" onClick="onSubmit()"> 
			</fieldset>
		</form>
	</div>
	
		
  </body>
</html>