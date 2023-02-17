<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/EmpLogin.Master" AutoEventWireup="true" CodeBehind="EmpLogIn.aspx.cs" Inherits="SesiraInstitute.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>UserName</h4>
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <h4>Password</h4>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Admin LogIn" OnClick="Button2_Click" />

</asp:Content>
