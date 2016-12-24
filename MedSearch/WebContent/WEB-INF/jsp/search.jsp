<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">

<title>Simple Registration Application from TekEZTrain - Login Page</title>
 <style>
  body { background-color: #eee; font: helvetica; }
  #container { width: 500px; background-color: #fff; margin: 30px auto; padding: 30px; border-radius: 5px; box-shadow: 5px; }
  .green { font-weight: bold; color: green; }
  .Label{height: 36px;}
  .message { margin-bottom: 10px; }
  label {width:120px; display:inline-block;}
  form {line-height: 160%; }
  .hide { display: none; }
  .error {
      color: #ff0000;
      font-style: italic;
      font-weight: bold;
  }
 </style>
</head>
<body>

<!-- Header -->
<header class="w3-container w3-theme w3-padding" id="myHeader">
  <i onclick="w3_open()" class="fa fa-bars w3-xlarge w3-opennav"></i>
  <div class="w3-center">
  <h4><b>A SOLR POWERED SEARCH</b></h4>
  <h1 class="w3-xxxlarge w3-animate-bottom"><b>MEDSEARCH</b></h1>
    <div class="w3-padding-32">
		<form method="POST">
			<input type="text" name="q" size="20" class ="Label"/>&nbsp;&nbsp;&nbsp;<button class="w3-btn w3-xlarge w3-dark-grey w3-hover-light-grey" onclick="document.getElementById('id01').style.display='block'" style="font-weight:900;">Search</button>
    	 </form>
    </div>
  </div>
</header>

<h2 class="w3-center">Gallery</h2>
<div class="w3-content" style="max-width:400px;position:relative">

<center>
    <div class="boxInner" class="bw pic">
        <img src="" id="slide" />
    </div>

<script type = "text/javascript" >
var image1 = new Image();
image1.src = "http://thespeaker.co/wp-content/uploads/2015/07/Armageddon-Weight-Loss-DVD-program-The-best-weight-loss-DVD-for-women-and-men-team-of-doctors-400x300.jpg";
var image2 = new Image();
image2.src = "http://4.bp.blogspot.com/-gImjQmYEtj8/URLQQ4OErQI/AAAAAAAAKsQ/KrUI_Vpccfk/s1600/Euthanasia+4.jpg";
var image3 = new Image();
image3.src = "http://economictimes.indiatimes.com/photo/28603466.cms";
var image4 = new Image();
image4.src = "http://www.advocate.com/sites/advocate.com/files/2014/08/11/Truvada-x400.jpg";
var image5 = new Image();
image5.src = "http://geniusbeauty.com/wp-content/uploads/2011/09/Doctors1.jpg";
var image6 = new Image();
image6.src = "https://img.rt.com/files/oldfiles/news/massive-strike-doctors-uk-428/holds-west-outpatients-hospital.jpg";
   var step = 1;

    function slideit() {
      document.getElementById('slide').src = eval("image" + step + ".src");
      if (step < 6)
        step++;
      else
        step = 1;
      setTimeout("slideit()", 2500);
    }
    slideit();
</script>
</center>
</div>

<!-- Modal -->
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-8 w3-animate-top">
      <header class="w3-container w3-theme-l1">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-closebtn">×</span>
        <h4>Oh snap! We just showed you a modal..</h4>
        <h5>Because we can <i class="fa fa-smile-o"></i></h5>
      </header>
      <div class="w3-padding">
        <p>Cool huh? Ok, enough teasing around..</p>
        <p>Go to our <a class="w3-btn" href="/w3css/default.asp">W3.CSS Tutorial</a> to learn more!</p>
      </div>
      <footer class="w3-container w3-theme-l1">
        <p>Modal footer</p>
      </footer>
    </div>
</div>

<div class="w3-row-padding w3-center w3-margin-top">
<div class="w3-third">
  <div class="w3-card-2 w3-padding-top" style="min-height:460px">
  <h4>Documents</h4><br>
  <i class="fa fa-desktop w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Health</p>
  <p>Diet</p>
  <p>Fitness</p>
  <p>Diseases</p>
  </div>
</div>

<div class="w3-third">
  <div class="w3-card-2 w3-padding-top" style="min-height:460px">
  <h4>Information</h4><br>
  <i class="fa fa-css3 w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Magazines</p>
  <p>Journals</p>
  <p>Articles</p>
  <p>Reports</p>
  </div>
</div>

<div class="w3-third">
  <div class="w3-card-2 w3-padding-top" style="min-height:460px">
  <h4>Authors</h4><br>
  <i class="fa fa-diamond w3-margin-bottom w3-text-theme" style="font-size:120px"></i>
  <p>Weston M D</p>
  <p>Mills S G</p>
  <p>Long J P</p>
  <p>Mishra R</p>
  </div>
</div>
</div>
<footer class="w3-container w3-theme-dark w3-padding-16">
<center>
  <h3></h3>
  <p><b>Powered by Solr</b></p>
  <div style="position:relative;bottom:55px;" class="w3-tooltip w3-right">
    <span class="w3-text w3-theme-light w3-padding">Go To Top</span> 
    <a class="w3-text-white" href="#myHeader"><span class="w3-xlarge">
    <i class="fa fa-chevron-circle-up"></i></span></a>
  </div>
  <p><b>Copyright 2016 © Technosoftgroup Inc. All Rights Reserved.</b></p>
</center></footer>
</body>
</html>