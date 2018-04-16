<?php

  
 
         $userId  =$_GET["userId"];
         
         
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
         //mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
        // mysql_select_db("a1227065_tracker");

        




 
 	 
             
             // $sqlqueryy = "SELECT * FROM SpeakRegistration WHERE UserId <> '".$userId."'";
              $sqlqueryy = "select * from SpeakRegistration where UserId <>'".$userId."' and UserId not in (

                                                             select friend_two from friendsRelation where friend_one = '".$userId."'
                                                                    union
                                                             select friend_one from friendsRelation where friend_two = '".$userId."'
                                                            )";
              $resultss = $connection ->query($sqlqueryy);
              //echo $sqlqueryy;

              

                  if ($resultss ->num_rows > 0) 
                   {
                              while($rr = mysqli_fetch_assoc($resultss))
                              {

                                   $friendDetails[] = array("UserName" => $rr['UserName'], "profileImageUrl" => $rr['profileImageUrl'], "userId" => $rr['UserId']);
                               }

                               $fjson = $friendDetails;
                   }
                   else
                   {
                               $fjson ='{}';
                   }
          
                                                     
        header('content-type: application/json');
        echo json_encode($fjson);
           

      
 exit();
 ?>	