<?php

  

         $speakUser   =$_GET["speakUser"];
         $userId      =$_GET["userId"];
         $mobile      =$_GET["mobile"];
         $profileuri  =$_GET["profileuri"];
         
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
        // mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
        // mysql_select_db("a1227065_tracker");
 
 	 
             
           $sqli = "UPDATE SpeakRegistration SET UserName='".$speakUser."', MobileNumber='".$mobile."',profileImageUrl='".$profileuri."'  WHERE UserId='".$userId."'";
                             mysqli_query($connection , $sqli );
		

           echo  $sqli;
                        
                                                     
       // header('content-type: application/json');
        //echo json_encode($fjson );
           

      
 exit();
 ?>	