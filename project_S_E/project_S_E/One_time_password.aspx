<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="One_time_password.aspx.cs" Inherits="project_S_E.Registration.One_time_password" MasterPageFile="~/Site3.Master" Title="One time password"%>


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
            <asp:Label ForeColor="Green" Text="Entre your First time Passsword" runat="server" Font-Size="Larger"></asp:Label>
            <table>
                <tr>
                    <td class="auto-style3">Password
                    </td>
                    <td>:<asp:TextBox ID="txtPassword" TextMode="Password" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword"
                            runat="server" ErrorMessage="Password required" Text="*"
                            ControlToValidate="txtPassword" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegExp1" runat="server"
                            ErrorMessage="Password length must be between 7 to 10 characters"
                            ControlToValidate="txtPassword"
                            ValidationExpression="^[a-zA-Z0-9'@&#.\s]{7,10}$" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password
                    </td>
                    <td>:<asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword"
                            runat="server" ErrorMessage="Confirm Password required" Text="*"
                            ControlToValidate="txtConfirmPassword" ForeColor="Red"
                            Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPassword" runat="server"
                            ErrorMessage="Password and Confirm Password must match"
                            ControlToValidate="txtConfirmPassword" ForeColor="Red"
                            ControlToCompare="txtPassword" Display="Dynamic"
                            Type="String" Operator="Equal" Text="*">
                        </asp:CompareValidator>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style3">
                        Enter Your Email
                    </td>
                    <td>
                        :<asp:TextBox ID="txtemail" runat="server">
                    </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail"
                            runat="server" ErrorMessage="Password required" Text="*"
                            ControlToValidate="txtemail" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
              runat="server" ErrorMessage="Please Enter Valid Email ID"
                  ControlToValidate="txtemail"
                  
                  ForeColor="Red"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                  </asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style3"></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Save Detail"
                            OnClick="btnRegister_Click" style="height: 35px" />
                    </td>
                </tr>
            </table>


        </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 215px;
        }
    </style>
</asp:Content>

