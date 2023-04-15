<?php
error_reporting(0);
    session_start();
    include "db.php";
    if($_GET['izin_del']=="del"){
    $id= $_GET['id'];
    $kayit_sayisi = $baglanti->exec("DELETE FROM personel_izin_talep WHERE id = $id ");

    if ($kayit_sayisi > 0) {
       echo '<script>alert("İzin Başarıyla Kaldırıldı!")</script>';
     echo '
   <script>
    setTimeout(function(){   
        window.location="izinistekleri.php";
        //3 saniye sonra yönlenecek
        }, 1);
  </script>';
    } else {
      echo "Herhangi bir kayıt silinemedi.";
    }
}

?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
    <link rel="stylesheet" href="styles/izinistekleri.css">
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <title>İzin İste</title>
</head>
<body style="background-color:#F2F2C2;">
    <input checked type="checkbox" id="side">
    <div class="sidebar">
        <div class="check">
            <label for="side"><ion-icon name="play-outline"></ion-icon> </label>
            <span>Yorka Tekstil</span>
        </div>
      <div class="links">
            <?php if ($_SESSION['yetki']==1) { ?>
                <a class="link" href="personelbilgileri.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Personel Bilgileri</span></a>
                <a class="link" href="izinlipersonel.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">İzinli Personel</span></a>
                <a class="link" href="mesailistesi.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Mesai Listesi</span></a>
                
          <?php  } ?>
          <?php if ($_SESSION['yetki']==2) { ?>
            <a class="link" href="personel.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Bilgilerim</span></a>
            <?php  } ?>


          <a class="link" href="mesaiata.php"><ion-icon name="pencil-outline"></ion-icon> <span id="name">Mesai Ata</span></a>
          <a class="link" href="izinistekleri.php"><ion-icon name="mail-unread-outline"></ion-icon> <span id="name">İzin İstekleri</span></a>
          
          </div>
            <a class="link" href="logout.php"><ion-icon name="log-out-outline"></ion-icon> <span id="name">Çıkış</span></a>
        </div>
    </div>
    <div id="container">
        <?php if($_SESSION['yetki']==2){ ?>
        <form action="test.php" method="post">
          
       
          <label for="type">Izin Türü:</label>
          <select name="izintur" id="type">
            <option value="ucretli">Ücretli</option>
            <option value="ucretsiz">Ücretsiz</option>
            <option value="yillik">Yıllık</option>
          </select>
        
      <label  class="label" for="mesai-tarihi-textbox">İzin Tarihi:</label><br>
      <input type="date" name="istenilen_izin_tarihi"class="date" id="mesai-tarihi-textbox"><br>
       
  <?php  if($_SESSION['yetki']==1){ ?>
    <input class="button" " type="submit" name="onay" value="Onay">
<?php } else{ ?>
    <input class="button" type="submit" name="onay" value="Sor">
    <?php } ?>
 
        </form>
    <?php }?>
        <br>
        
            <table style="margin-top: -40%;" >
                <?php if($_SESSION['yetki']==1){ ?>
  <tr>
    <th width="150px">AD</th>
    <th width="150px">Soyad</th>
    <th width="350px">İzin Tarihi</th>
    <th width="150px">İzin Türü</th>
    <th width="85px">İzin Onay</th>  
    <th width="85px">İzin Red</th> 
  </tr>
  <tr>
    <?php  
        $sorguindex = $baglanti->query("SELECT ad,soyad,istenilen_izin_tarihi,izin_türü,id,personel_id FROM personel_izin_talep");

     while($ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC)){ ?>
    <td><?=$ciktiper['ad'] ?> </td>
    <td><?=$ciktiper['soyad'] ?></td>
    <td><?=$ciktiper['istenilen_izin_tarihi'] ?></td>
    <td><?=$ciktiper['izin_türü'];?></td>
    <td width="85px"><button class="button" style="width: 25%;" value="Mesai"><a style="text-decoration: none;" href="test.php?izin_onay=on&id=<?=$ciktiper['personel_id'];?>&izin_tarihi=<?=$ciktiper['istenilen_izin_tarihi']; ?>&ad=<?=$ciktiper['ad'];?>&soyad=<?=$ciktiper['soyad'];?>&del_id=<?=$ciktiper['id']?>">Onay</a></button></td>
    <td width="85px"><button class="button2" style="width: 25%;" value="İzin"><a style="text-decoration: none;" href="izinistekleri.php?izin_del=del&id=<?=$ciktiper['id'];?>">Red</a></button></td>
  </tr>
<?php } ?>
 
<style>
  button {
    display: inline-block;
    font-family: "Roboto", sans-serif;
    font-weight: 500;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid #455C7B;
    color: #ffffff;
    background-color: #455C7B;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    cursor: pointer;
    
  }
  button {
    display: inline-block;
    font-family: "Roboto", sans-serif;
    font-weight: 500;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    user-select: none;
    border: 1px solid #28a745;
    color: #ffffff;
    background-color: #28a745;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    cursor: pointer;
  }
  table {
    font-family: "Roboto", sans-serif;
    border-collapse: collapse;
    width: 300px;
    margin: -7cm;
  }
  td, th {
    border: 3px solid #ffffff;
    text-align: center;
    padding: 40px;
  
    
  }
  tr:nth-child(even) {
    background-color: #dddddd;
  }
</style>

</table>
        <?php } ?>
      </div>
</body>
</html>
<?php 

 ?>