<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loan_req.aspx.cs" Inherits="project_S_E.Loan_req" MasterPageFile="~/Site1.Master" Title="loan request page"%>

<asp:Content ID="content1" ContentPlaceHolderID="Contentmanu" runat="server">
    <div id="menu">
		<ul>
			<li><a href="#">Home</a></li>
			<li><a href="#">Transaction</a></li>
            <li class="active"><a href="#">loan</a></li>
            <li><a href="#"></a></li>
			<li><a href="logout.aspx">Log out</a></li>
		</ul>
	</div>
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table>
        <tr>
            <td class="auto-style3">
                        Loan Ammount:
            </td>
            <td>
                <asp:TextBox ID="txtamount" runat="server" Width="194px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="txtamount"
                    
                    ErrorMessage="Enter the amount"></asp:RequiredFieldValidator>
            </td>
        </tr><tr>
            <td class="auto-style3">
                Loan_reason:
            </td>
            <td>
                 <asp:TextBox ID="textreason" TextMode="multiline" Columns="50" Rows="5" runat="server" ></asp:TextBox>
                
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="textreason"
                     runat="server" ErrorMessage="Enter the resoun"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
               
            </td>
            <td>
                 <asp:Button ID="btnreq" runat="server" Text="Request" OnClick="btnreq_Click" />
            </td>
        </tr>
    </table>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 203px;
        }
    </style>
</asp:Content>
