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
    // This query returns empty!! Had trouble returning empty!
 $query = "
  SELECT 1 FROM dual WHERE false
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table bordered">
    <tr>
     <th>Cover:</th>
     <th>Title:</th>
     <th>Developer:</th>
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>
    <td><img src='.$row["cover"].'></td>
    <td>'.$row["title"].'</td>
    <td>'.$row["developer"].'</td>
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Not Found';
}

?>