<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "live_search");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM games 
  WHERE title LIKE '%".$search."%'
  OR developer LIKE '%".$search."%'
 ";
}
else
{
    // This query returns empty!! Had trouble returning empty until I found this!
 $query = "
  SELECT 1 FROM dual WHERE false
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <ul>
         <li class="list-group-item">
            <img src='.$row["cover"].'> &nbsp
            <span id="title">'.$row["title"].'</span><span id="year"> &nbsp ('.$row["year"].')</span>  
            <span id="developer"> &nbsp &nbsp developed by: '.$row["developer"].'</span><br>
         </li>
   </ul>
  ';
 }
 echo $output;
}
else
{
 echo '<span id="not_found"> Data not found! </span>';
}

?>