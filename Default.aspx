<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmpApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Website</title>
    <link href="E:\seed\Asp.net\crud project\EmpApp\EmpApp\signupsiignin.css" rel="stylesheet">
    <style>
       /* body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: center;
        }

        nav {
            background-color: #eee;
            padding: 10px;
            text-align: center;
        }

        nav a {
            text-decoration: none;
            color: #333;
            padding: 10px;
            margin: 5px;
            border-radius: 5px;
            background-color: #fff;
        }

        section#department {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            padding: 50px;
        }

        section#department p {
            width: 60%;
            margin-right: 20px;
        }

        .leftmenu {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 35%;
        }

        form {
            background: #ffffff;
            padding: 25px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #888;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .navbar {
            overflow: hidden;
            background-color: #333;
        }

        .navbar a {
            float: left;
            font-size: 16px;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropdown .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
        }

        .navbar a:hover,
        .dropdown:hover .dropbtn {
            background-color: red;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }*/

    </style>
</head>
<body>
    <form id="frmempapp" runat="server">
        <%--<div>
            <table border="1">
                <tr>
                    <td colspan="3">Department</td>
                </tr>
                <tr>
                    <td>Department ID</td>
                    <td>Department Description</td>
                    <td>Delete Info</td>
                </tr>
               <%-- <%while (reader.Read())
                    {  %>
                <tr>
                    <td><a href="UpdateDept.aspx?updcode=<%=reader["dept_id"] %>"><%=reader["dept_id"] %></a></td>
                    <td><%=reader["dept_desc"] %>
                    <%if (Request.QueryString["deptcd"]!=null)
                    {
                        if (Request.QueryString["deptcd"].ToString() == reader["dept_id"])
                        {
                            %><b>Updated...</b><%
                        }
                    }  %>
             
                    </td>
                    <td><a href=>delete</a></td>
                </tr>
                 <%} %>--%>
           <%-- </table>
        </div>
        <br />
        <div>
            <table border="1">
                <tr>
                    <td colspan="3">Location</td>
                </tr>
                <tr>
                    <td>Location ID</td>
                    <td>Location Description</td>
                </tr>
            </table>
        </div>
        <br />--%>
        <%--<header>
        <h1>Swastik Steels</h1>
        </header>

        <nav>
            <a href>Home</a>
            <a href="#department">Departments</a>
            <a href="#location">Locations</a>
            
            <a href="#employee">Employees</a>--%>

            

            <%--<asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                
            </asp:DropDownList>--%>

      <%-- </nav>
        <section id="department">
        <p>Established in the year of 2018, we “Swastik Iron & Steel Co.” are the leading Wholesale Trader and Service Provider of an extensive array of Steel Plate and Sheet, Round Bars, Mild Steel Flat, Steel Flange, Cutting Service And Work, etc. We direct all our activities to cater to the expectations of customers by providing them excellent quality products as per their gratifications. Moreover, we follow moral business policies and crystal pure transparency in all our transactions to keep healthy relations with the customers.</p>

        <div class="leftmenu">
            <form id="signin-form" action="#" method="post">
                <label for="signin-username">Username:</label>
                <input type="text" id="signin-username" name="signin-username" required>

                <label for="signin-password">Password:</label>
                <input type="password" id="signin-password" name="signin-password" required>

                <input type="submit" value="Sign In">
            </form>

            <form id="signup-form" action="#" method="post">
                <label for="signup-username">Username:</label>
                <input type="text" id="signup-username" name="signup-username" required>

                <label for="signup-password">Password:</label>
                <input type="password" id="signup-password" name="signup-password" required>

                <label for="confirm-password">Confirm Password:</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm Password" required>

                <input type="submit" value="Sign Up">
            </form>
        </div>
    </section>--%>
        <div>
            <table border="1">
                <tr>
                    <td colspan="7">Employees</td>
                </tr>
                <tr>
                    <td>Employee ID</td>
                    <td>Employee Description</td>
                    <td>Department Description</td>
                    <td>Salary</td>
                    <td>Location Name</td>
                    <td>Reporting To</td>
                    <td>Delete</td>
                </tr>
                <%while (rdr.Read())
                  {  %>
                <tr>
                   
                    <td><a href="UpdateEmp.aspx?emppdcode=<%=rdr["emp_id"] %>&locn=<%=rdr["locn_id"] %>&repto<%=rdr["rep_to"] %>&dept=<%=rdr["dept_id"] %>"><%=rdr["emp_id"] %></a></td>
                    
                    <td><%=rdr["emp_name"] %></td>
                    <td><%=rdr["dept_desc"] %> </td>
                    <td><%=rdr["salary"] %> </td>
                    <td><%=rdr["locn_desc"] %> </td>
                    <td><%=rdr["rep_to"] %> </td>
                    <td><a href="Default.aspx?softDeleteEmpId=<%=rdr["emp_id"] %>" onclick="return confirm('Are you sure you want to "soft delete" this employee?')">Delete</a></td>
                    
                </tr>
               
               <% } %> 
                     <tr>
                        <td colspan="8" align="center"><a href="InsertEmp.aspx">Insert Employees</a></td>
                    </tr>
            </table>
            
        </div>
        
    </form>
</body>
</html>
