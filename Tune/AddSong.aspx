<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSong.aspx.cs" Inherits="Tune.AddSong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 88%;
            margin-right: 0px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            width: 142px;
        }
        .auto-style4 {
            width: 363px;
        }
        .auto-style5 {
            width: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Track Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbTrackName" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Add the Track Name" ForeColor="Red" ControlToValidate="tbTrackName">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Length</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbLength" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Add the Length" ForeColor="Red" ControlToValidate="tbLength">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Genre</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbGenre" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Add the Genre" ForeColor="Red" ControlToValidate="tbGenre">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Price</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbPrice" runat="server" Width="209px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Add the Price" ForeColor="Red" ControlToValidate="tbPrice">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Artist</td>
                <td class="auto-style5">
                    <asp:TextBox ID="tbArtist" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tbArtist" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Upload File</td>
                <td class="auto-style5">
                    <asp:FileUpload ID="fuTrack" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Give the File Path" ForeColor="Red" ControlToValidate="fuTrack">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Featured</td>
                <td class="auto-style5">
                    <asp:CheckBox ID="cbFeatured" runat="server" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
