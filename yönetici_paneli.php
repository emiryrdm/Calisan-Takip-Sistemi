<?php 
session_start();
error_reporting(0);
include "db.php";
$name =$_POST["username"];
$pass =$_POST["password"];
if ( $_SESSION['yetki']==2) {
 header('Location:personel.php');  
}

if ($_SESSION['oturum']!=true) {
$query = $baglanti->query("SELECT * FROM users WHERE user_name='".$name."' && user_pass='".$pass."'",PDO::FETCH_ASSOC);
$query2 = $baglanti->query("SELECT * FROM personeller WHERE ad='".$name."' && soyad='".$pass."'",PDO::FETCH_ASSOC);
        if ( $say = $query -> rowCount() ){

            if( $say > 0 ){
                session_start();
                $ciktiuser = $query->fetch(PDO::FETCH_ASSOC);
                $_SESSION['oturum']=true;
                $_SESSION['id']=0;
                $_SESSION['yetki']=$ciktiuser['yetki'];
                $_SESSION['name']=$name;
                $_SESSION['pass']=$pass;
                header('Location:izinistekleri.php');
               // echo 'Hoş geldiniz '.$ciktiuser['user_name'];
                               
            }else{
                echo "oturum açılmadı hata";
            }
        }
        elseif ($say = $query2 -> rowCount()) {
            if( $say > 0 ){
                session_start();
                $ciktiuser = $query2->fetch(PDO::FETCH_ASSOC);
                $_SESSION['oturum']=true;
                $_SESSION['yetki']=2;
                $_SESSION['gorev']=$ciktiuser['gorevler'];
                $_SESSION['id']=$ciktiuser['personel_id'];
                $_SESSION['name']=$name;
                $_SESSION['pass']=$pass;
                header('Location:personel.php');
                               
            }else{
                echo "oturum açılmadı hata";
            }
            
        }
        else{
        
             echo '<script>alert("Kullanıcı adı veya şifre hatalı")</script>';
     echo '
   <script>
    setTimeout(function(){   
        window.location="login.php";
        //3 saniye sonra yönlenecek
        }, 1);
  </script>';
   
        }
}
 ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/yoneticipaneli.css">
    <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
    
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <title>Yönetici Ekranı</title>
</head>
<body>
    
    <input checked type="checkbox" id="side">
    <div class="sidebar">
        <div class="check">
            <label for="side"><ion-icon name="play-outline"></ion-icon> </label>
            <span>Yorka Tekstil</span>
        </div>
        <div class="links">
            <a class="link" href="personelbilgileri.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Personel Bilgileri</span></a>
            <?php if($_SESSION['yetki']==1){ ?>
            <a class="link" href="mesaiata.php"><ion-icon name="pencil-outline"></ion-icon> <span id="name">Mesai Ata</span></a>
            <?php } ?>
            <a class="link" href="izinistekleri.php"><ion-icon name="mail-unread-outline"></ion-icon> <span id="name">İzin İstekleri</span></a>
            
            </div>
            <a class="link" href="logout.php"><ion-icon name="log-out-outline"></ion-icon> <span id="name">Çıkış</span></a>
        </div>
    </div>

    <div id="conteiner">
        <img src="profil_resmi.jpg" width="160" height="170" id="profilphoto">
        <div id="personel-job">
            <p><?php $_SESSION['gorev'] ?></p>
        <div id="personel-name">
            <p><?php echo $_SESSION['name']. " ".$_SESSION['pass']; ?></p>
        
       
        </div>
        </div>
    </div>
        
</body>
</html>     