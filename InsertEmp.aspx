<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertEmp.aspx.cs" Inherits="EmpApp.InsertEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="frmEMP" runat="server">
        <div align="center">
        <table border="1">
     <tr>
         <td colspan="2" align="center">Insert Employees</td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lblidupdate" runat="server" Text="Insert Employee Id"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="lblidshow" runat="server" ></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lblnameupdate" runat="server" Text="Insert Employee Name"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="lblnameshow" runat="server" ></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lbl_sa_update" runat="server" Text="Insert Employee Salary"></asp:Label>
         </td>
         <td>
             <asp:TextBox ID="txt_sa_update" runat="server"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lbl_li_update" runat="server" Text="Insert Employee Location"></asp:Label>
         </td>
         <td>
             <asp:DropDownList ID="txt_li_update" runat="server"></asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lbl_di_update" runat="server" Text="Insert Employee Department"></asp:Label>
         </td>
         <td>
            
             <asp:DropDownList ID="txt_di_update" runat="server"></asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="lbl_rt_update" runat="server" Text="Insert Employee Reporting To"></asp:Label>
         </td>
         <td>
            
             <asp:DropDownList ID="txt_rt_update" runat="server"></asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td colspan="2" align="center">
             <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
         </td>
     </tr>
 </table>
 
        </div>
    </form>
</body>
</html>

