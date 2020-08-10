<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Softvin -HOME</title>
<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial;
}

.header {
	text-align: center;
	padding: 32px;
}

.row {
	display: -ms-flexbox; /* IE10 */
	display: flex;
	-ms-flex-wrap: wrap; /* IE10 */
	flex-wrap: wrap;
	padding: 0 4px;
}

/* Create four equal columns that sits next to each other */
.column {
	-ms-flex: 25%; /* IE10 */
	flex: 25%;
	max-width: 25%;
	padding: 0 4px;
}

.column img {
	margin-top: 8px;
	vertical-align: middle;
	width: 100%;
}

/* Responsive layout - makes a two column-layout instead of four columns */
@media screen and (max-width: 800px) {
	.column {
		-ms-flex: 50%;
		flex: 50%;
		max-width: 50%;
	}
}

/* Responsive layout - makes the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.column {
		-ms-flex: 100%;
		flex: 100%;
		max-width: 100%;
	}
}

.footer {
	margin-left: 39px;
	position: relative;
	left: 0;
	bottom: 0;
	width: 100%;
	position: relative;
}
</style>
</head>
<%@include file="header.jsp"%>

<body>
	<section id="home">
	<div class="container-fluid">

		<div class="jumbotron">

			<br> <br> <br>

			<div style="text-align: right">
				<img src="images/softvin.png" width="45%" height="45%"> <br>
				<h1>Technologies</h1>
			</div>
			<h1 style="color: darkblue;">
				Necessity<br> is the
				<c style="color:skyblue;"> mother of <br>
				invention!</c>
			</h1>
			<br> <br>
			<div class="btn btn-primary">
				<a href="#contact" style="text-decoration: none; color: white;">CONTACT
					US</a>
			</div>
			<br> <br> <br>

		</div>
		<br>

	</div>

	</section>
	<section id="about">
	<div class="container">
		<div style="text-align: left">
			<img src="images/ek_ladki.png" width="35%" height="35%"
				style="float: left; margin-right: 20px; border: solid black 20px; padding: 10px;" />
			<h2>
				<b />About us
			</h2>
			<h4 style="color: grey;">
				<i>We are providing all types of Software Solutions.</i>
			</h4>
			<p style="color: grey;">
				Softvin Technologies is a leading Software development company that
				offers creative digital solutions to established and new brands.
				With the team of skilled and experienced Software,mobile application
				developers and designers, we create possibilities for your business
				by ensuring rewarding results. They are always on their toes to help
				you build an engaging brand and grow your organization by leaps and
				bounds. Knowledge of the tech industry and profound business
				understanding are what guide us to provide our clients with the best
				digital solutions. We build cross-platform mobile applications that
				are compatible with both iOS and Android devices. Our experts take
				time to get familiar with your business requirements and identify
				the trends, strengths, competitors, and opportunities to develop
				customized & unique strategies for assured results. Be it any
				industry, real estate, education, hospitality, finance, media,
				sports, technology, science, and more, our dynamic team of
				professionals has got your back. It will help you establish a strong
				software foundation and new-age mobile application to reach your
				target audience anytime, anywhere.<br>Growing IT market to see,
				developing and providing training on Web, Mobile, and Stand Alone
				Application to market based reqirements.<br> <br> <i
					class="fa fa-angle-double-right"></i> Web developement | Mobile App
				developement | All developement<br> <i
					class="fa fa-angle-double-right"></i> Research and Development &
				Tech Support <br> <i class="fa fa-angle-double-right"></i>100%
				Client Satisfaction.
		</div>
	</div>
	<br>
	<br>
	<br>
	</section>
	<section id="services">
	<div class="container-fluid">
		<div class="jumbotron">
			<center>
				<h1>Services</h1>

				<marquee width="20%" direction="left" height="100px"
					style="color: grey;"> We Provide World Class Services </marquee>
			</center>
			<div class="card-deck">
				<div class="card">
					<br>
					<center>
						<i class="fa fa-cogs fa-3x" style="float: center; color: #000;"></i>
					</center>
					<div class="card-body">
						<h5 class="card-title">Software Development</h5>
						<p class="card-text" style="color: grey;">Software Development
							Services from Softvin Technologies are innovative and aimed at
							providing new trends in the field of software designing and
							development. This is done in accordance with the software
							development standards to produce compatible software solutions.
							Softvin Technologies is into the entire software development life
							cycle. Beyond well defined projects requiring simpler technical
							skills, proven high end architecture design, detail design,
							system building, and even new product engineering abilities
							enables to help you in any phase of software development.</p>
					</div>
				</div>
				<div class="card">
					<br>
					<center>
						<i class="fa fa-ioxhost fa-3x"></i>
					</center>
					<div class="card-body">
						<h5 class="card-title">Website Development</h5>
						<p class="card-text" style="color: grey;">Offering the best in
							class Web Development Services, Softvin has the expertise to
							create simple, responsive and user friendly interface
							Incorporating features like Speed optimization streamlined
							contentstructure, smart use of visuals schemes we deliver only
							the best.</p>
					</div>
				</div>

				<div class="card">
					<br>
					<center>
						<i class="fa fa-mobile fa-3x"></i>
					</center>
					<div class="card-body">
						<h5 class="card-title">Mobile App-Development</h5>
						<p class="card-text" style="color: grey;">Providing the best
							of mobile application development services, teams at softvin have
							a penchant for developing native smart phone apps that have the
							advantage of being performance –critical and highly reliable.</p>
					</div>
				</div>
			</div>
			<br> <br>
			<div class="card-deck">
				<div class="card">
					<br>
					<center>
						<i class="fa fa-gg fa-3x" style="color: #2282ff;"></i>
					</center>
					<div class="card-body">
						<h5 class="card-title">SEO</h5>
						<p class="card-text" style="color: grey;">We have a fanatical
							Search Engine Optimization & Internet Marketing team that ensure
							your website is presented to various significant directories;
							whereas our experienced technical writing team endow with
							qualityweb content and also articles for relocation in various
							categories such as forums, blogs etc. This increases traffic to
							your website and acts as a catalyst in engaging more customers
							and thereby improving business scenario.</p>
					</div>
				</div>
				<div class="card">
					<br>
					<center>
						<i class="fa fa-adn fa-3x" style="color: #2282ff;"></i>
					</center>
					<div class="card-body">
						<h5 class="card-title">Domain Name Registration</h5>
						<p class="card-text" style="color: grey;">Softvin Technologies
							provide Domain Name Registration services help you to register
							your domain in few minutes.So domin name is used for finding and
							identifying computer on the internet.And domain names were
							developed and used to identifiy entities on the internet rather
							than using IP address.</p>
					</div>
				</div>
				<div class="card">
					<br>
					<center>
						<i class="fa fa-server fa-3x" style="color: #2282ff;"></i>
					</center>

					<div class="card-body">
						<h5 class="card-title">Website Hosting</h5>
						<p class="card-text" style="color: grey;">We've added solid
							state drives (SSDs) to our shared hosting to help your sites
							succeed; pages now load 200% faster, making it the quickest and
							most affordable way to get your website online. Our shared
							hosting plan supports any kind of site including blogs,
							portfolios, business sites, online stores and even complex
							database-driven sites. Mechanical hard drives are yesterday's
							news. With SSDs, your sites perform better, and you'll experience
							faster database queries and faster caching overall.Read less</p>
					</div>
				</div>
			</div>

		</div>

		<center>
			<h1>Why choose us?</h1>
			<br> <br>
			<p style="float: center; margin-center: 200px; color: grey;">Our
				services include all types of activities related to software
				development solutions, so we can match any need you have for custom
				software development projects. We are helping companies change their
				existing business paradigms by bringing tomorrow's technological
				solutions to today's businesses. We provide a comprehensive range of
				data protection and cyber security services to protect your business
				information and to give you peace-of-mind. We help you manage risks
				and build confidence in your technology systems.</p>
		</center>
		<br> <br> <img src="images/why-us.jpg" width="50%"
			height="50%"
			style="float: left; margin-right: 40px; border: solid grey 5px; padding: 1px;" />
		<i class="fa fa-diamond fa-3x" style="color: #f058dc;"></i>
		<h2>Before implementing IT solutions we</h2>
		<ul style="float: left; color: grey;">
			<li>define the problem</li>
			<li>what needs to be done</li>
			<li>give you a realistic picture of the project</li>
			<li>outline steps to stay on time and within your budget</li>
			<li>show you what the system will look like when completed</li>
		</ul>
		<br> <br> <br> <br> <br> <br> <i
			class="fa fa-object-group fa-3x" style="color: #ffb774;"></i>
		<h2>Total IT Software Solution's team can assist you at any stage
			of your solution:</h2>
		<ul style="float: right; margin-right: 390px; color: grey;">
			<li>System design / planning</li>
			<li>Implementation</li>
		</ul>
		<br> <br> <br>
		<div style="float: right; margin-right: 150px">
			<i class="fa fa-child fa-3x"></i>
			<h3>Client Satisfaction</h3>
			<ul style="color: grey;">
				<li>We understand our customers needs and we work on it.
			</ul>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="row counters" style="font-size: 30px;">

			<div class="col-lg-3 col-6 text-center">
				<span data-toggle="counter-up">27</span>
				<p>Clients</p>
			</div>

			<div class="col-lg-3 col-6 text-center">
				<span data-toggle="counter-up">105</span>
				<p>Projects</p>
			</div>

			<div class="col-lg-3 col-6 text-center">
				<span data-toggle="counter-up">362</span>
				<p>Hours Of Support</p>
			</div>

			<div class="col-lg-3 col-6 text-center">
				<span data-toggle="counter-up">13</span>
				<p>Hard Workers</p>
			</div>

		</div>

	</div>
	<br>
	<br>
	</section>

	<section id="career" class="wow fadeInUp">
	<div class="container-fluid">
		<div class="jumbotron" style="background-color: #182137;">
			<h2 style="color: white;">Call To Action</h2>
			<br>
			<p style="color: white; float: left">
				We're just a click away ! Would you like to help us, help others or
				do you have a question, thought or idea?<br> We'd love to hear
				from you! Our staff is waiting to assist ...
			</p>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="Tel:7566437956"><button type="button"
					class="btn btn-outline-success btn-lg">
					<i class="fa fa-phone">&nbsp;&nbsp;Call To Action</i>
				</button></a>
		</div>
	</div>
	<div class="container">
		<img src="images/cr1.png" width="40%" height="70%"
			style="float: left; margin-right: 40px;" />
		<h2>EXPERT SOCIAL MEDIA MARKETING</h2>
		<br> <br>
		<p style="color: grey;">
			Want to get your business on social media, but just don’t understand
			the way it all works? Or do you already have social media accounts
			set up, but want to know more about how to increase your visibility?
			At Infront, we have experts who can do it for you. Whether it is
			Facebook, Twitter, Pinterest, or other similar networking sites, our
			marketing department has the expertise and knowledge to get you where
			you want to be. Social media is constantly evolving, and you need
			someone who can guide you through the process, and take you one step
			ahead of your competition.<br> <br> Our team of
			award-winning social media marketing experts collaborate across
			digital marketing specialties to produce powerful results for your
			business. Our strategy is simple. Build strong social signals that
			shape meaningful relationships with customers, increase the number of
			social followers, improve your business’ trust and credibility, and
			build brand loyalty.
		</p>
		<br> <br> <img src="images/cr2.png" width="40%" height="70%"
			style="float: right; margin-left: 40px;" />
		<h2 style="float: left;">USER-FRIENDLY MOBILE APP INTERFACE</h2>
		<br> <br>
		<p style="text-align: justify; color: grey;">
			Our skilled designers keep consistency, connectivity and
			functionality at the core of designing Mobile User Interface. A
			design, that is easy both on the eye and use, is at the core of our
			philosophy. Custom application development for both iOS and Android
			is our forte.<br> <br> Softvin Technologies is one of the
			earliest mobile application development company from India that
			started making Android, Windows and iOS apps. We have always provided
			best in class service in mobile app development outsourcing services
			till date. When you choose us, you are partnering with most
			cost-effective team that has been designing and developing
			feature-rich mobile apps for years.<br> <br> Softvin
			Technologies hires the most intelligent, proficient and tech-savvy
			mobile apps developers. Our developers have in-depth knowledge of
			major platforms or frameworks used for mobile app development. With a
			team of over 100 dedicated developers, designers, and creative
			engineers, we can provide on-demand capacity to help you meet
			challenges, tight deadlines and promises to the marketplace.
		</p>
		<br> <br>

	</div>
	<br>
	<br>
	<br>
	<br>
	</section>
	<section id=" Portfolio">
	<div class="container-fluid">
		<div class="jumbotron">
			<center>
				<h1>
					<b />Our Portfolio
				</h1>
				<div class="row" style="margin-left: 200px">
					<div class="column">
						<img src="images/app1.jpg" style="width: 100%"> <img
							src="images/web1.jpg" style="width: 100%">

					</div>
					<div class="column">
						<img src="images/app2.jpg" style="width: 100%"> <img
							src="images/web3.jpg" style="width: 100%">

					</div>
					<div class="column">
						<img src="images/app3.jpg" style="width: 100%"> <img
							src="images/web2.jpg" style="width: 100%">
					</div>


				</div>
			</center>
		</div>
		<br> <br>
		<center>
			<h2>
				<b />Testimonials
			</h2>
			<br> <br> <img src="images/ashi.jpeg" height="10%"
				width="10%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img
				src="images/ayushi.jpg" height="10%" width="10%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<img src="images/reddan.jpg" height="10%" width="10%"><br>
			<br> <br>
			<h2>
				<b />Our Technical Skills
			</h2>
		</center>
		<br> <br>
		<ol style="margin-left: 50px">
			<li>J2SE</li>
			<li>J2EE</li>
			<li>WORD PRESS</li>
			<li>PYTHON</li>
			<li>AJAX</li>
		</ol>
	</div>
	<br>
	<br>
	<br>
	<br>
	</section>

	<section id="contact">

	<div class="footer">
		<div style="float: left">
			<div style="float: left">
				<h2>
					<b />SOFTVIAN
				</h2>
				<p style="color: grey;">
					Softvin Technologies is Software <br>export Company which are
					provide to<br> Website & Software Development<br>
					Services & Mobile App Development.<br> And also Softvin
					Technologies given<br> best Quality Assurance Services.
				</p>
				<h6>
					<b>OUR NEWSLETTER 
				</h6>
				<p style="color: grey;">
					Sign up with your business email<br> address to receive our
					latest news and<br> updates
				</p>
				<input type="email" name="suscribe">&nbsp;&nbsp;
				<button class="btn btn-info">Suscribe</button>
				
			</div>
			
			<div>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Useful
						Links 
				</h6>
				<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#home">HOME</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#services">Services</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#about">About</a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="#career">Career</a><br> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CONTACT
					US</h6>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<p>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					21/10,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					Near Hotel Uday Palace, Vijay Nagar<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					Indore, India<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					Phone: +91 70 49 29 0123<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

					Email: hr@softvin.com<br>
					
				</p>


				<a href="https://www.facebook.com/"><i class="fa fa-facebook fa-2x"
					style="margin-left: 300px"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
					href="https://www.instagram.com"><i class="fa fa-instagram fa-2x"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="https://www.twitter.com"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="https://www.linkedin.com"><i class="fa fa-linkedin fa-2x"></i></a>
			</div>
		</div>
		<div style="float: right; margin-right: 120px">
			<h6>
				<b>EXPERIENCE BEST!</b>
			</h6>
			<br> <br>
			<p>
				Start your BEST! experience right now. Get in touch <br>with us
				to see how we can Create BEST! for you
			</p>
			<br> <br>



			<form action="SuscribeHere" method="post">
				<div class="form-group">

					<input type="text" class="form-control" name="name"
						placeholder="Enter your name" required><br> <input
						type="email" class="form-control" name="email"
						placeholder="Enter your email" required><br> <input
						type="tel" class="form-control" name="number" pattern="^(\+91[\-\s]?)?[0]?(91)?[6789]\d{9}$"
						placeholder="Enter your contact no" required><br>	
						
					<div class="form-group">
						<label for="exampleFormControlFile1">Uplaod Your Resume
							Here</label> <input type="file" class="form-control-file"
							id="exampleFormControlFile1" name="resume" required>
					</div><br>


					<button type="submit" class="btn btn-primary">Suscribe Here</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="btn btn-danger" onclick="form.reset();">Reset</button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="#" class="back-to-top"><i class="fa fa-angle-double-up fa-3x"></i></a>
				</div>
				
			</form>

		</div>
	</div>

	<br>
	<br>
	</section>
 





</body>
</html>