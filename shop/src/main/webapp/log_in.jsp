<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>new</title>
  <link rel="stylesheet" href="./style.css">
</head>
<body>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <meta charset="utf-8">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
         <meta name="description" content="">
      <meta name="author" content="">
      <!-- owl carousel style -->
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.2.4/assets/owl.carousel.min.css" />
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
      
        
        
        
        
        

	<title>hello</title>
    <link rel="stylesheet" href="1.css">
    
    <style type="text/css">
    
.all{
	border-radius: 20px;
    margin: auto;
    box-shadow: 0 4px 6px 0 hsla(0, 0%, 0%, 0.4);
    overflow:hidden;
position:relative;
width:90%;
 height:724px;
}
.left{
	width: 50%;
  position:absolute;
  left:0;
	/*float: left;*/
	background-color: white;
	height: 724px;

}

section{
	margin: 20px 40px 10px;
}
h1{
	text-align: center;
	font-size: 53px;
	font-family: 'Montserrat', sans-serif;
}
input[type=Email],
input[type=password],
input[type=text]{
	border: none;
	margin: 20px;
	padding: 19px;
	width: 85%;
	background-color:rgba(204, 204, 204, 0.21);
	border-radius: 30px;

}
.Forgot{
	float: right;
	text-decoration: none;
	color: #7b7b7b;
	font-size: 20px;
}
.Forgot:hover{
	color: crimson;
    font-weight: bolder;
}
.checkbox {
  position: relative;
  padding-left: 20px;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  font-size: 20px;
  color: #7b7b7b;
}

/* Hide the browser's default checkbox */
.checkbox input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 7px;
  left: 0;
  height: 15px;
  width: 15px;
  border: 1px solid #ccc;
  
}

/* On mouse-over, add a grey background color */
.checkbox:hover input ~ .checkmark {
  background-color: #fff;
}

/* When the checkbox is checked, add a blue background */
.checkbox input:checked ~ .checkmark {
  border: 1px solid #ccc;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.checkbox input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.checkbox .checkmark:after {
  left: 4px;
  width: 5px;
  height: 10px;
  border: solid rgb(86, 0, 255);
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}
#login{
	width: 100%;
    background-color:rgba(122, 53, 232, 0.57);
    padding: 15px 15px;
    margin:20px 0;
    color: white;
    font-size: 18px;
    font-weight:700;
    border: none;
    border-radius: 30px;
}
#login:hover{
	background-color: #4787ed;
   transition-property: background, border-radius;
   transition-duration: 1s;
   transition-timing-function: linear;
}
.line p {
  display: flex;
  width: 100%;
  justify-content: center;
  align-items: center;
  text-align: center;
  color:#464646;       
}
.line p:before, 
.line p:after {
    content:"";
    border-top: 2px solid;
    margin: 0 20px 0 0;
    flex: 1 0 20px;
}
.line p:after{
    margin: 0 0 0 20px;
}
.Connect{
	margin-left: 50px;
}
.Connect a{
	font-size: 37px;
	border-radius: 30px;
    padding: 6px;
    text-decoration: none;
    margin: 4px 16px;
    color: rgba(51, 51, 51, 0.61);
}
.fa-facebook:hover{
            color: #07105f;
}
.fa-twitter:hover{
            color: #05a8da;
}
.fa-github:hover{
            color: #000000;
}
.fa-linkedin:hover{
            color: #021e79;
}
footer{
	text-align: center;
   color: #777;
   font: 19px sans-serif;
    margin-top: 25%;
}
.right{
	/*float: right;*/
  position:absolute;
  left:50%;
    background-image:linear-gradient(147deg,#4d90fe,#9927AD);
    width: 50%;
    height: 724px;
    text-align: center;
}
#regImg{
	width: 183px;
	margin-top:10%;
}
h2{
	font-size: 55px;
    color: white;
	font-family: 'Montserrat', sans-serif;
}
#description{
	color: white;
    font-size: 24px;
	font-family: 'Montserrat', sans-serif;
    text-align: center;
}
#re{
	background-color: rgba(0,0,0,0.1);
    
    border-radius: 30px;
    padding: 3%;
    border: 2px solid #fff;
    color: white;
    font-size: 24px;
    font-family: sans-serif;
}
#re:hover{
	background-color:rgba(237, 20, 61, 0.58) ;
	transform:scale(1.2, 1.2);
}
.fa-arrow-right:before{
    border: 3px solid;
    border-radius: 30px;
    padding: 4px;
    font-size: 19px;
    margin: 5px;
}
 /* The second design "REGISTER"*/

 .left1{
/*	width: 50%;
	float: right;
	background-color: white;
	height: 724px;*/

}
.right1{
	/*float: left;
    background-image:linear-gradient(147deg,#4d90fe,#9927AD);
    width: 50%;
    height: 724px;
    text-align: center;*/
}
.footer1{
	text-align: center;
   color: #777;
   font: 19px sans-serif;
    margin-top: 12%;
}
    
    </style>
    
    
    
