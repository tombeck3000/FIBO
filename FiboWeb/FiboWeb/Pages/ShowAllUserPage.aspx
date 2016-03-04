<%@ Page Title="User" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ShowAllUserPage.aspx.cs" Inherits="FiboWeb.Pages.ShowAllUserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Current registrated User.</h3>
    
    <asp:Repeater ID="repUser" runat="server">
        
        <HeaderTemplate>
            <table>
                <tr>
                    <th>User Id</th>
                    <th>Login Name</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Password</th>
                </tr>
        </HeaderTemplate>
        
        <ItemTemplate>
            <tr>
                <td><asp:TextBox ID="txtUserId" runat="server" Text='<%# Eval("UserId") %>' /></td>
                <td><asp:TextBox ID="txtLoginName" runat="server" Text='<%# Eval("LoginName") %>' /></td>
                <td><asp:TextBox ID="txtFirstName" runat="server" Text='<%# Eval("FirstName") %>' /></td>
                <td><asp:TextBox ID="txtLastName" runat="server" Text='<%# Eval("LastName") %>' /></td>
                <td><asp:TextBox ID="txtPassword" runat="server" Text='<%# Eval("Password") %>' /></td>
            </tr>
        </ItemTemplate>
        
        <FooterTemplate>
            </table>
        </FooterTemplate>
                     
    </asp:Repeater>
    
</asp:Content>

