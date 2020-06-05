<?php

$connect = mysqli_connect("localhost", "root", "", "live_search"); // For db access
$output = ''; // Make output empty
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM games
  WHERE title LIKE '%".$search."%'
  OR developer LIKE '%".$search."%'
  OR year LIKE '%".$search."%' 
 ";
}
else
{
  // This query returns empty!! Had trouble returning empty until I found this!
 $query = "
  SELECT 1 FROM dual WHERE false
 ";
}
$result = mysqli_query($connect, $query); // The results from the db
if(mysqli_num_rows($result) > 0) // If the result brings back rows do the following
{
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
      <a class="btn btn-block" data-toggle="modal" data-target="#'.$row["id"].'"> <!-- Almost gave up before finding this -->
         <li class="list-group-item">
              <img src="'.$row["cover"].'"> &nbsp
              <span id="title">'.$row["title"].'</span><span id="year"> &nbsp ('.$row["year"].')</span>
              <span id="developer"> &nbsp &nbsp developed by: '.$row["developer"].'</span><br>
         </li>
      </a>
   <div id="'.$row["id"].'" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
      <img src="'.$row["cover"].'"> &nbsp
      <span id="title">'.$row["title"].'</span><br>
      <span id="info"><br>'.$row["info"].'</span><br><br>
      <div class="embed-responsive embed-responsive-16by9"><iframe class="embed-responsive-item" id="'.$row["id"].'" width="560" height="315" src="'.$row["trailer"].'" frameborder="1" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
      <span id="developer">Developer:&nbsp'.$row["developer"].'</span><br>
      <span id="year">Year:&nbsp'.$row["year"].'</span>
      </div>
      <div class="modal-footer">
        <button id="closeBtn" class="close" type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

  <!-- Stops play of video when modal closes, also tricky to find  -->
<script>
  $("#'.$row["id"].'").on("hidden.bs.modal", function () {
    $("#'.$row["id"].' iframe").attr("src", $("#'.$row["id"].' iframe").attr("src"));
  });
</script>
  ';
 }
 echo $output; // Echo the output to the designated area
}
else
{
 echo '<span id="not_found"> Data not found! </span>'; // If no rows are found echo that no data is found
}

?>