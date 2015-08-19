<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminUser.aspx.cs" Inherits="Tune.AdminUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
    
    </div>
    </form>
</body>
</html>
