<?php

  

         $userName    =$_GET["userName"];
         $userId      =$_GET["userId"];
         
         $connection = new mysqli("localhost", "id3769580_akash", "teri@meri123", "id3769580_tracker") or die(mysqli_error());
         
        // mysql_connect("mysql1.000webhost.com","a1227065_tracker","neelam1994");
 
        // mysql_select_db("a1227065_tracker");
 
 	
                               $sqlqueryappidu =  "SELECT * FROM SpeakRegistration where UserId like '%$userId%'";

          
                               $qurpappu     = $connection ->query($sqlqueryappidu);


                               if($r2234 = mysqli_fetch_assoc($qurpappu))
                               {

                                    $recname = $r2234['UserName'];
                                
                               }



                               $sqlqueryappid =  "SELECT * FROM SpeakRegistration where UserName like '%$userName%'";

          
                               $qurpapp     = $connection ->query($sqlqueryappid);


                               if($r223 = mysqli_fetch_assoc($qurpapp))
                               {

                                  $appiD = $r223['AppId'];
                                 // $UserId = $r223['UserId'];
                               }

                                echo $appiD;

                               $appiDs=  array($appiD);

                               sendNotificationId($appiDs,"Getting Location",$userId,$recname.' wants to your Location');  
                                //$recname.' wants to your Location'



         function sendNotificationId($registrationIDs,$title,$UserId,$message)
          {

             $random_collapse = rand(11, 100);

             $apiKey = "AIzaSyCwQPBrmXt3Hi9MOXp1bhgP71MnoCV_MLk";

            // Replace with the real client registration IDs
            //$registrationIDs = array("APA91bGfYuznOA-y36IGSFN_98n-ypQSkK-P9COu2wYKLMsxu8pnhKHE03cj-SKcfpO9LWC7aaIWeCtWRCxnj0sdpxi9PdxqxgxXGerT4iuWbiisv2YjRztBTSw6zkPWDLC2enGyvxFVSACuSWl-nnO1eXqSEOHunw");

            // Message to be sent
            //$message = "Hello World";

            // Set POST variables
            $url = 'https://fcm.googleapis.com/fcm/send';

            $fields = array(
                'registration_ids' => $registrationIDs,
                'data' => array( "message" => $message , "Title" => $title, "msg" => $UserId , "Action" => "1"),
                'collapse_key'      => "{$random_collapse}", 
                "time_to_live"      =>  25000,
                "delay_while_idle" => true
             );
           $headers = array(
               'Authorization: key=' . $apiKey,
               'Content-Type: application/json'
             );

          // Open connection
            $ch = curl_init();

         // Set the URL, number of POST vars, POST data
           curl_setopt( $ch, CURLOPT_URL, $url);
           curl_setopt( $ch, CURLOPT_POST, true);
           curl_setopt( $ch, CURLOPT_HTTPHEADER, $headers);
           curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true);
         //curl_setopt( $ch, CURLOPT_POSTFIELDS, json_encode( $fields));

           curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
         // curl_setopt($ch, CURLOPT_POST, true);
         // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode( $fields));

         // Execute post
            $result = curl_exec($ch);

         // Close connection
           curl_close($ch);
         

         }
         
 





           

      
 exit();
 ?>	