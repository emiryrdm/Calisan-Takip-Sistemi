<?php 
error_reporting(0);
session_start(); include 'db.php';
$id=$_SESSION['id'];
if($id==0){
$ad="Admin ";
$soyad="Admin";
$gorev="Yönetici";
$maas="****";
}else{
$sorgu = $baglanti->prepare("SELECT * FROM personeller WHERE personel_id = ?");
    $sorgu->bindParam(1, $id, PDO::PARAM_INT);
    $sorgu->execute();
    $user = $sorgu->fetch(PDO::FETCH_ASSOC);
    $ad=$user['ad'];
    $soyad=$user['soyad'];
    $gorev=$user['gorevler'];
    $maas=$user['maas_ocak'];
}
?>
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/x-icon" href="https://media-exp1.licdn.com/dms/image/C4E0BAQFL462ZHj9jgA/company-logo_200_200/0/1650283830184?e=2147483647&v=beta&t=vN-mJcnwbd4XFyvqnGgA_ysj1Pt8yvCeMV7jdbgxz-Q">
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    <link rel="stylesheet" href="styles/personel.css">
    
    <title>Personel Bilgilerim</title>
    
    
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
                <a class="link" href="mesaiata.php"><ion-icon name="pencil-outline"></ion-icon> <span id="name">Mesai Ata</span></a>
          <?php  } ?>

          
            <?php if ($_SESSION['yetki']==2) { ?>
            <a class="link" href="personel.php"><ion-icon name="accessibility-outline"></ion-icon> <span id="name">Bilgilerim</span></a>
            <?php  } ?>
            <a class="link" href="izinistekleri.php"><ion-icon name="mail-unread-outline"></ion-icon> <span id="name">İzin İstekleri</span></a>
            
            </div>
            <a class="link" href="logout.php"><ion-icon name="log-out-outline"></ion-icon> <span id="name">Çıkış</span></a>
        </div>
      <button id="myBtn" class="button" data-modal="modalOne">Mesai Takip</button>    
      <button id="myBtn3" class="button" data-modal="modalTwo">İzin Durumu</button>

    <div id="modalOne" class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <form action="/">
            <h2>Mesai Takip:</h2>
            <div>
        <?php $i=0; $query = $baglanti->query("SELECT * FROM mesailer_2023 WHERE calisan_id='".$id."'",PDO::FETCH_ASSOC); ?>
                <span>İsim:</span>
                <p><?php echo $ad.$soyad ?></p>

                <span>Mesai Günleri:</span>

                <select style="width:100%;">
                        <?php while($ciktiper = $query->fetch(PDO::FETCH_ASSOC)){ ?>
            <option value="ucretli"><?=$ciktiper['mesai_tarih'];?></option>
                        <?php $i++; }?>
          </select>
            </div>
          </form>
      </div>
    </div>
    <div id="modalTwo" class="modal" style="">
      <div class="modal-content">
        
          <span class="close">&times;</span>
          <form action="/">
            <h2>İzin Durumu</h2>
              <div>
        <?php $i=0; $query = $baglanti->query("SELECT * FROM izinler_2023 WHERE personel_id='".$id."'",PDO::FETCH_ASSOC); ?>
                <span>İsim:</span>
                <p><?php echo $ad.$soyad ?></p>

                <span>İzin Günleri:</span>

                <select style="width:100%;">
                        <?php while($ciktiper = $query->fetch(PDO::FETCH_ASSOC)){ ?>
            <option value="ucretli"><?=$ciktiper['izin_baslangic'];?></option>
                        <?php $i++; }?>
          </select>
            </div>
          </form>
       
      </div>
    </div>
       
    <script>
      let modalBtns = [...document.querySelectorAll(".button")];
      modalBtns.forEach(function (btn) {
        btn.onclick = function () {
          let modal = btn.getAttribute("data-modal");
          document.getElementById(modal).style.display = "block";
        };
      });
      let closeBtns = [...document.querySelectorAll(".close")];
      closeBtns.forEach(function (btn) {
        btn.onclick = function () {
          let modal = btn.closest(".modal");
          modal.style.display = "none";
        };
      });
      window.onclick = function (event) {
        if (event.target.className === "modal") {
          event.target.style.display = "none";
        }
      };
    </script>
   
 



    <div class="conteiner">
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <span id="profil_photo"> <img src="./images/anonphoto.jpeg" alt="" width="160px" height="170px"></span>
        <br>
        <h4><?php echo $ad.$soyad ?></p>
        <h4><?=$gorev?></p>
        <?php $sorguindex = $baglanti->query("SELECT * FROM izinler_2022 WHERE calisan_id=$id");
        $ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC); ?>


        <h3 f>Toplam İzin Günü  <?php echo $toplamizin=$ciktiper['ocak']+$ciktiper['subat']+$ciktiper['mart']+$ciktiper['nisan']+$ciktiper['mayis']+$ciktiper['haziran']+$ciktiper['temmuz']+$ciktiper['agustos']+$ciktiper['eylul']+$ciktiper['ekim']+$ciktiper['kasim']+$ciktiper['aralik']; ?></p>

<?php $sorguindex = $baglanti->query("SELECT * FROM mesailer_2022 WHERE calisan_id=$id");
        $ciktiper = $sorguindex->fetch(PDO::FETCH_ASSOC); ?>
        <h4 f>Toplam Mesai Ücreti  <?php $toplamgelir=$ciktiper['ocak']+$ciktiper['subat']+$ciktiper['mart']+$ciktiper['nisan']+$ciktiper['mayis']+$ciktiper['haziran']+$ciktiper['temmuz']+$ciktiper['agustos']+$ciktiper['eylul']+$ciktiper['ekim']+$ciktiper['kasim']+$ciktiper['aralik']; ?>
    <td><?=$toplamgelir*22.5?></td> TL</p>
    
      </div>


      
</body>
</html>