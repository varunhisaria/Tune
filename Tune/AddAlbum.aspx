<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAlbum.aspx.cs" Inherits="Tune.AddAlbum" %>

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
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            width: 390px;
        }
    </style>
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
                    <%--<asp:PlaceHolder ID="phAddAlbum" runat="server">--%>
        
        

                    <br />
                    <br />
                    <br />
        
        

        <asp:ObjectDataSource ID="GetAlbumsODS" runat="server" SelectMethod="GetAlbumNames" TypeName="Tune.App_Code.BLLAlbum"></asp:ObjectDataSource>
                    <table class="nav-justified">
                        <tr>
                            <td class="auto-style2">
        
                    <asp:DropDownList ID="DropDownListAlbums" runat="server" DataSourceID="GetAlbumsODS" DataTextField="AlbumName" DataValueField="AlbumId" AutoPostBack="True">
                        
                    </asp:DropDownList>
        
        

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
        

                            </td>
                            <td>Enter Album Name:<asp:TextBox ID="tbAlbumName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAlbumName" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Enter Album Year:<asp:TextBox ID="tbYear" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbYear" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>Select Album Art:<asp:FileUpload ID="fuAlbumArt" runat="server" Width="280px" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fuAlbumArt" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">&nbsp;</td>
                            <td>
                        <asp:Button ID="btnCreate" runat="server" Text="AddAlbum" OnClick="btnCreate_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnNext" runat="server" Text="Proceed to Add Song to This Album" />
                            </td>
                        </tr>
                        <script>
                            $("#btnNext").click(function (e) {
                                e.preventDefault();
                                var val = $("#DropDownListAlbums option:selected").val();
                                console.log(val);
                                var base = "AddSong.aspx";
                                var url = base + "?id=" + val;
                               window.location=url;
                            });
                        </script>
                    </table>
                    <br />
                        <br />
                    <br />
                    <%--</asp:PlaceHolder>--%>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
             
        </div>
        
              

    </form>
</body>
</html>
