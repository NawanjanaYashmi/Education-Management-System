<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeManagment/Master/Employee.Master" AutoEventWireup="true" CodeBehind="EmpReport.aspx.cs" Inherits="SesiraInstitute.EmpReport" EnableEventValidation="false" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>



<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <link href="../../css/EmployeeManagement.css" rel="stylesheet" />
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
                    
                    <!-- log out-->
                    <asp:Button ID="LogOutBtn" runat="server" Text="Log Out " CssClass="btn colorBtn" OnClick="LogOutBtn_Click" />
                    <!-- profile button -->
                    <asp:LinkButton ID="profilebtn" runat="server" class="btn iconbtn" >
                           <i class="fa-solid fa-user"></i>
                    </asp:LinkButton>
                </h1>
            </div>
            
        </div>
        <div class="row">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           <rsweb:ReportViewer ID="ReportViewer1" runat="server" BackColor="" ClientIDMode="AutoID" Height="401px" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226" Width="809px">
               <LocalReport ReportPath="EmpReport.rdlc">
               </LocalReport>
               </rsweb:ReportViewer>
            
        </div>
       
    </div>
</asp:Content>


