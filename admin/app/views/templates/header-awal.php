<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="keywords" content="">
  <meta name="author" content="">
  <meta name="robots" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Fillow : Fillow Saas Admin  Bootstrap 5 Template">
  <meta property="og:title" content="Fillow : Fillow Saas Admin  Bootstrap 5 Template">
  <meta property="og:description" content="Fillow : Fillow Saas Admin  Bootstrap 5 Template">
  <meta property="og:image" content="https://fillow.dexignlab.com/xhtml/social-image.png">
  <meta name="format-detection" content="telephone=no">

  <!-- PAGE TITLE HERE -->
  <title><?= $data['judul']; ?></title>

  <!-- FAVICONS ICON -->
  <link rel="shortcut icon" type="image/png" href="<?= BASEURL; ?>/template/images/favicon.png">
  <link href="<?= BASEURL; ?>/template/css/style.css" rel="stylesheet">
  <!-- <link href="<?= BASEURL; ?>/css/style.css" rel="stylesheet"> -->
  <style>
    .carousel-contain {
      background-color: #a0e79e;
    }

    .jumbotron {
      padding-top: 6rem;
      background-image: url("../public/img/mesjid3.jpg");
    }

    .section {
      padding-top: 5rem;
    }
  </style>
</head>

<body id="home">
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark shadow-sm fixed-top" style="background-color: #4D3664;">
    <div class="container">
      <a class="navbar-brand"><?= $data['judul']; ?></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link active" href="<?= BASEURL; ?>/home">Beranda</a>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="<?= BASEURL; ?>/login">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= BASEURL; ?>/register">Sign Up</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>


</body>
<!-- akhir navbar -->