// Empty JS for your own code to be here

$(document).ready(function(){
		$('tables').hide();
});


function onSubmit(){
	/*build query*/
	var location = document.getElementById("location").value.trim();
	var genre = document.getElementById("genre").value.trim();
	var sqlQuery = "SELECT a.name, s.title, s.hotness, a.location, s.year FROM MusicOverDecades.song s, MusicOverDecades.artist a, MusicOverDecades.artist_song l WHERE a.artistId = l.artistId AND s.songId = l.songId AND s.hotness <> 'nan'";
	if(location!="" && location!="Enter City or State" && location != null){
		sqlQuery += "AND a.location LIKE '%"+location+"'%";
	}
	if(genre!="" && genre != null){
		sqlQuery+= "AND a.genre LIKE '%"+genre"%'";
	}
	sqlQuery+="ORDER BY s.hotness DESC;";
	 
	/*show the div */	
	$('tables').show();
	console.log(sqlQuery);
	return sqlQuery;
}


/* pass in array [] of fields for the table*/
function buildTables(fields_arr){
		
}