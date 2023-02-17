<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/EmpLogin.Master" AutoEventWireup="true" CodeBehind="AdminLogInPage.aspx.cs" Inherits="SesiraInstitute.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>User Name</h3>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <h3>Password</h3>
    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

</asp:Content>
