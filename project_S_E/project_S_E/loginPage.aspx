﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="project_S_E.loginPage" MasterPageFile="~/Site3.Master" Title="login page"%>


<asp:Content ID="content1" ContentPlaceHolderID="Contentmanu" runat="server">
    <div id="menu">
		<ul>
			<li class="active"><a href="#">Login Form</a></li>
			<!--<li><a href="Transaction.aspx">Transaction</a></li>
            <li><a href="Loan_req.aspx">loan</a></li>
			<li><a href="logout.aspx">Log out</a></li>-->
		</ul>
	</div>
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table>
        <tr>
            <td colspan="2"class="auto-style1">
              
                <asp:Label ForeColor="Red" Text="Entre your Account Details" runat="server" Font-Size="Larger"></asp:Label>

            </td></tr>
            
            <tr>
            <td class="auto-style1" >
        Account_no</td>
            <td >
                <asp:TextBox ID="txtAccno" runat="server"/>
                <asp:RequiredFieldValidator ID="rfvUser" 
                    Text="Please enter Account Number" ControlToValidate="txtAccno" ForeColor="Red" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                    Account Type
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Saving</asp:ListItem>
                    <asp:ListItem>Current</asp:ListItem>
                </asp:DropDownList>
            </td>
            </tr>
            <tr>
            <td class="auto-style1">
        
     
        Password:
            </td>
            <td>
                <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                ControlToValidate="txtPWD" runat="server" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:CheckBox ID="chkBoxRememberMe" Text="RememberMe" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" style="height: 35px" />
            </td>
        </tr>
</table>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
    </div>
</asp:Content>
    