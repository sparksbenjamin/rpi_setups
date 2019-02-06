<html>

<head>
<meta http-equiv=Content-Type content="text/html; charset=windows-1252">
<meta name=Generator content="Microsoft Word 15 (filtered)">
<title>Raspberry PI Setups</title>
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Calibri Light";
	panose-1:2 15 3 2 2 2 4 3 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
p.MsoTitle, li.MsoTitle, div.MsoTitle
	{mso-style-link:"Title Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpFirst, li.MsoTitleCxSpFirst, div.MsoTitleCxSpFirst
	{mso-style-link:"Title Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpMiddle, li.MsoTitleCxSpMiddle, div.MsoTitleCxSpMiddle
	{mso-style-link:"Title Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
p.MsoTitleCxSpLast, li.MsoTitleCxSpLast, div.MsoTitleCxSpLast
	{mso-style-link:"Title Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:28.0pt;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
span.TitleChar
	{mso-style-name:"Title Char";
	mso-style-link:Title;
	font-family:"Calibri Light",sans-serif;
	letter-spacing:-.5pt;}
.MsoChpDefault
	{font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{margin-bottom:8.0pt;
	line-height:107%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
-->
</style>

</head>

<body lang=EN-US>

<div class=WordSection1>

<p class=MsoTitle>Raspberry PI Setup Scripts</p>

<p class=MsoNormal>This is a collection of scripts that can be used to setup different
systems on the Raspberry PI.  These can be used to streamline setup of services
on the Raspberry PI</p>

</div>

</body>

</html>




List of scripts that will install and setup differnet functions for a Raspberry Pi II.  

Unifi Controller<br />
  <p>This will add repos for Ubnt Unifi controller software and Java.  System can be kept up to date by using apt-get</br>
  <code>wget "https://raw.githubusercontent.com/sparksbenjamin/rpi_setups/master/setup-unifi_controller.sh" -O setup-unifi_controller.sh && chmod +x setup-unifi_controller.sh && sudo ./setup-unifi_controller.sh</code>
  </p>
