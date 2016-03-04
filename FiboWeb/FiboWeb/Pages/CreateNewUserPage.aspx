<%@ Page Title="Create User" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CreateNewUserPage.aspx.cs" Inherits="FiboWeb.Pages.CreateNewUserPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2><%: Title %></h2>
    <h3>It's your chance.</h3>
    
    <table>
        <tr>
            <td><asp:Label runat="server" ID="lblLoginName">Login Name:</asp:Label></td>
            <td><asp:TextBox ID="txtLoginName" runat="server" /></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" ID="lblFirstName">First Name:</asp:Label></td>
            
            
            
            
            

            <td><asp:TextBox ID="txtFirstName" runat="server" /></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" ID="lblLastName">Last Name:</asp:Label></td>
            <td><asp:TextBox ID="txtLastName" runat="server" /></td>
        </tr>
        <tr>
            <td><asp:Label runat="server" ID="lblPassword">Password:</asp:Label></td>
            <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button runat="server" ID="btnCreate" Text="Create" OnClick="btnCreate_Click"/></td>
        </tr>
    </table>

    
</asp:Content>