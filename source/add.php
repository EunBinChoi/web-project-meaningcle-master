<?
 require_once("db/dbconnect.php");
 extract($_POST);
 if(isset($idx)){
   $query = "delete from basket where idx=".$idx;
   $result = mysqli_query($conn, $query);
 }
 else{
   $query = "select * from basket where user='".$user."' and item='".$item."'";
   $result = mysqli_query($conn, $query);
  if(mysqli_num_rows($result)>0){
    echo "dup";
  }
  else{
    $query = "insert into basket(`user`,`item`) values('".$user."','".$item."')";
    $result = mysqli_query($conn, $query);
    echo "success";
  }
 }
?>
