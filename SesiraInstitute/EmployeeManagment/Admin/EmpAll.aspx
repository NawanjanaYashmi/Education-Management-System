<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="EmpAll.aspx.cs" Inherits="SesiraInstitute.EmpAll" %>
<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">
    
    <link href="../../css/EmployeeManagement.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      
        <!-- page number and button section -->      
        <div class="row">
            <div class="col-xs-8">
                <h2 class="pgHedding">All Employees</h2>
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
                    <asp:LinkButton ID="profilebtn" runat="server" class="btn iconbtn" OnClick="profilebtn_Click">
                           <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
            </div>
            
        </div>
        <div class=" row">
            <div class="container-fluid">
                <!-- margin left -->
               
                <!-- report table -->
                <div class="col-xs-11">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SesiraDBConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [PhoneNo],[Emp_Id], [NIC], IIF([Gender] = 1, 'Male', 'Female') [Gender] , [DOB], [Address] FROM [Employee]"></asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                        <Columns>
                            <asp:BoundField DataField="Emp_Id" HeaderText="ID" ReadOnly="True" SortExpression="Emp_Id" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                            <asp:BoundField DataField="NIC" HeaderText="NIC" SortExpression="NIC" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" ReadOnly="True" />
                            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click1" CssClass="btn colorBtn" />
                                    
                                </ItemTemplate>
                            </asp:TemplateField>   
                            
                                   
                        </Columns>
                    </asp:GridView>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" />
                <!-- margin right-->
                <div class="col-xs-1">

                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-xs-10">

            </div>
            <div class="col-xs-2">
                <asp:Button ID="Report_btn" runat="server" CssClass="fullcolorBtn btn" Text="Get Report"  OnClick="Report_btn_click"/>
            </div>
            
        </div>
    </div>
</asp:Content>
