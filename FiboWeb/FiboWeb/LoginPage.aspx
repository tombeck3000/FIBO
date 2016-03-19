<%@ Page Title="Beckbauers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FiboWeb.LoginPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h1>BECKBAUERS-LOGIN</h1>
                    <p class="lead">Choose your User Name and Login</p>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" ID="lblUserName" CssClass="col-md-2 control-label">User Name</asp:Label>
                        <div class="col-md-10">
                            <asp:DropDownList runat="server" ID="ddlUsers" CssClass="form-control" style="max-width: 280px;"></asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" ID="lblPassword" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                             <asp:Button Text="Login &raquo;" ID="btnLogin" OnClick="UserLogin_Click" CssClass="btn btn-default" runat="server" /> 
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>
</div>

    <%--<div class="jumbotron">
        <h1>BECKBAUERS-LOGIN</h1>
        <p class="lead">Choose your User Name and Login</p>
        
        <div class="form-group">
            <asp:Label runat="server" ID="lblUserNames" CssClass="col-md-2 control-label">User Name:</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="ddlUsers"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" ID="lblPassword" CssClass="col-md-2 control-label">Password:</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button Text="Login &raquo;" ID="UserLogin" OnClick="UserLogin_Click" CssClass="btn btn-default" runat="server" />    
            </div>
        </div>
    </div>--%>

</asp:Content>