</head>
<body>

 <div class="container-fluid">
      <div class="row">
      <div class="header_section">
         <div class="container">
            <nav class="navbar navbar-dark bg-dark">
               <a class="logo" href="index.jsp"><img src="images/logo2.png" style="height:69px"></a>
               <div class="search_section">
                  <ul>
                     <li><a href="log_in.jsp">Log In</a></li>
                     <li><a href="cart.jsp"><img src="images/shopping-bag.png"></a></li>
                     <li><a href="#"><img src="images/search-icon.png"></a></li>
                  </ul>
               </div>
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample01" aria-controls="navbarsExample01" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse" id="navbarsExample01">
                  <ul class="navbar-nav mr-auto">
                     <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="log_in.jsp">Log in</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="cat.jsp">Category</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="contact.jsp">Contact Us</a>
                     </li>
                  </ul>
               </div>
            </nav>
         </div>
      </div>
      </div>
      </div>
      
      
      
      
            <!-- banner section start -->
      <div class="container-fluid">
      <div class="row">
    
      <img src="images/cat_banner.png" class="image_2" style="margin-top:-40px">
      
    
     
      </div>
      </div>
      
      
      <!-- banner section end -->




<div class="all">
	<div class="left">
        <section>
		<h1>Log In</h1>
<form>
<input  class="in" type="email" placeholder="Email"> <br>
<input class="in" type="password" placeholder="password"><br>
<label class="checkbox">
<input class="checkbox" type="checkbox" name="RememberMe">Remember me
<span class="checkmark"></span>
</label>
<a class="Forgot" href="#">Forgot password?</a> <br>

<button id="login" type="submit" value="Log In">LOG IN</button>
    </form>
                 

<div class="line"> 
                    <p>Or Connect With</p>
                </div>
<div class="Connect">
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-github"></a>
                <a href="#" class="fa fa-linkedin"></a>

</div>
<footer>&copy;2019</footer>
</section>
</div>

<div class="right">
  <img id="regImg" src="https://www5.0zz0.com/2019/09/16/20/516842685.png" alt="RegisterImg">
  <h2 id="helloFriend">Hello, Friend!</h2>
  <p id="description">Enter your personal details and start journey with us</p>
  <button id="re" type="button" onclick="my()">REGISTER<i class="fa fa-arrow-right"></i>

 </button>
</div>

