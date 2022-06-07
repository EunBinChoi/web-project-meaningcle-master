<?
 require_once("db/dbconnect.php");
 extract($_POST);
 if(isset($idx)){
   $query = "delete from love where idx=".$idx;
   $result = mysqli_query($conn, $query);
 }
 else{
   $query = "select * from love where user='".$user."' and item='".$item."'";
   $result = mysqli_query($conn, $query);
  if(mysqli_num_rows($result)>0){
    echo "dup";
  }
  else{
    $query = "insert into love(`user`,`item`) values('".$user."','".$item."')";
    $result = mysqli_query($conn, $query);
    echo "success";
  }
 }
?>
