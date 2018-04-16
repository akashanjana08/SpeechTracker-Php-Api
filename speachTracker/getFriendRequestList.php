<?php

  

         $friend_one    =$_GET["friend_one"];
         $friendCount   =$_GET["count_friend_request"];
         $count=0;
         
         
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
        // mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
        // mysql_select_db("a1227065_tracker");
 
 	
        $sqlqueryy = "SELECT friend_one FROM friendsRelation WHERE friend_two = '".$friend_one."' and status='0'";
              $resultss = $connection ->query($sqlqueryy);
              //echo $sqlqueryy;
              // $num_rows = mysql_num_rows($resultss);
                  if ($resultss ->num_rows > 0) 
                  {
                       while($r = mysqli_fetch_assoc($resultss))
                       {
                                $friendId=$r['friend_one'];

                                //////////////////////////////////////////////////////////////////////////

                                  // $sqlqueryforDetail = "SELECT * FROM OlaUser WHERE userId = '".$friendId."'";


                                   $sqlqueryforDetail = "SELECT * FROM  SpeakRegistration  WHERE UserId = '".$friendId."'";


                                   $resultssdetail    =  $connection ->query($sqlqueryforDetail);

                                   

                                    if ($resultssdetail ->num_rows > 0) 
                                    {
                                           while($rr = mysqli_fetch_assoc($resultssdetail))
                                             {

                                                    $count++;
                                                    $friendDetails[] = array("UserName" => $rr['UserName'], "profileImageUrl" => $rr['profileImageUrl'], "userId" => $rr['UserId']);
                                             }


                                             
                                           if($friendCount=='1')
                                              $fjson = $friendDetails;
                                           else
                                              $fjson = $count;
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