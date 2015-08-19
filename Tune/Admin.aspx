<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Tune.Admin" %>

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


     <asp:PlaceHolder ID="LogIn" runat="server">
    <div id="admin-login" class="container admin-login">
    <div class="user-card" style="text-align: center">
    	<div>
    	<div class="form-group">
            <asp:TextBox ID="tbPassword" runat="server" CssClass="form-control" placeholder="Please enter the passcode to continue." TextMode="Password"></asp:TextBox>
    		
    		</div>
    		<br>
            <asp:Button ID="btnSubmit" CssClass="btn btn-default" runat="server" Text="Login" OnClick="btnSubmit_Click" />
    		
    	</div>
    </div>

    </div>
         </asp:PlaceHolder>








        <asp:PlaceHolder ID="LoggedIn" runat="server">
            <div style="padding:20px">
    	        <div style="width:30%;float:left">
    	            <ul class="nav nav-pills nav-stacked">
    	                <li role="presentation">
                            <asp:Button ID="btnUser" runat="server" Text="User"  OnClick="btnUser_Click"/><!--<a data-toggle="collapse" role="button" href="#users-group" aria-expanded="false" aria-controls="users-group">Users</a>--></li>
	    	            <asp:Button ID="btnpurchase" runat="server" Text="Purchase"  OnClick="btnpurchase_Click"/><!--<a data-toggle="collapse" role="button" href="#users-group" aria-expanded="false" aria-controls="users-group">Users</a>--></li>
    	                <li role="presentation"><a  data-toggle="collapse" role="button" href="#songs-group" aria-expanded="false" aria-controls="songs-group">Songs</a></li>
       	
	    	            <div class="collapse well" id="songs-group">
                            <asp:BulletedList  DisplayMode="LinkButton" CssClass="nav nav-pills nav-stacked" ID="BulletedListSongs" runat="server" OnClick="BulletedListSongs_Click">
                                <asp:ListItem Text="View All"></asp:ListItem>
                                <asp:ListItem  Text="Add song"></asp:ListItem>
                                <asp:ListItem Text="Delete song"></asp:ListItem>
                                <asp:ListItem Text="Modify song"></asp:ListItem>
                                
                            </asp:BulletedList>
	    	               
	    	            </div>
    	            </ul>
    	        </div>

                <asp:PlaceHolder ID="phUser" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" style="margin-top: 15px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Verified" HeaderText="Verified" SortExpression="Verified" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @original_UserId AND [UserName] = @original_UserName AND [Email] = @original_Email AND [Password] = @original_Password AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND [Gender] = @original_Gender AND [Verified] = @original_Verified AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" InsertCommand="INSERT INTO [User] ([UserName], [Email], [Password], [Mobile], [Gender], [Verified], [Image]) VALUES (@UserName, @Email, @Password, @Mobile, @Gender, @Verified, @Image)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [User]" UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [Email] = @Email, [Password] = @Password, [Mobile] = @Mobile, [Gender] = @Gender, [Verified] = @Verified, [Image] = @Image WHERE [UserId] = @original_UserId AND [UserName] = @original_UserName AND [Email] = @original_Email AND [Password] = @original_Password AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND [Gender] = @original_Gender AND [Verified] = @original_Verified AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Verified" Type="Int32" />
                <asp:Parameter Name="original_Image" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Verified" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Verified" Type="Int32" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Verified" Type="Int32" />
                <asp:Parameter Name="original_Image" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
                </asp:PlaceHolder>


                <asp:PlaceHolder ID="phPurchase" runat="server">
                        <asp:GridView ID="GridViewPurchase" runat="server" AutoGenerateColumns="False" DataKeyNames="PurchaseId" DataSourceID="SqlDataSourcePurchase">
            <Columns>
                <asp:BoundField DataField="PurchaseId" HeaderText="PurchaseId" InsertVisible="False" ReadOnly="True" SortExpression="PurchaseId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="TrackId" HeaderText="TrackId" SortExpression="TrackId" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcePurchase" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Purchase] WHERE [PurchaseId] = @original_PurchaseId AND [UserId] = @original_UserId AND [TrackId] = @original_TrackId" InsertCommand="INSERT INTO [Purchase] ([UserId], [TrackId]) VALUES (@UserId, @TrackId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Purchase]" UpdateCommand="UPDATE [Purchase] SET [UserId] = @UserId, [TrackId] = @TrackId WHERE [PurchaseId] = @original_PurchaseId AND [UserId] = @original_UserId AND [TrackId] = @original_TrackId">
            <DeleteParameters>
                <asp:Parameter Name="original_PurchaseId" Type="Int32" />
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_TrackId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="TrackId" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
                <asp:Parameter Name="TrackId" Type="Int32" />
                <asp:Parameter Name="original_PurchaseId" Type="Int32" />
                <asp:Parameter Name="original_UserId" Type="Int32" />
                <asp:Parameter Name="original_TrackId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

                </asp:PlaceHolder>







