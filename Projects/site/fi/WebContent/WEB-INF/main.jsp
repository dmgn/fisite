<!DOCTYPE html>
<html lang="en" ng-app="fisite">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Float Invoice Fintech Pvt Ltd</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="http://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="js/angular.min.js"></script>
  <script src="js/angular-animate.min.js"></script>
  <script src="js/angular-aria.min.js"></script>
  <script src="js/angular-messages.min.js"></script>
  <!-- Angular Material Library -->
  <script src="js/angular-material.min.js"></script>
  <script src="js/siteAngular.js"></script>

  <style>
	/*.zerif_about_us_center,
	.zerif-rtl-skills .skills {
	    -webkit-transform: translatex(0px) !important;
	    -moz-transform: translatex(0px) !important;
	    -ms-transform: translatex(0px) !important;
	    transform: translatex(0px) !important;
	    opacity: 1 !important;
	}
  .big-intro {
    text-align: right;
    font-weight: 300;
    font-size: 60px;
    line-height: normal;
    margin-top: -15px;
	}
  .zerif-rtl-skills,
	.zerif-rtl-skills .skills {
		width: 100%;
	}
	.zerif-rtl-skills .skills li.skill {
	    display: inline-block;
	    clear: none;
		float: left;
		width: 25%;
		margin-bottom: 0;
	}
 
.skills {
	text-align: left;
	margin: 0 0 0 0;
}
.skills .skill {
	display: block;
	clear: both;
	margin-top: 0;
	margin-bottom: 25px;
}
.skills .skill .skill-count {
	display: inline-block;
	height: 64px;
	margin-top: 3px;
	float: left;
	margin-right: 15px;
	margin-bottom: 25px;
}
.skills li:last-child {
	margin-bottom: 0;
}
.skills .skill .skill1,.skill2,.skill3,.skill4 {
	font-size: 16px !important;
}
.skills .skill .section-legend {
	text-transform: uppercase;
	font-weight: 700;
	clear: none;
	width: auto;
	float: none;
	margin-top: 0;
	margin-bottom: 0;
}
.skills .skill p {
	line-height: 20px;
	font-size: 14px;
	color: #8f8f8f;
}*/
.section-header {
	text-align: center;
	padding-bottom: 55px;

}
.focus .row {
    text-align: center;
}
.row{
    float: left;
    width: 100%;
    margin-right: 0;
    margin-left: 50px;
}
  .header-content-wrap{
		padding: 235px 0 150px;
	}
  body {
      font: 400 15px Lato, sans-serif;
      line-height: 1.8;
      color: #818181;

  }
  h1{color:rgb(3,169,244);
  }
  h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 10px;
	  
  }
  h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  } 
  .pixeden  {
    height: 63px;
    margin: auto;
    position: absolute;
    top: 0; left: 0; bottom: 0; right: 0;
    display: block;
}
.focus-box .service-icon .pixeden  {
	border-radius: 100%;
}/* FOCUS BOX */
.focus-box .service-icon {
	margin-bottom: 30px;
	width: 145px;
	height: 145px;
	margin: auto;
	border-radius: 50%;
	border: 10px solid #ececec;
	margin-bottom: 20px;
	position: relative;
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}
/* ON HOVER COLORED ROUNDED CIRCLE AROUND ICONS */
/* ON HOVER COLORED ROUNDED CIRCLE AROUND ICONS */
.red,.green,.blue,.yellow {
	-webkit-transition: all 0.2s ease-in-out;
	transition: all 0.2s ease-in-out;
}
.focus-box:nth-child(4n+1) .service-icon:hover {
	border: 10px solid #e96656;
}
.focus-box:nth-child(4n+2) .service-icon:hover{
	border: 10px solid #34d293;
}
.focus-box:nth-child(4n+3) .service-icon:hover {
	border: 10px solid #3ab0e2;
}
.focus-box:nth-child(4n+4) .service-icon:hover{
	border: 10px solid #f7d861;
}
  .jumbotron {
      background-color: #fff;
	  #background:#337ab7;
      #color: #fff;
	  color:rgb(3,169,244);
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  .container-fluid {
      padding: 60px 50px;
  }
  .bg-grey {
      background-color: #f6f6f6;
  }
  .logo-small {
      color: #f4511e;
      font-size: 50px;
  }
  .logo {
      color: #f4511e;
      font-size: 200px;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail img {
      width: 100%;
      height: 100%;
      margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
      background-image: none;
      color: #f4511e;
  }
  .carousel-indicators li {
      border-color: #f4511e;
  }
  .carousel-indicators li.active {
      background-color: #f4511e;
  }
  .item h4 {
      font-size: 19px;
      line-height: 1.375em;
      font-weight: 400;
      font-style: italic;
      margin: 70px 0;
  }
  .item span {
      font-style: normal;
  }
  .panel {
      border: 1px solid #f4511e; 
      border-radius:0 !important;
      transition: box-shadow 0.5s;
  }
  .panel:hover {
      box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
      border: 1px solid #f4511e;
      background-color: #fff !important;
      color: #f4511e;
  }
  .panel-heading {
      color: #fff !important;
      background-color: #f4511e !important;
      padding: 25px;
      border-bottom: 1px solid transparent;
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 0px;
      border-bottom-right-radius: 0px;
  }
  .panel-footer {
      background-color: white !important;
  }
  .panel-footer h3 {
      font-size: 32px;
  }
  .panel-footer h4 {
      color: #aaa;
      font-size: 14px;
  }
  .panel-footer .btn {
      margin: 15px 0;
      background-color: #f4511e;
      color: #fff;
  }
  .navbar {
      margin-bottom: 0;
      background-color: #fff;
      z-index: 9999;
      border: 0;
      font-size: 12px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
      color: rgb(3,169,244) !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
      color: #f4511e !important;
      background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
      color: #fff !important;
  }
  footer .glyphicon {
      font-size: 20px;
      margin-bottom: 20px;
      color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
      animation-name: slide;
      -webkit-animation-name: slide;
      animation-duration: 1s;
      -webkit-animation-duration: 1s;
      visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
        width: 100%;
        margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
        font-size: 150px;
    }
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
	   <img src = "./img/logo.jpg" height=65/> 
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#about">ABOUT</a></li>
        <li><a href="#services">SERVICES</a></li>
        <li><a href="#portfolio">PORTFOLIO</a></li>
        <li><a href="#pricing">PRICING</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center" ng-controller="EmailSubscriptionCtrl">
  <h1>Float Invoice</h1> 
  <p>ON DEMAND ACCESS TO INVOICE FINANCE FOR SMES</p> 
  <form class="form-inline">
    <input ng-model="email" type="email" class="form-control" size="50" placeholder="Email Address" required ng-change="clearResponseMsg()">
    <button type="button" class="btn btn-primary" ng-click="subscribe()">Subscribe</button>
  </form>
  <h5>{{respMsg}}</h5>
</div>

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row-sm">
    <div class="col-sm-12">      
		<div class="container">
	<!-- SECTION HEADER -->
			<div class="section-header">
				<!-- SECTION TITLE -->
				<h2 class="dark-text">ABOUT</h2>
			</div>
			<div class="row-sm">

				<div class="col-lg-4 col-sm-4 focus-box" data-scrollreveal="enter left after 0.15s over 1s">
					<div class="service-icon">
								<a href="#"><i class="pixeden" style="background:url(./img/business.jpg) no-repeat center;width:100%; height:100%;"></i> <!-- FOCUS ICON--></a>			
					</div>
					<h3 class="red-border-bottom">What is Float Invoice</h3>
					<!-- FOCUS HEADING -->
					<p>Float Invoice helps businesses unlock funds in 2 days by selling their invoices online. Our peer-to-peer lending platform taps into a network of investors who buy the invoices, and advance you cash quickly & affordably.</p>	
				</div>
				<div class="col-lg-4 col-sm-4 focus-box" data-scrollreveal="enter left after 0.15s over 1s">
					<div class="service-icon">
						<a href="#"><i class="pixeden" style="background:url(./img/invoice.png) no-repeat center;width:100%; height:100%;"></i> <!-- FOCUS ICON--></a>
					</div>
					<h3 class="red-border-bottom">Who can use Float Invoice</h3>
					<!-- FOCUS HEADING -->
					<p>You can use us if you’re a Indian based business, that sells products or services to other businesses, and gets paid on terms. We love helping businesses succeed, which is why we approve around 80% of applications.</p>	
				</div>
				<div class="col-lg-4 col-sm-4 focus-box" data-scrollreveal="enter left after 0.15s over 1s">
					<div class="service-icon">
						<a href="#"><i class="pixeden" style="background:url(./img/rupee-logo.png) no-repeat center;width:100%; height:100%;"></i> <!-- FOCUS ICON--></a>
					</div>
					<h3 class="red-border-bottom">How much does it cost</h3>
					<!-- FOCUS HEADING -->
					<p>Our fees are transparent so you’ll always know how much you pay upfront. No setup fees, no hidden costs. Typically, you&#8217;ll pay between 1-3% of the face value of your invoice, and this goes down the more you use us. </p>	
				</div>
			</div>
		</div> 
     <!-- <br><button class="btn btn-primary">Get in Touch</button>-->
    </div>   
  </div>
</div>
<!--
<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Our Values</h2><br>
      <h4><strong>MISSION:</strong> Our mission lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4><br>
      <p><strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
  </div>
</div>
-->
<!-- Container (Services Section) -->
<div id="services" class="container-fluid text-center bg-grey">
  <h2>SERVICES</h2>
  <h4>How does it work</h4>
  <br>
  <div class="row">

			<!-- COLUMN 1 - BIG MESSAGE ABOUT THE COMPANY-->

		<div class="col-lg-4 col-md-4 column zerif-rtl-big-title"><div class="big-intro" data-scrollreveal="enter left after 0s over 1s">We make sure you get your money when you need it. Here’s how.</div></div><div class="col-lg-4 col-md-4 column zerif_about_us_center text_and_skills" data-scrollreveal="enter bottom after 0s over 1s">
		
		<p>Float Invoice helps business owners streamline their cash flow. We let you free up the cash trapped in your invoices by giving you an advance on the amount due. There is no paperwork, no obligation, and no hidden fees. With Float Invoice, you can access the capital you need, when you need it. Advances are repaid with a clearing fee over 12 weekly installments. The fee is set automatically for each advance.</p></div>		
		<div class="col-lg-4 col-md-4 column zerif-rtl-skills ">

			<ul class="skills" data-scrollreveal="enter right after 0s over 1s" data-sr-init="true" data-sr-complete="true" >

				<!-- SKILL ONE -->

				
				<li class="skill skill_1">
					<div class="section-legend">CREATE A FREE ACCOUNT IN 10 MINUTES</div><p>Apply for an invoice financing facility</p>
				</li>

				
				<!-- SKILL TWO -->

				
				<li class="skill skill_1">
					<div class="section-legend">ADD YOUR INVOICES</div>
					
						<p>Connect your accounting app to add your unpaid invoices.</p>
				</li>

				
				<!-- SKILL THREE -->
								<li class="skill skill_1">

					<!--<div class="skill-count"><input type="text" value="66" data-thickness=".2" class="skill3" tabindex="-1" style="width: 36px; height: 21px; position: absolute; vertical-align: middle; margin-top: 21px; margin-left: -50px; border: 0px; font-style: normal; font-variant: normal; font-weight: bold; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Arial; text-align: center; color: rgb(255, 255, 255); padding: 0px; -webkit-appearance: none; background: none;"></div>
					-->
					<div class="section-legend">PICK AN UNPAID INVOICE TO CLEAR</div><p>Clear any of your available unpaid invoices whenever you need the funds.</p>
				</li>

				
				<!-- SKILL FOUR -->
				
				<li class="skill skill_1">

					<div class="section-legend">MONEY IN THE BANK</div><p>An advance for the amount is automatically transferred to your bank account. Peace of mind achieved.</p>
				</li>

				
			</ul>

		</div> <!-- / END SKILLS COLUMN-->

		
	</div> <!-- / END 3 COLUMNS OF ABOUT US-->
  <!--div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-off logo-small"></span>
      <h4>POWER</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-heart logo-small"></span>
      <h4>LOVE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-lock logo-small"></span>
      <h4>JOB DONE</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>
  <br><br>
  <div class="row slideanim">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-leaf logo-small"></span>
      <h4>GREEN</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-certificate logo-small"></span>
      <h4>CERTIFIED</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-wrench logo-small"></span>
      <h4 style="color:#303030;">HARD WORK</h4>
      <p>Lorem ipsum dolor sit amet..</p>
    </div>
  </div>-->
</div>
<!--
<!-- Container (Portfolio Section) 
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>Portfolio</h2><br>
  <h4>What we have created</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="paris.jpg" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Yes, we built Paris</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="newyork.jpg" alt="New York" width="400" height="300">
        <p><strong>New York</strong></p>
        <p>We built New York</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="sanfran.jpg" alt="San Francisco" width="400" height="300">
        <p><strong>San Francisco</strong></p>
        <p>Yes, San Fran is ours</p>
      </div>
    </div>
  </div><br>
  
  <h2>What our customers say</h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators 
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides 
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <h4>"This company is the best. I am so happy with the result!"<br><span style="font-style:normal;">Michael Roe, Vice President, Comment Box</span></h4>
      </div>
      <div class="item">
        <h4>"One word... WOW!!"<br><span style="font-style:normal;">John Doe, Salesman, Rep Inc</span></h4>
      </div>
      <div class="item">
        <h4>"Could I... BE any more happy with this company?"<br><span style="font-style:normal;">Chandler Bing, Actor, FriendsAlot</span></h4>
      </div>
    </div>

    <!-- Left and right controls 
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>-->

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>Pricing</h2>
    <h4>Choose a payment plan that works for you</h4>
  </div>
  <!--<div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Basic</h1>
        </div>
        <div class="panel-body">
          <p><strong>20</strong> Lorem</p>
          <p><strong>15</strong> Ipsum</p>
          <p><strong>5</strong> Dolor</p>
          <p><strong>2</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$19</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Pro</h1>
        </div>
        <div class="panel-body">
          <p><strong>50</strong> Lorem</p>
          <p><strong>25</strong> Ipsum</p>
          <p><strong>10</strong> Dolor</p>
          <p><strong>5</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$29</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Premium</h1>
        </div>
        <div class="panel-body">
          <p><strong>100</strong> Lorem</p>
          <p><strong>50</strong> Ipsum</p>
          <p><strong>25</strong> Dolor</p>
          <p><strong>10</strong> Sit</p>
          <p><strong>Endless</strong> Amet</p>
        </div>
        <div class="panel-footer">
          <h3>$49</h3>
          <h4>per month</h4>
          <button class="btn btn-lg">Sign Up</button>
        </div>
      </div>      
    </div>    
  </div>-->
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  
  
  <h2 class="text-center">CONTACT</h2>
  <br/>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Chennai, India</p>
      <p><span class="glyphicon glyphicon-phone"></span> +91 7707720815</p>
      <p><span class="glyphicon glyphicon-envelope"></span> contact@floatinvoice.com</p>
	  <p> <a href=""><img  src = "./img/facebook.png"/></a> &nbsp;
	  	  <a href="https://www.linkedin.com/company/float-invoice"><img  src = "./img/linked-in.png"/></a> &nbsp;
	      <a href="https://twitter.com/FloatInvoice"><img  src = "./img/twitter.png"/></a> 
	  </p>

    </div>
    <div class="col-sm-7 slideanim" ng-controller="ContactInfoCtrl">
      <div class="row-sm">
        <div class="col-sm-6 form-group">
          <input ng-change="clearContactInfoResponseMsg()" class="form-control" ng-model="name" id="name" name="name" placeholder="Your Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input ng-change="clearContactInfoResponseMsg()" class="form-control" ng-model="email" id="email" name="email" placeholder="Your Email" type="email" required>
        </div>
    		<div class="col-sm-12">
    		  <textarea ng-change="clearContactInfoResponseMsg()" class="form-control" ng-model="textMsg" id="comments" name="comments" placeholder="Your message" rows="5"></textarea><br>
    		</div>
      </div>      
      <div class="row-sm">
        <h5>{{contactInfoResp}}</h5>
        <div class="col-sm-12 form-group">
          <button class="btn btn-primary pull-right" type="submit" ng-click="submitContactInfo()">Send Message</button>
        </div>

      </div>

    </div>
  </div>



</div>





<div id="googleMap" style="height:400px;width:100%;"></div>

<!-- Add Google Maps -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
var myCenter = new google.maps.LatLng(13.0814847, 80.27246);

function initialize() {
var mapProp = {
  center:myCenter,
  zoom:12,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>

<!--footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Bootstrap Theme Made By <a href="http://www.w3schools.com" title="Visit w3schools">www.w3schools.com</a></p>
</footer-->

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>
