<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Med Search Results!</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-black.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
.w3-sidenav a,.w3-sidenav h4{padding:5px;}
.w3-navbar a{padding-top:12px !important;padding-bottom:12px !important;}
div.container {width: 100%;border: 1px solid gray;}
.button {
  display: inline-block;
  padding: 5px 5px;
  font-size: 20px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: orange;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: #3e8e41}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>

<!-- Navbar -->
<ul class="w3-navbar w3-theme w3-top w3-left-align w3-large">
  <li class="w3-opennav w3-right w3-hide-large">
    <a class="w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
  </li>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5KlV_9u4Qd7b9jx1kHilHYRtyQXTBWZ4gDw88mVTGH3tggXSYHQ" class="w3-left w3-margin-right" height="139px" width="250px" >

<span class="w3-xlarge">
	<center>
<p></p>
  <form method="POST">
   <input type="text" name="q" value="${query}"/>&nbsp;&nbsp;&nbsp;<button class="button">Search</button>
  </form>
  <div class="valign-middle">
   <label class="hide-for-small">View:</label> <select
    onchange="setLocation(this.value)">
    <option value="http://localhost:8983/solr/#/meddata/search/?limit=5"
     selected="selected">5</option>
    <option
     value="http://localhost:8983/solr/#/meddata/search/?limit=10">
     10</option>
    <option
     value="http://localhost:8983/solr/#/meddata/search/?limit=15">
     15</option>
   </select> <span>per page</span>
  </div>

<i><div style="color:yellow;"><b>${totalResults}</b> results found in <b>${totalTime}</b> milliseconds</div></i>
  </center>
  </span>
  </ul>
 
<body>

<!-- Side navigation -->
<nav class="w3-sidenav w3-collapse w3-theme-l5 w3-animate-left" style="z-index:3;width:250px;margin-top:145px;" id="mySidenav">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="close menu">
    <i class="fa fa-remove"></i>
  </a>
  <h5><b>Language</b></h5>
  <li><a href="search?q=${query}&fq=language:English" class="w3-hover-black">English</a></li>
  <li><a href="#" class="w3-hover-black">Chinese</a></li>
  <li><a href="#" class="w3-hover-black">Spanish</a></li>
  <li><a href="#" class="w3-hover-black">Italian</a></li>
  <li><a href="#" class="w3-hover-black">Korean</a></li>
  <li><a href="#" class="w3-hover-black">Georgia</a></li>
  <li><a href="#" class="w3-hover-black">Russian</a></li>
  <li><a href="#" class="w3-hover-black">Polish</a></li>
  <li><a href="#" class="w3-hover-black">French</a></li>
  <li><a href="#" class="w3-hover-black">Others</a></li>
  
  <h5><b>Country Name</b></h5>
  <li><a href="#" class="w3-hover-black">United States</a></li>
  <li><a href="#" class="w3-hover-black">England</a></li>
   <li><a href="#" class="w3-hover-black">Germany</a></li>
  <li><a href="#" class="w3-hover-black">Canada</a></li>
  <li><a href="#" class="w3-hover-black">China</a></li>
  <li><a href="#" class="w3-hover-black">Neatherland</a></li>
  <li><a href="#" class="w3-hover-black">Others</a></li>

 <h5><b>Publication Type</b></h5>
  <li><a href="#" class="w3-hover-black">Article</a></li>
  <li><a href="#" class="w3-hover-black">Journal</a></li>
  <li><a href="#" class="w3-hover-black">Case</a></li>
  <li><a href="#" class="w3-hover-black">Report</a></li>
  <li><a href="#" class="w3-hover-black">Comment</a></li>
  <li><a href="#" class="w3-hover-black">Abstract</a></li>
  <li><a href="#" class="w3-hover-black">Study</a></li>
  <li><a href="#" class="w3-hover-black">Comparative</a></li>
  <li><a href="#" class="w3-hover-black">English</a></li>
  <li><a href="#" class="w3-hover-black">Clinical</a></li>
  <li><a href="#" class="w3-hover-black">Others</a></li>

</nav>

<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidenav is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-128">
    <div class="w3-twothird w3-container">
    
    <div class="Col">
</div>
    
    <c:forEach items="${results}" var="result">
    
      <h3 class="w3-text-teal"><c:out value="${result.title}" /></h3>
      <p>
       <c:out value="${result.author}" />
      </p>
      <i><h6 style="color:salmon;"><c:out value="${result.article}"/></h6></i>
      </c:forEach>
    </div>
  </div>
  
  <!-- Pagination -->
  <div class="w3-center">
    <ul class="w3-pagination">
      <li><a class="w3-black" href="#">1</a></li>
      <li><a class="w3-hover-black" href="#">2</a></li>
      <li><a class="w3-hover-black" href="#">3</a></li>
      <li><a class="w3-hover-black w3-hide-small" href="#">4</a></li>
      <li><a class="w3-hover-black w3-hide-small" href="#">5</a></li>
      <li><a class="w3-hover-black" href="#">»</a></li>
    </ul>
  </div>
  
  <center>Copyright © TechnoSoft Group.com</center>

<!-- END MAIN -->
</div>

<script>
// Get the Sidenav
var mySidenav = document.getElementById("mySidenav");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidenav, and add overlay effect
function w3_open() {
    if (mySidenav.style.display === 'block') {
        mySidenav.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidenav.style.display = 'block';
        overlayBg.style.display = "block";
    }
}

// Close the sidenav with the close button
function w3_close() {
    mySidenav.style.display = "none";
    overlayBg.style.display = "none";
}
</script>

</body>
</html>
