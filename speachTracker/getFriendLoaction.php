<?php

  

         $userId  =$_GET["userId"];
         
         
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
         //mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
        // mysql_select_db("a1227065_tracker");
 
 	 
             
              $sqlqueryy = "SELECT U.UserId as friend_two, U.UserName, U.dateTime
                                        FROM SpeakRegistration U, friendsRelation F
                                        WHERE
                                          CASE

                                            WHEN F.friend_one = '".$userId."'
                                            THEN F.friend_two = U.UserId
                                             WHEN F.friend_two= '".$userId."'
                                            THEN F.friend_one= U.UserId
                                          END

                                         AND 
                                    F.status='1'";
              $resultss = $connection ->query($sqlqueryy);
              //echo $sqlqueryy;

                  if ($resultss ->num_rows > 0) 
                  {
                       while($r = mysqli_fetch_assoc($resultss))
                       {
                                $friendId=$r['friend_two'];

                                //////////////////////////////////////////////////////////////////////////

                                  // $sqlqueryforDetail = "SELECT * FROM OlaUser WHERE userId = '".$friendId."'";


                                   $sqlqueryforDetail = "SELECT * FROM OlaUser  INNER JOIN SpeakRegistration ON OlaUser.userId=SpeakRegistration.UserId WHERE OlaUser.userId = '".$friendId."'";


                                   $resultssdetail    =  $connection ->query($sqlqueryforDetail);



                                    if ($resultssdetail ->num_rows > 0) 
                                    {
                                           while($rr = mysqli_fetch_assoc($resultssdetail))
                                             {

                                                    $friendDetails[] = array("latitude" => $rr['latitude'], "longitude" => $rr['longitude'], "UserName" => $rr['UserName'], "profileImageUrl" => $rr['profileImageUrl'], "dateTime" => $rr['dateTime']);
                                             }

                                             $fjson = $friendDetails;
                                    }


                                 //////////////////////////////////////////////////////////////////////////
  
                       }


                        
                            
                   }
                  else
                   {
                       mysql_query("insert into OlaUser(userId,latitude,longitude,DateTime)

                       values('$emailId','$latitude','$longitude','$d$datetime')") or die(mysql_error());
                   }
          
                                                     
        header('content-type: application/json');
        echo json_encode($fjson);
           

      
 exit();
 ?>	