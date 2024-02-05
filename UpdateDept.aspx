<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateDept.aspx.cs" Inherits="EmpApp.UpdateDept" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="1">
            <tr>
                <td colspan="2" align="center">Department Update</td>
            </tr>
            <tr>
                <td><asp:Label ID="lblid" runat="server" Text="ID"></asp:Label></td>
                <td><asp:Label ID="lblidshow" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblname" runat="server" Text="Department Description"></asp:Label></td>
                <td><asp:Textbox ID="txtname" runat="server"></asp:Textbox></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><asp:Button ID="btnok" runat="server" Text="Update" OnClick="btnok_Click"/></td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
