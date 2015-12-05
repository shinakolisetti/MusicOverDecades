package com.analytics.jsp.servlet;

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

public class AnalyticsConnector extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// reading the user input
		String genre_field = request.getParameter("genre").trim();
		String year_field = request.getParameter("decade").trim();

		String sqlQuery="SELECT avg(s.hotness) as \'genre_hotness\', s.year, a.genre"
				+" FROM MusicOverDecades.song s, MusicOverDecades.artist a, "
				+ "MusicOverDecades.artist_song l "
				+ "WHERE s.hotness <> 'nan' AND s.year <> '0' "
				+ "AND a.artistId=l.artistId AND s.songId = l.songId";

		if(!genre_field.equals("") && genre_field != null){
			sqlQuery+= " AND a.genre LIKE \'%"+genre_field+"%\'";
		}
		if(!year_field.equals("") && year_field != null){
			if(year_field.equals("50s")){
				sqlQuery+= " AND s.year >= \'1950\' AND s.year <= \'1960\'";
			} else if(year_field.equals("60s")){
				sqlQuery+= " AND s.year >= \'1960\' AND s.year <= \'1970\'";
			} else if(year_field.equals("70s")){
				sqlQuery+= " AND s.year >= \'1970\' AND s.year <= \'1970\'";
			} else if(year_field.equals("80s")){
				sqlQuery+= " AND s.year >= \'1980\' AND s.year <= \'1990\'";
			} else if(year_field.equals("90s")){
				sqlQuery+= " AND s.year >= \'1990\' AND s.year <= \'2000\'";
			} else if(year_field.equals("00s")){
				sqlQuery+= " AND s.year >= \'2000\' AND s.year <= \'2010\'";
			} 
		}

		sqlQuery+=" GROUP BY a.genre, s.year ORDER BY \'genre hotness\' DESC;";
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
					+"<a href=\"analytics.jsp\" style=\"float:left;\">< BACK</a><br>"
					+"</div>";


			/*Create Tables*/
			output+="<div class=\"tables\">"
					+"<table border=\"1\" id=\"myTable\" class=\"tablesorter\">"
					+"<tr>"
					+"<th></th>"
					+"<th>Popularity of Genre</th>"
					+"<th>Genre</th>"+
					"<th>Year</th>";
			int i=1;
			while(resultSet.next()){
				String year=resultSet.getString("year");
				String genre = resultSet.getString("genre");
				String hotness=resultSet.getString("genre_hotness");
					
				if(year!=null && genre!=null && hotness!=null){
					output+="<tr>"
							+"<th>"+ i++ +"</th>"
							+"<td>"+hotness+"</td>"
							+"<td>"+genre+"</td>"
							+"<td>"+year+"</td>"
							+"</tr></div>";
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

