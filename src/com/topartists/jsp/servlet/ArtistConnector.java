package com.topartists.jsp.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ArtistConnector extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// reading the user input
		String location = request.getParameter("location").trim();
		String genre = request.getParameter("genre").trim();
		String age = request.getParameter("age").trim();

		String sqlQuery="SELECT a.name, a.genre, a.location, l.age, count(*) as \'num_listeners\' FROM MusicOverDecades.artist a, MusicOverDecades.listeners l, MusicOverDecades.likes l1 WHERE a.artistId = l1.artistId AND l.listenerId = l1.listenerId";
		if(location!="" && location != null){
			sqlQuery += " AND a.location = l.location AND a.location LIKE \'%"+location+"%\'";
		}
		if(genre!="" && genre != null){
			sqlQuery+= " AND a.genre LIKE \'%"+genre+"%\'";
		}
		if(age!="" && age != null){
			if(age.equals("10_15")){
				sqlQuery+= " AND l.age >= \'10\' AND l.age <= \'15\'";
			} else if(age.equals("15_20")){
				sqlQuery+= " AND l.age >= \'15\' AND l.age <= \'20\'";
			} else if(age.equals("20_25")){
				sqlQuery+= " AND l.age >= \'20\' AND l.age <= \'25\'";
			} else if(age.equals("25_30")){
				sqlQuery+= " AND l.age >= \'25\' AND l.age <= \'30\'";
			} else if(age.equals("30_35")){
				sqlQuery+= " AND l.age >= \'30\' AND l.age <= \'35\'";
			} else if(age.equals("35_40")){
				sqlQuery+= " AND l.age >= \'35\' AND l.age <= \'40\'";
			} else if(age.equals("40_45")){
				sqlQuery+= " AND l.age >= \'40\' AND l.age <= \'45\'";
			} else if(age.equals("45_50")){
				sqlQuery+= " AND l.age >= \'45\' AND l.age <= \'50\'";
			}  else if(age.equals("50_55")){
				sqlQuery+= " AND l.age >= \'50\' AND l.age <= \'55\'";
			}  else if(age.equals("55_60")){
				sqlQuery+= " AND l.age >= \'55\' AND l.age <= \'60\'";
			}  else if(age.equals("60_65")){
				sqlQuery+= " AND l.age >= \'60\' AND l.age <= \'65\'";
			}  else if(age.equals("65_70")){
				sqlQuery+= " AND l.age >= \'65\' AND l.age <= \'70\'";
			}  

		}

		sqlQuery+=" GROUP BY a.name ORDER BY num_listeners DESC;";
		System.out.println(sqlQuery);

		PrintWriter out = response.getWriter();

		String output = "<!DOCTYPE html>"+
				"<html lang=\"en\">"+
				"<head>"+
				"<meta charset=\"utf-8\">"+
				"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">"+
				"<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">"+
				"<title>MusicOverDecades</title>"+
				"<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">"+
				"<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css\">"+
				"<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"></script>"+
				"<script src=\"js/scripts.js\"></script>"+
				"<link href=\"css/style.css\" rel=\"stylesheet\">"+
				" </head>"+
				" <body>"+
				"<nav class=\"navbar navbar-custom\" role=\"navigation\">"+
				" <div class=\"container-fluid\">"+
				"<div class=\"navbar-header\">"+
				" <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\""+
				"data-target=\"#bs-example-navbar-collapse-1\">"+
				" <span class=\"sr-only\">Toggle navigation</span> <span"+
				"class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span"+
				"class=\"icon-bar\"></span>"+
				"</button>"+
				" <a class=\"navbar-brand\" href=\"index.jsp\">MOD</a>"+
				"</div>"+
				"<div class=\"collapse navbar-collapse\""+
				" id=\"bs-example-navbar-collapse-1\">"+
				" <ul class=\"nav navbar-nav\">"+
				"<li><a class=\"tabs\" href=\"index.jsp\">Home</a></li>"+
				"<li><a class=\"tabs\" href=\"analytics.jsp\">Analytics</a>"+
				"<li><a class=\"tabs\" href=\"topcharts.jsp\">Top Charts</a></li>"+
				"<li><a class=\"tabs\" href=\"topartists.jsp\">Top Artist</a></li>"+
				"<li><a class=\"tabs\" href=\"contact.jsp\">Other</a></li>"+
				" </ul>"+
				"</div>"+
				"</div>"+
				"</nav>";


		String url = "jdbc:mysql://mymusicdb.c4bpngja197w.us-west-2.rds.amazonaws.com:3306/"; 
		String dbName = "MusicOverDecades";
		String driver = "com.mysql.jdbc.Driver"; 
		String userName = "db_student"; 
		String password = "db-student"; 
		Connection conn=null;
		try { 
			Class.forName(driver).newInstance(); 
			conn = (Connection) DriverManager.getConnection(url+dbName,userName,password);  
			Statement statement = (Statement) conn.createStatement();
			ResultSet resultSet = statement.executeQuery(sqlQuery);

			/*Div for any descriptions/graphs + back button*/
			output+="<div class=\"specifications\">"
					+"<a href=\"topartists.jsp\" style=\"float:left;\">< BACK</a><br>"
					+"</div>";


			/*Create Tables*/
			output+="<div class=\"tables\">"
					+"<table border=\"1\" id=\"myTable\" class=\"tablesorter\">"
					+"<tr>"
					+"<th></th>"
					+"<th>Artist Name</th>"
					+"<th>Artist Location</th>"
					+"<th>Genre</th>"
					+"<th>Listener Age</th>"
					+"<th>Listener Count</th>"
					+"</tr>";
			int i=1;
			while(resultSet.next()){
				String name=resultSet.getString("name");
				location = resultSet.getString("location");
				age=resultSet.getString("age");
				String num_listeners = resultSet.getString("num_listeners");
				genre=resultSet.getString("genre");				
				if((name!=null||name!="") && (location!=null||location!="")){
					output+="<tr>"
							+"<th>"+ i++ +"</th>"
							+"<td>"+name+"</td>"
							+"<td>"+location+"</td>"
							+"<td>"+genre+"</td>"
							+"<td>"+age+"</td>"
							+"<td>"+num_listeners+"</td>"
							+"</tr>";
				}
			}

			conn.close();
		} catch (Exception e) { 
			e.printStackTrace(); 
			return;
		} 

		output+="</body>"
				+"</html>";

		out.write(output);


	}
}

