<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master" AutoEventWireup="true" CodeBehind="ADMINdashboard.aspx.cs" Inherits="SesiraInstitute.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
    <link href="../../css/EmployeeManagement.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row"  >
            <div class="col-xs-8">
                <h2>Dashboard</h2>
            </div>
            <div class="col-xs-2"> <h1> </h1></div>
            <div class="col-xs-2">
                <h1>
                    <asp:ListView ID="ListView1" runat="server"></asp:ListView>
                    <!-- log out -->
                    <asp:Button ID="LogOutBtn" runat="server" Text="Log Out " CssClass="btn colorBtn" OnClick="LogOutBtn_Click" />
                    <!-- profile button -->
                    <asp:LinkButton ID="ProfileBtn" runat="server" class="btn iconbtn" OnClick="LinkButton1_Click">
                         <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
            <h1></h1>
            </div>
        </div>
        <div class="row"  >
                <!-- button secction -->
                <div class="col-xs-7">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-5 buttonCard">
                                <p class="btnCardTopic" runat="server" id="NoOfStudents">---</p>
                                <p class="btnCardText">Students</p>
                            </div>
                            <div class="col-xs-1"></div>
                            <div class="col-xs-5 buttonCard">
                                <p class="btnCardTopic" runat="server" id="NoOfTeachers">---</p>
                                <p class="btnCardText">Teachers</p>
                            </div>
                            <div class="col-xs-1">

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-5 buttonCard">
                                <p class="btnCardTopic" runat="server" id="NoOfSubjects">---</p>
                                <p class="btnCardText">Subjects</p>
                            </div>
                            <div class="col-xs-1"></div>
                            <div class="col-xs-5 buttonCard">
                                <p class="btnCardTopic" runat="server" id="NoOfEmployees">---</p>
                                <p class="btnCardText">Employees</p>
                            </div>
                            <div class="col-xs-1">

                            </div>
                        </div>

                       <div class="row">
                            <div class="col-xs-10 buttonCard">
                                 <p class="btnCardTopic" runat="server" id="P2">Mark Student Attendence </p>
                            </div>
                           <div class="col-xs-1">

                           </div>
                            <div class="col-xs-1">

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-10  buttonCard">
                                 <p class="btnCardTopic" runat="server" id="P3">Add A Teacher</p>
                            </div>
                            <div class="col-xs-2">

                           </div>
                            <div class="col-xs-1">

                            </div>
                        </div>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">
                             <div class="row">
                            <div class="col-xs-10 buttonCard" runat="server" >
                                 <p class="btnCardTopic" runat="server" id="P4">Add A Employee</p>
                            </div>
                            <div class="col-xs-2">

                           </div>
                            <div class="col-xs-1">

                            </div>
                        </div>
                        </asp:LinkButton>
                       
                    </div>
                </div>
                <!-- nofitifation pannel -->
                <div class="col-xs-5">
                    <div class="container-fluid">
                        <div class="col-xs-12 buttonCard">
                            <div class="row">
                                <div class="col-xs-10">
                                    <p class="btnCardTopic" runat="server" id="P1">Notification </p>
                                </div>
                                <div class="col-xs-2">
                                    <asp:Button ID="Button1" runat="server" Text="+" CssClass="btn plusBtn"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-1">

                                </div>
                                <div class="col-xs-10">
                                    <div class="notibody">
                                        <asp:Label ID="Label1" runat="server" Text="Admin : About Classes" CssClass="notiLable"></asp:Label><br />
                                        <br /><asp:Label ID="Label2" runat="server"  CssClass="notiLable"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-xs-1">

                                </div>
                            </div>
                            <div class="row notirow">
                                <div class="col-xs-1">

                                </div>
                                <div class="col-xs-10">
                                    <div class="notibody">
                                        <asp:Label ID="Label3" runat="server" Text="Teacher : Extra Classes" CssClass="notiLable"></asp:Label><br />
                                        <br /><asp:Label ID="Label4" runat="server"  CssClass="notiLable"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-xs-1">

                                </div>
                            </div>
                            <div class="row notirow">
                                <div class="col-xs-1">

                                </div>
                                <div class="col-xs-10">
                                    <div class="notibody">
                                        <asp:Label ID="Label5" runat="server" Text="Admin : Maths Semina" CssClass="notiLable"></asp:Label><br />
                                        <br /><asp:Label ID="Label6" runat="server"  CssClass="notiLable"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-xs-1">

                                </div>
                            </div>
                             <div class="row notirow">
                                <div class="col-xs-1">

                                </div>
                                <div class="col-xs-10">
                                    <div class="notibody">
                                        <asp:Label ID="Label7" runat="server" Text="Admin : Maths Semina" CssClass="notiLable"></asp:Label><br />
                                        <br /><asp:Label ID="Label8" runat="server"  CssClass="notiLable"></asp:Label>
                                    </div>
                                </div>
                                <div class="col-xs-1">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            
         </div>
       </div>
</asp:Content>
