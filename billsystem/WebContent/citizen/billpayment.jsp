<html>
<head>
<style>
ul.map
 {
  list-style-type:none;
  margin:0;
  padding:0;
  overflow:hidden;
  height:50px;
  background-color:cyan;
  }
  
    li
  {
   text-height:50px;
   }
  
  
  
  
a.css3dbutton {
    background: #c1e75c; /* default green background color of button */
    color: black;
    text-decoration: none;
    font: bold 18px Arial; /* font size and style */
    position: relative;
    display: inline-block;
    margin-right: 15px; /* spacing between multiple buttons */
    padding: 15px; /* padding inside button */
    border-radius: 85px; /* border radius of button */
    width: 85px; /* dimensions of button */
    height: 85px;
    outline: none;
    box-shadow: 0 8px 0 #8dab3b, /* depth and color of main shadow */
        0 0 3px rgba(0,0,0, 0.2),
        0 20px 20px #eee;
    -moz-transition: all 0.2s ease-in-out; /* transition style and duration */
    -o-transition: all 0.2s ease-in-out;
    -webkit-transition: all 0.2s ease-in-out;
    transition: all 0.2s ease-in-out;
}

a.css3dbutton span.outer{ /* outermost text container */
    text-align: center;
    width: 100%;
    display: block;
    position: relative;
    top: 50%; /* center element */
    -webkit-transform: translateY(-50%); /* center element */
    -ms-transform: translateY(-50%);
    -moz-transform: translateY(-50%);
    transform: translateY(-50%); 
}

a.css3dbutton span.outer span.top{ /* top line */
    display: block;
    padding-bottom: 4px;
}

a.css3dbutton span.outer span.bottom{ /* bottom line */
    border-top: 1px solid black;
    padding-top: 4px;
    display: block;
    text-transform: uppercase;
    line-height: 12px;
    font-size: 60%;
}


a.css3dbutton:hover {
    background: #9cc62b; /* background color when mouse rolls over button */
    box-shadow:  none;
    -ms-transform: translateY(8px); /* shift button downwards by shadow depth amount */
    -webkit-transform: translate3D(0, 8px, 0);
    -moz-transform: translateY(8px);
    transform: translate3D(0, 8px, 0);
}


a.css3dbutton.blue{
    background: #a6e9f7;
    box-shadow: 0 8px 0 #529dad, /* depth and color of main shadow */
        0 0 3px rgba(0,0,0, 0.2),
        0 20px 20px #eee;
}

a.css3dbutton.blue:hover {
    background: #66cbe1; /* background color when mouse rolls over button */
    box-shadow: none;
}

a.css3dbutton.pink{
    background: #fbbaba;
    box-shadow: 0 8px 0 #d74848, /* depth and color of main shadow */
        0 0 3px rgba(0,0,0, 0.2),
        0 20px 20px #eee;
}

a.css3dbutton.pink:hover {
    background: #ea6161; /* background color when mouse rolls over button */
    box-shadow: none;
}

a.css3dbutton.yellow{
    background: #f3fa86;
    box-shadow: 0 8px 0 #dbcd2f, /* depth and color of main shadow */
        0 0 3px rgba(0,0,0, 0.2),
        0 20px 20px #eee;
}

a.css3dbutton.yellow:hover {
    background: #ecd347; /* background color when mouse rolls over button */
    box-shadow: none;
}


</style>
</head>
<body bgcolor="lavender">

<div class="container"><div class="jumbotron" style="background:pink; height:50px;" ><center height="100px"><b><i><span style="color:blue;"> Online Bill Payment</span></center></div></div>
<br>
<br><br>
<center>
<a href="../paycard.html" class="css3dbutton">
<span class="outer">
<span class="top">PAY BILL!</span>
<span class="bottom">TELEPHONE</span>
</span>
</a>

</center>

<br>
<br><br>
<div class="jumbotron"  >

<p>Customers who wish to pay their bill online, can pay their due bill using above link. Read the instructions carefully and follow them to make online payment.</p>
<p><strong>Step 1 :</strong> Once Customer/payee will click on the above link, a new screen will open where payee needs to make a choice of trasaction</p>
<p><strong>Step 2 :</strong> Once payee will click on show details button, the system will display regarding bill details.</p>
<p><strong>Step 3 :</strong> After verifying details, click on Proceed button and system will display the final amount along with customer Id and Name.</p>
<p><strong>Step 4 :</strong> By click on <strong>Pay</strong> button available at bottom  submit the bill.</p>
<p><strong>Step 5 :</strong> System will redirect the Payee to payment gateway page to provide Card or Net Banking details to process fee payment</p>
<p><strong>Step 6 :</strong> After selecting the payment mode and proving the details, Payee needs to assure for the net amount has to be paid including <strong>transaction charges/convenience fee</strong> available on next screen.</p>
<p><strong>Step 7 :</strong> After making payment, receipt will be generated for the payment made. Payee can save or print the receipt for their future reference.</p>
<p> </p>
<p>For any query or help required, please contact on our helpline no : <strong>0141-5160419</strong></p> 

</div>










</body>
</html>