</div>






   <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="row">
               <div class="col-lg-5 col-sm-12">
               
               
  <!--                <h4 class="information_text">Category</h4>
                   <p class="dummy_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim </p>
 -->              
                  <img src="images/logo_black.png" alt="sample85" style="width: 366px; margin-left: 87px;"/>
 
 
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="information_main">
                     <h4 class="information_text">Useful Links</h4>
                    <p class="call_text"><a href="index.jsp">Home</a></p>
                     <p class="call_text"><a href="cat.jsp">Category</a></p>
                     <p class="call_text"><a href="log_in.jsp">Log in</a></p>
                     <p class="call_text"><a href="contact.jsp">Contact Us</a></p>
              
 
              </div>
               </div>
               <div class="col-lg-3 col-sm-6">
                  <div class="information_main">
                     <h4 class="information_text">Contact Us</h4>
                     <p class="call_text"><a href="#">+01 1234567890</a></p>
                     <p class="call_text"><a href="#">+01 9876543210</a></p>
                     <p class="call_text"><a href="#">isha@gmail.com</a></p>
                     <div class="social_icon">
                        <ul>
                           <li><a href="#"><img src="images/fb-icon.png"></a></li>
                           <li><a href="#"><img src="images/twitter-icon.png"></a></li>
                           <li><a href="#"><img src="images/linkedin-icon.png"></a></li>
                           <li><a href="#"><img src="images/instagram-icon.png"></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="copyright_section">
               <h1 class="copyright_text">
               Copyright 2023 All Right Reserved <a href="https://html.design">@ Atdxt Private Limited</a>
            </div>
         </div>
      </div>
      <!-- footer section end -->




<script type="text/javascript">
var originalLeft = document.querySelector('.left').innerHTML;
var originalRight = document.querySelector('.right').innerHTML;

function my() {
    $('.left').animate({
        left: '50%'
    }, 'slow', 'swing', function() {
        document.querySelector('.right').innerHTML = `<div class="right1">
  <img id="regImg" src="https://www5.0zz0.com/2019/09/16/20/516842685.png" alt="RegisterImg">
  <h2 id="helloFriend">Hello, Friend!</h2>
  <p id="description">Enter your personal details and start journey with us</p>
  <button id="re" type="button" onclick="reset()">LOG IN<i class="fa fa-arrow-right"></i>

 </button>
</div>
`;
        document.querySelector('.left').innerHTML = `<div class="left1">
        <section>
		<h1>Sgin Up</h1>
<form>
<input class="in" type="text" placeholder="Name"><br>
<input  class="in" type="email" placeholder="Email"> <br>
<input class="in" type="password" placeholder="password"><br>
<button id="login" type="submit" value="Log In">REGISTER</button>
    </form>
                 

<div class="line"> 
                    <p>Or Connect With</p>
                </div>
<div class="Connect">
                <a href="#" class="fa fa-facebook"></a>
                <a href="#" class="fa fa-twitter"></a>
                <a href="#" class="fa fa-github"></a>
                <a href="#" class="fa fa-linkedin"></a>

</div>
<footer class="footer1">&copy;2019</footer>
</section>
</div>`;
    });

    $('.right').animate({
        left: '0'
    });

    return;
    $('.left').fadeOut(1500, function() {
        document.querySelector('.left').style.float = 'right';
        $('.right').fadeOut(1500, function() {
            document.querySelector('.right').style.float = 'left';

            document.querySelector('.all').innerHTML =
                `



</div>
`;

            $('.right').fadeIn(1500);
            $('.left').fadeIn(1500);

        })

    });
    return

}
try {
    function reset() {
        try {
            $('.left').animate({
                left: '0'
            }, 'slow', 'swing', function() {
                document.querySelector('.right').innerHTML = originalRight;
                document.querySelector('.left').innerHTML = originalLeft;
            });

            $('.right').animate({
                left: '50%'
            });
            return;
            document.body.innerHTML = original;
        } catch (e) {
            alert('x' + e.toString())
        }
    }
    var original = document.body.innerHTML;

} catch (e) {
    alert(e.toString())
}
</script>



<script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script> 
      <script type="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2//2.0.0-beta.2.4/owl.carousel.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="../../assets/js/vendor/popper.min.js"></script>
      <script src="../../dist/js/bootstrap.min.js"></script>
      


</body>
</html>
  <script  src="./script.js"></script>

</body>
</html>
  <script  src="./script.js"></script>

</body>
</html>