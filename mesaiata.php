<?php include "db.php";
session_start();
if ($_SESSION['yetki']==2) {
  header('Location:login.php');
}
 $sorguindex = $baglanti->query("SELECT ad,soyad,gorevler FROM personeller");
 ?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
    <link rel="stylesheet" href="styles/mesaiata.css">
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <title>Mesai Ata </title>
</head>
<body>

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
<br>

<div class="container">
    <div class="title">Mesai Ata</div>
    <div id="one">
      
    <form action="test.php">
<label for="personel">Personel Seç:</label>
  <select name="per_id" id="personel">
<?php $sorguindex = $baglanti->query("SELECT ad,soyad,personel_id,gorevler FROM personeller");

      while($ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC)){ ?>

    <option value="<?=$ciktiper['personel_id']?>"><?=$ciktiper['ad']." ".$ciktiper['soyad']."- ".$ciktiper['gorevler'] ?></option>
<?php } ?>
  </select>


    </div>
    <br>
    <br>
    <div>
      <label  class="label" for="mesai-tarihi-textbox">Mesai Tarihi:</label>
      <input type="date" name="date" class="date" id="mesai-tarihi-textbox">
    </div>
    <button class="button">Onay</button>
</form>
  </div>
    
</body>
</html>