<%-- 
    Document   : newhelp
    Created on : Nov 29, 2017, 1:13:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Testtitle>
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="/jquery_popup.css" />
<script src="/jquery_popup.js"></script>
</head>
<body>
<div id="mainform">

<div class="form" id="popup">
<p id="onclick">Popup</p>
<br/>
</div>
</div>

<!--Contact Form -->
<div id="contactdiv">
<form class="form" action="#" id="contact">
<img src="images/button_cancel.png" class="img" id="cancel"/>
<h3>Contact Form</h3>
<hr/><br/>
<label>Name: <span>*</span></label>
<br/>
<input type="text" id="name" placeholder="Name"/><br/>
<br/>
<label>Email: <span>*</span></label>
<br/>
<input type="text" id="email" placeholder="Email"/><br/>
<br/>
<label>Contact No: <span>*</span></label>
<br/>
<input type="text" id="contactno" placeholder="10 digit Mobile no."/><br/>
<br/>
<label>Message:</label>
<br/>
<textarea id="message" placeholder="Message......."></textarea><br/>
<br/>
<input type="button" id="send" value="Send"/>
<input type="button" id="cancel" value="Cancel"/>
<br/>
</form>
</div>
</form>

</div>
</body>
</html>