<%--                <asp:PlaceHolder ID="ViewSongs" runat="server">
                    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="TracksODS" ForeColor="Black" GridLines="Vertical" DataKeyNames="TrackName,AlbumName">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="TrackName" HeaderText="TrackName" SortExpression="TrackName" />
                <asp:BoundField DataField="AlbumName" HeaderText="AlbumName" SortExpression="AlbumName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Downloads" HeaderText="Downloads" SortExpression="Downloads" />
                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:ObjectDataSource ID="TracksODS" runat="server" SelectMethod="GetViewSongs" TypeName="Tune.App_Code.BLLTrack">
        </asp:ObjectDataSource>                
        
                    </div>
                </asp:PlaceHolder>--%>

                
                
                
                
<%--                <asp:PlaceHolder ID="EditSong" runat="server">
                    
                    <div>
                        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="EditSongODS">
            <EditItemTemplate>
                TrackName:
                <asp:TextBox ID="TrackNameTextBox" runat="server" Text='<%# Bind("TrackName") %>' />
                <br />
                AlbumName:
                <asp:TextBox ID="AlbumNameTextBox" runat="server" Text='<%# Bind("AlbumName") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Downloads:
                <asp:TextBox ID="DownloadsTextBox" runat="server" Text='<%# Bind("Downloads") %>' />
                <br />
                Length:
                <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
                <br />
                Genre:
                <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                TrackName:
                <asp:TextBox ID="TrackNameTextBox" runat="server" Text='<%# Bind("TrackName") %>' />
                <br />
                AlbumName:
                <asp:TextBox ID="AlbumNameTextBox" runat="server" Text='<%# Bind("AlbumName") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Downloads:
                <asp:TextBox ID="DownloadsTextBox" runat="server" Text='<%# Bind("Downloads") %>' />
                <br />
                Length:
                <asp:TextBox ID="LengthTextBox" runat="server" Text='<%# Bind("Length") %>' />
                <br />
                Genre:
                <asp:TextBox ID="GenreTextBox" runat="server" Text='<%# Bind("Genre") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                TrackName:
                <asp:Label ID="TrackNameLabel" runat="server" Text='<%# Bind("TrackName") %>' />
                <br />
                AlbumName:
                <asp:Label ID="AlbumNameLabel" runat="server" Text='<%# Bind("AlbumName") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Downloads:
                <asp:Label ID="DownloadsLabel" runat="server" Text='<%# Bind("Downloads") %>' />
                <br />
                Length:
                <asp:Label ID="LengthLabel" runat="server" Text='<%# Bind("Length") %>' />
                <br />
                Genre:
                <asp:Label ID="GenreLabel" runat="server" Text='<%# Bind("Genre") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:ObjectDataSource ID="EditSongODS" runat="server" SelectMethod="GetViewSongs" TypeName="Tune.App_Code.BLLTrack"></asp:ObjectDataSource>                
                        

                    </div>
                </asp:PlaceHolder>--%>




                

            </div>
        </asp:PlaceHolder>
        

        
        

    </form>
</body>
</html>
