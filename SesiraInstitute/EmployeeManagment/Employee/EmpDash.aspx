<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master" AutoEventWireup="true" CodeBehind="EmpDash.aspx.cs" Inherits="SesiraInstitute.EmployeeManagment.Master.WebForm2" %>
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
                    <asp:LinkButton ID="ProfileBtn" runat="server" class="btn iconbtn" OnClick="ProfileBtn_Click" >
                         <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
           
            </div>
        </div>
       <div class="row">
           <div class="container-fluid">
               <div class="row">
                   <!-- helpfull buttons -->
                   <div class="col-xs-7">
                       <div class="container-fluid">
                           <!-- mark student row -->
                           <div class="row">
                               <asp:LinkButton ID="LinkButton1" runat="server">
                                    <div class="col-xs-12 buttonCard">
                                        <p class="btnCardHeading">Mark Student Attendence</p>
                                   
                                    </div>
                                </asp:LinkButton>

                           </div>
                           <!-- Add Student -->
                           <div class="row">
                               <asp:LinkButton ID="LinkButton2" runat="server">
                                   <div class="col-xs-8 buttonCard">
                                       <p class="btnCardHeading">Add A Student</p>
                                   </div>
                               </asp:LinkButton>
                               <div class="col-xs-1">

                               </div>
                               <asp:LinkButton ID="LinkButton3" runat="server">
                                   <div class="col-xs-3 buttonCard">
                                       <p runat="server" id="NoOfStudents" class="btnCardTopic">1200</p>
                                       <p class="btnCardText">Students</p>
                                   </div>
                               </asp:LinkButton>
                           </div>
                           <!-- Add A Teacher -->
                           <div class="row">
                               <asp:LinkButton ID="LinkButton4" runat="server">
                                   <div class="col-xs-8 buttonCard">
                                       <p class="btnCardHeading">Add New Teacher</p>
                                   </div>
                               </asp:LinkButton>
                               <div class="col-xs-1">

                               </div>
                               <asp:LinkButton ID="LinkButton5" runat="server">
                                   <div class="col-xs-3 buttonCard">
                                       <p runat="server" id="NoOfTeachers" class="btnCardTopic">1200</p>
                                       <p class="btnCardText">Teachers</p>
                                   </div>
                               </asp:LinkButton>
                           </div>
                           <!-- Add Subject -->
                           <div class="row">
                               <asp:LinkButton ID="LinkButton6" runat="server">
                                   <div class="col-xs-8 buttonCard">
                                       <p class="btnCardHeading">Add New Subject</p>
                                   </div>
                               </asp:LinkButton>
                               <div class="col-xs-1">

                               </div>
                               <asp:LinkButton ID="LinkButton7" runat="server">
                                   <div class="col-xs-3 buttonCard">
                                       <p runat="server" id="NoOfSubjects" class="btnCardTopic">1200</p>
                                       <p class="btnCardText">Subjects</p>
                                   </div>
                               </asp:LinkButton>
                           </div>
                           <div class="row">
                               <div class="col-xs-12"><center>
                                   <img src="../../Images/dashImg.png" />
                                   </center>
                               </div>
                           </div>
                       </div>
                   </div>
                   <!-- Notification pannel -->
                   <div class="col-xs-5">

                   </div>
               </div>
           </div>
       </div>
     </div>

</asp:Content>
