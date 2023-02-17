<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master" AutoEventWireup="true" CodeBehind="EmpAdminView.aspx.cs" Inherits="SesiraInstitute.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../../css/EmployeeManagement.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <!-- page number and button section -->
        <div class="row">
            <div class="col-xs-8">
                <h2 class="pgHedding">Employees</h2>
            </div>
            <div class="col-xs-2">
                <h1></h1>
            </div>
            <div class="col-xs-2">
                <h1>
                    <asp:ListView ID="ListView1" runat="server"></asp:ListView>
                    <!-- log out-->
                    <asp:Button ID="LogOutBtn" runat="server" Text="Log Out " CssClass="btn colorBtn" OnClick="LogOutBtn_Click" />
                    <!-- profile button -->
                    <asp:LinkButton ID="profilebtn" runat="server" class="btn iconbtn" OnClick="profilebtn_Click" >
                           <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
            </div>
            
        </div>
        <!-- body upper part -->
        <div class="row">
            <div class="col-xs-5 Empcard">
                <p class="BoldText"> Add New Employee</p>
                <b> .</b>
            </div>
            <div class="col-xs-2">

            </div>
            <div class="col-xs-5">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-5 Empcard">
                            <b class="NumberText">12</b><br />
                            <b class="normalText">Employees</b>
                        </div>
                        <div class="col-xs-2">
                           
                        </div>
                        <div class="col-xs-5 Empcard ">
                            
                            <b class="NumberText">5</b><br/>
                            <b class="normalText">Admins</b>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- body lower 1 part -->
        <div class="row">
            <div class="col-xs-7">

            </div>
            <div class="col-xs-5  ">
                <div class="container-fluid">
                    <div class="row Empcard">
                        <div class="container-fluid">
                            <p class="BoldText">Get Employee Report</p>
                        </div>
                        </div>
                    </div>
            </div>
        </div>
        <!-- bod lower 2 part -->
        <div class="row">
            <div class="col-lg-4 Empcard">
                <div class="container-fluid">
                    <div class=" row">
                        <b>Pre Month</b>
                    </div>
                    <div class="row">
                        <b>This Month</b>
                    </div>
                    <div class="row">
                        <b>Last Month</b>
                    </div>
                    <div class="row">
                        <b>Total cost</b>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</asp:Content>
