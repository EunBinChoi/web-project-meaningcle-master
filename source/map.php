<?
 require_once("db/dbconnect.php");
 extract($_POST);
 $return = array();
 if(isset($_POST['t']) || isset($_POST['p'])){
   $query = "select * from bicycle";
   $isFirst = true;
   $query.=" where";
   if(isset($_POST['t'])){
     $query.=" (";
     foreach ($t as $val) {
       if(!$isFirst){
         $query.="or";
       }
       else $isFirst=false;
      $query.=" type='".$val."' ";
     }
     $query.=") ";
   }
   if(isset($_POST['t']) && isset($_POST['p'])) $query.=" and ";
   if(isset($_POST['p'])){
     $query.=" (";
     $isFirst = true;
     foreach ($p as $val) {
       if(!$isFirst){
         $query.="or";
       }
       else $isFirst=false;
       $valarr=explode("~",$val);
       $valarr[0] = str_replace(",","",$valarr[0]);
       if(isset($valarr[1])){
         $valarr[1] = str_replace(",","",$valarr[1]);
         $query.="(rental_fee>=".$valarr[0]." and rental_fee<=".$valarr[1].")";
       }
       else {
        $query.="(rental_fee<=".$valarr[0].")";
       }
     }
     $query.=")";
   }
   $query.=" order by idx ASC;";
   $result = mysqli_query($conn, $query);

   while($row = mysqli_fetch_array($result)){
     array_push($return,$row['idx']);
     array_push($return,$row['area']);
	 array_push($return,$row['lat']);
	 array_push($return,$row['lng']);
   }
 }
 else{
   $query = "select * from bicycle order by idx ASC";
   $result = mysqli_query($conn, $query);

   while($row = mysqli_fetch_array($result)){
     array_push($return,$row['idx']);
     array_push($return,$row['area']);
	 array_push($return,$row['lat']);
	 array_push($return,$row['lng']);
   }
 }
 echo json_encode($return);
?>
