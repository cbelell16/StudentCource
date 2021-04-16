<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="$safeprojectname$._Default" %>

    
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h1>Create Account</h1><br />
    <asp:Label ID="Label1" runat="server" Text="Name :- "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="name" runat="server" ></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
        ControlToValidate="name"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<br />
Email :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="email" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" 
        ControlToValidate="email"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Invalid Email" ControlToValidate="email" ForeColor="#000099" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
<br />
<br />
Phone :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="phone" runat="server" ></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" 
        ControlToValidate="phone"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ErrorMessage=" Invalid Phone Number" ValidationExpression="[0-9]{10}" 
        ControlToValidate="phone" ForeColor="#0000CC"></asp:RegularExpressionValidator>
<br />
<br />
Address :-&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="address" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" 
        ControlToValidate="address"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<br />
Age :-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="age" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" runat="server" 
        ControlToValidate="age"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<br />
Gender :-&nbsp;&nbsp;&nbsp;&nbsp;
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Selected="True" Value="male">Male</asp:ListItem>
        <asp:ListItem Value="female">Female</asp:ListItem>
    </asp:DropDownList>
<br />
<br />
Username :-&nbsp;&nbsp;
<asp:TextBox ID="username" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" 
        ControlToValidate="username"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
<br />
<br />
Password :-&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" 
        ControlToValidate="password"  ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server"  Text="SignUp" 
        onclick="Button1_Click" />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="result" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp; 
    
</asp:Content>
