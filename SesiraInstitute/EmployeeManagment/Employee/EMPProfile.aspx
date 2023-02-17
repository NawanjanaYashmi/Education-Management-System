<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master" AutoEventWireup="true" CodeBehind="EMPProfile.aspx.cs" Inherits="SesiraInstitute.EmpProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../css/EmployeeManagement.css" rel="stylesheet" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <!-- page name and button section -->
        <div class="row"  >
            <div class="col-xs-8">
                <h2 class="pgHedding">Profile</h2>
            </div>
            <div class="col-xs-2"> <h1> </h1></div>
            <div class="col-xs-2">
                <h1>
                    <asp:ListView ID="ListView1" runat="server"></asp:ListView>
                    <!-- log out -->
                    <asp:Button ID="LogOutBtn" runat="server" Text="Log Out " CssClass="btn colorBtn" OnClick="LogOutBtn_Click" />
                    <!-- profile button -->
                    <asp:LinkButton ID="profilebtn" runat="server" class="btn iconbtn">
                           <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
            
            </div>
        </div>
        <!-- first section -->
        <div class="row sectionColor">
            <!-- margin -->
            <p class="secondoryTopic">Basic details</p>
            <div class="col-xs-1"></div>
            <!-- image space -->
            <div class="col-xs-3"></div>
            <!-- detail space -->
            <div class="col-xs-7">
                <div class="container-fluid">
                    <!-- emp NO -->
                    <div class="row">
                        <div class="col-xs-4">
                            <p>Employee No</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-7">
                            <asp:TextBox ID="TextBox10" runat="server" Enabled="False" CssClass="TextTypeTextBox"></asp:TextBox>
                        </div>
                    </div>
                    <!-- user Name -->
                    <div class ="row">
                        <div class="col-xs-4">
                            <p>User Name</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-7">
                            <asp:TextBox ID="TextBox11" runat="server" Enabled="False" CssClass="TextTypeTextBox"></asp:TextBox>
                        </div>

                    </div>
                    <!-- basic salary -->
                    <div class="row">
                        <div class="col-xs-4">
                            <p>Basic Salary</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-7">
                            <asp:TextBox ID="TextBox12" runat="server" Enabled="False" CssClass="TextTypeTextBox"></asp:TextBox>
                        </div>

                    </div>
                </div>
            </div>
            <!-- margin -->
            <div class="col-xs-1"></div>
        </div>
        <!-- secod section -->
        <div class="row">
         
              <!-- primary details -->
            <div class ="col-xs-5 sectionColorsmall">
                <p class="secondoryTopic">Primary details</p>
                <div class="container-fluid">
                    <!--First Name -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">First Name</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox1" CssClass="txtInput" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <!-- Last Name -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">Last Name</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox2" CssClass="txtInput" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- Password -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">Password</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox3" CssClass="txtInput" runat="server" TextMode="Password" ></asp:TextBox>
                        </div>
                    </div>
                    <!-- Confirm Password -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">Confirm Password</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox4" CssClass="txtInput" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <!-- Email -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">E-Mail</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox5" CssClass="txtInput" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- Phone No -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">Phone No</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox6" CssClass="txtInput" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <!-- NIC -->
                    <div class="row">
                        <div class="col-xs-5">
                            <p class="commomText">NIC</p>
                        </div>
                        <div class="col-xs-1">
                            <p>:</p>
                        </div>
                        <div class="col-xs-4">
                            <asp:TextBox ID="TextBox7" CssClass="txtInput" runat="server"></asp:TextBox>
                        </div>
                    </div>
                
                </div>
            </div>
            <div class="col-xs-1">

            </div>
            <!-- secondory details -->
            <div class="col-xs-6 sectionColorsmall">
                <p class="secondoryTopic">Secondory details</p>
                <div class="container-fluid">
                    <div class="row">
                        <div class="container-fluid">
                            <div class="col-xs-6">
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Egender" /> Male
                            </div>
                            <div class="col-xs-6">
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Egender"/> Female
                            </div>
                        </div>   
                        <!-- birth Date -->
                        <div class="row">
                            <div class="col-xs-4">
                                <p class="commomText">Date of Birth</p>

                            </div>
                            <div class="col-xs-1">
                                :
                            </div>
                            <div cass="col-xs-6">
                                <asp:TextBox ID="TextBox8"  class="txtInput" runat="server" TextMode="Date"></asp:TextBox>
                            </div>
                        </div>
                        <!-- Address -->
                        <div class="row">
                            <div class="col-xs-4">
                                <p class="commomText">Address</p>

                            </div>
                            <div class="col-xs-1">
                                :
                            </div>
                            <div cass="col-xs-6">
                                <asp:TextBox ID="TextBox9" runat="server" class="txtInputArea " Rows="3" TextMode="MultiLine" sytle="color:black;"></asp:TextBox>
                            </div>
                        </div>
                        <!-- button row-->
                        <div class="row justify-content-end">
                            <div class="col-xs-8">

                            </div>
                            <div class="col-xs-4 ">
                                <button type="reset" Class="btn halfcolorBtn">Cancel</button>
                                <asp:Button ID="Button2" runat="server" CssClass="btn fullcolorBtn" Text="Save" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>

        </div>
    </div>
</asp:Content>
