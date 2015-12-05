<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MusicOverDecades</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Custom Javascript -->
<script src="js/scripts.js"></script>

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">

</head>
<body>
	<nav class="navbar navbar-custom" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<!-- =============== hidden nav bar ===================== -->
				<a class="navbar-brand" href="index.jsp">MOD</a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a class="tabs" href="index.jsp">Home</a></li>
					<li><a class="tabs" href="analytics.jsp">Analytics</a>
					<li><a class="tabs" href="topcharts.jsp">Top Charts</a></li>
					<li><a class="tabs" href="topartists.jsp">Top Artist</a></li>
					<li><a class="tabs" href="topsongs.jsp">Top Songs</a></li>
				</ul>
			</div>
		</div>
		<!-- container-->
	</nav>

	<!-- For all drop downs, text fields and query specification fields -->
	<div class="specifications">
		<form action="ArtistServlet">
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
				<input type="submit" value="Submit" onClick="onSubmit()"> 
			</fieldset>
		</form>
	</div>

	<!--<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://mymusicdb.c4bpngja197w.us-west-2.rds.amazonaws.com:3306/MusicOverDecades"
		user="db_student" password="db-student" />

	<sql:query dataSource="${snapshot}" var="result">
		SELECT l1.first_name, l1.last_name, l1.gender, l1.location , a.name, a.location as artist_Loc
		FROM MusicOverDecades.listeners l1, MusicOverDecades.artist a, MusicOverDecades.likes l2
		WHERE l1.listenerId = l2.listenerId AND a.artistId = l2.artistId AND a.location LIKE l1.location;
	</sql:query>
-->
	
	<!-- Table creation-->
<!-- <div class="tables">
		<table cellspacing='0' border="1" id="myTable" class="tablesorter">
			<tr>
				<th>Listeners FirstName</th>
				<th>Listeners lastName</th>
				<th>Location</th>
				<th>Artist Name</th>

			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.first_name}" /></td>
					<td><c:out value="${row.last_name}" /></td>
					<td><c:out value="${row.location}" /></td>
					<td><c:out value="${row.name}" /></td>

				</tr>
			</c:forEach>
		</table>
	</div>
	-->

</body>


</html>