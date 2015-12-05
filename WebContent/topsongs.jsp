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

		
  </body>
</html>