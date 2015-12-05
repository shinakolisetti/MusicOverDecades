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

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">
<link href="css/test.css" rel="stylesheet">


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
				 <a class = "navbar-brand" href="index.jsp"><img src="music-icon-logo.png" width="30" height="30"></a>
			</div>

			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a class="tabs" href="index.jsp">Home</a></li>
					<li><a class="tabs" href="analytics.jsp">Analytics</a>
					<li><a class="tabs" href="topcharts.jsp">Top Charts</a></li>
					<li><a class="tabs" href="topartists.jsp">Top Artist</a></li>
				</ul>
			</div>
		</div>
		<!-- container-->
	</nav>
<!-- For all drop downs, text fields and query specification fields -->
	<div class="specifications">
		<form action="AnalyticsServlet">
			<fieldset>
				<legend>Specify Your Search:</legend>
				<div class="search"><div class="label">Genre:</div>
				<select id="genre" name = "genre">
					<option value=""></option>
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
				</div>
				<div class="search"><div class="label">Decade:</div>
				<select id="decade" name = "decade">
					<option></option>
					<option value="50s">1950-1960</option>
					<option value="60s">1960-1970</option>
					<option value="70s">1970-1980</option>
					<option value="80s">1980-1990</option>
					<option value="90s">1970-1980</option>
					<option value="00s">1990-2000</option>
					<option value="00s">2000-2010</option>
				</select>
				</div>
				<div class="search"><div class="label">Result View:</div>
				<select id="view" name = "view">
					<option value="table">Table</option>
					<option value="chart">Chart</option>
				</select>
				</div>
				<input id="js-trigger-overlay" type="submit" value="Submit" onClick="onSubmit()"> 
			</fieldset>
		</form>
	</div>




<!-- SQL database connection in jsp
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://mymusicdb.c4bpngja197w.us-west-2.rds.amazonaws.com:3306/MusicOverDecades"
		user="db_student" password="db-student" />

<sql:query dataSource="${snapshot}" var="result">
SELECT name, genre from MusicOverDecades.artist;
</sql:query> -->

	<!-- Table creation-->
<!-- <div class="tables">
	<table cellspacing='0' border="1" id="myTable" class="tablesorter">
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