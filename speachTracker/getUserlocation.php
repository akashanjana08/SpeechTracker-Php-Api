<?php

         //MySQL Database Connect 
        // include 'dbconnection.php';
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
        // mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
         //mysql_select_db("a1227065_tracker");
          
         $jsonString= file_get_contents('php://input');

         $data = json_decode($jsonString,true);
    
        // $connection = new mysqli("mysql1.000webhost.com", "a2120040_tracker", "2488CKP", "a2120040_tracker") or die(mysqli_error());
 
         
         foreach($data as $key=>$value)
         {
                
		
 		      $emailId= $value['emailId'];
		
		      $latitude= $value['latitude'];
		
		      $longitude= $value['longitude'];
		      
		      $datetime= $value['dateTime'];
               
                      echo  $latitude;

              $sqlqueryy = "SELECT * FROM OlaUser WHERE userId = '".$emailId."'";
              $resultss = $connection ->query($sqlqueryy);


                  if ($resultss ->num_rows > 0) 
                  {
                        $sqli = "UPDATE OlaUser SET latitude='".$latitude."' , longitude = '".$longitude."' , DateTime = '".$datetime."'  WHERE userId='".$emailId."'";
                        mysqli_query($connection , $sqli);
                        
                         //mysql_query("insert into OlaUser(userId,latitude,longitude,DateTime)

                         //values('$emailId','$latitude','$longitude','$d$datetime')") or die(mysql_error());
                            
                   }
                  else
                   {
                       mysql_query("insert into OlaUser(userId,latitude,longitude,DateTime)

                       values('$emailId','$latitude','$longitude','$d$datetime')") or die(mysql_error());
                   }
          
	  
               
          }
	
             
        
 exit();
 ?>	