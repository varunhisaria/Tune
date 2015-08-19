<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="Tune.ViewUsers" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="css/custom.css"/>
	
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'/>
	<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'/>


	<script type="text/javascript" src="js/jquery.sidr.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery.sidr.dark.css"/>
	<link rel="stylesheet" type="text/css" href="css/sidr.dark.custom.css"/>

		<script type="text/javascript" src="js/jssor.js"></script>
	<script type="text/javascript" src="js/jssor.slider.js"></script>
	<link rel="stylesheet" type="text/css" href="css/jquery.sidr.dark.css"/>

	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
   
    <div style="height:80px; width: 100%">
	 <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container no-margin" style="width:100%">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">
					<img src="images/logo.png" height="50px" width="50px" style="display: inline"/>
					<h1 style="font-family: 'Montserrat', sans-serif; display:inline; color: #23527c">tune <small>BETA</small></h1>
		  </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <div class="nav navbar-right" style="padding-top: 10px; width:50%">
          	<h3 class="navbar-text">Admin Panel</h3>
          </div>
         
        </div>
      </div>
    </nav>
    </div>        
    <div style="padding:20px">
    	        
                <div>
                    <asp:PlaceHolder ID="phAddAlbum" runat="server">
        
                    
                    </asp:PlaceHolder>
                    <br />
                  
             
        </div>
        
              

    </form>
</body>
</html>