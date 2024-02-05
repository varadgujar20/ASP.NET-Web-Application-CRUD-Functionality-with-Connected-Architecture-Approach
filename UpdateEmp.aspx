<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEmp.aspx.cs" Inherits="EmpApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form3" runat="server">
    <div>
    <table border="1">
        <tr>
            <td colspan="2" align="center">Employee Update</td>
        </tr>
        <tr>
            <td>ID</td>
            <td>
                <asp:Label ID="lblidshow" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td>Name</td>
            <td><asp:TextBox ID="lblnameshow" runat="server"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td>Salary</td>
            <td>
                <asp:TextBox ID="SalaryTextbox1" runat="server" Text=""></asp:TextBox>
            </td>
    
        </tr>
        <tr>
            <td>Location</td>
            <td>
                <asp:DropDownList ID="drlocn" runat="server"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td>Department</td>
            <td>
                <asp:DropDownList ID="drdept" runat="server"></asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td>Reporting To</td>
            <td>
                <asp:DropDownList ID="drman" runat="server"></asp:DropDownList>

            </td>
        </tr>
        

        <tr>
            <td colspan="2" align="center"><asp:Button ID="btttnok" runat="server" Text="Update" OnClick="btnok_Click"/></td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
