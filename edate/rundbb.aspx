<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rundbb.aspx.cs" Inherits="edate.rundbb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:TextBox ID="txtquery" runat="server" TextMode="MultiLine" Height="500"></asp:TextBox><br />
            <asp:Button ID="btnsubmit" runat="server" Text="Button" OnClick="btnsubmit_Click" /><asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Button" />

        </div>
    </form>
</body>
</html>
