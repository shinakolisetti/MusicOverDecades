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
		<form action="ChartServlet">
			<fieldset>
				<legend>Specify Your Search:</legend>
				Location: <input type="text" id="location" name="location" value="" /><br>
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
SELECT name, genre from MusicOverDecades.artist;
</sql:query>-->

	<!-- Table creation-->
	<!-- <div class="tables">
		<table border="1" id="myTable" class="tablesorter">
			<tr>
				<th>name</th>
				<th>genre</th>

			</tr>
			<c:forEach var="row" items="${result.rows}">
				<tr>
					<td><c:out value="${row.name}" /></td>
					<td><c:out value="${row.genre}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>-->

</body>
</html>