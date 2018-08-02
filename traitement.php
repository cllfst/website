<!DOCTYPE html>
<html lang="en">

<head>
     <!-- Required meta tags always come first -->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     <meta http-equiv="x-ua-compatible" content="ie=edge">
 
     <!-- Bootstrap CSS -->
     <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
     <link rel="stylesheet" href="./css/style1.css">


    <title>message</title>

<style>
.blue_alert{
    margin-top : 200px ;
    background-color : #d5eeff;
    border-top : 1px solid     #1b435d  ;
    border-bottom : 1px solid   #1b435d     ;
    height : 200px ;
    color : #1b435d ;
    font-weight : bold ;
    text-align :center ;
    font-size : 20px ;
    padding : 75px ;
}
.retour{
    margin-top:70px ;
}
</style>  

</head>

<body>


<?php 
$Name=$_POST['Name'];
$Email=$_POST['Email'];
$Subject=$_POST['Subject'];
$Message=$_POST['Message'];

try{
        $connexion = new PDO('mysql:host=localhost;dbname=CLLwebsite;charset=utf8','root','');

}
catch(Exception $e){
        die('Erreur'.$e->getMessage()) ;
}

$requet = $connexion->prepare('INSERT INTO Message (Name,Email,Subject,Message)
VALUES(:Name, :Email, :Subject, :Message)') ;
$requet->execute(array(
        'Name' => $Name ,
        'Email'=> $Email ,
        'Subject'=> $Subject ,
        'Message'=> $Message ,
        

));
echo ('

    <div class="blue_alert" style="margin-top:100px" >
         Message envoyé avec succès
    </div>
    
    <div class="container">
    <div class="row">
    <div class="col-xs-10 col-sm-6 col-xs-offset-1 col-sm-offset-3 retour">
        <a href="./index.php " style="text-decoration:none"><button  id="hover-white" style="height:50px" class="btn btn-block" >
            Retour a la Page 
        </button>
        </a>
    </div>    
    </div>    
    </div>    


');

?>
