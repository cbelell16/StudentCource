<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" CodeFile="StudentLogin.aspx.cs" Inherits="$safeprojectname$.StudentLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
&nbsp;<asp:Label ID="Label3" runat="server" Text="Username :-"></asp:Label>
    <asp:TextBox ID="uname" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidatorUsername" runat="server" 
        ErrorMessage="Enter Username" ForeColor="Red" ControlToValidate="uname"></asp:RequiredFieldValidator>
<br />
<br />
    
<asp:Label ID="Label2" runat="server" Text="Password :- "></asp:Label>
&nbsp;<asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox> &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" 
        ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="ErrorLogin" runat="server" Text="Invalid Credential" 
        Visible="False"></asp:Label>
&nbsp;
</asp:Content>
