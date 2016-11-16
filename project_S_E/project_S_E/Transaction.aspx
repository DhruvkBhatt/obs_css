<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transaction.aspx.cs" Inherits="project_S_E.Transaction" MasterPageFile="~/Site1.Master" Title="Transaction page" %>

<asp:Content ID="content1" ContentPlaceHolderID="Contentmanu" runat="server">
    <div id="menu">
		<ul>
			<li><a href="Hoam.aspx">Home</a></li>
			<li class="active"><a href="#">Transaction</a></li>
            <li><a href="Loan_req.aspx">loan</a></li>
            <li><a href="logout.aspx">Log out</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            &nbsp;<asp:Label ID="bal" runat="server" Text="" ></asp:Label>
            <table>
                <tr>
                    <td class="auto-style3">Account No:
                    </td>
                    <td>
                        <asp:TextBox ID="txtAcc" runat="server" Width="280px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Amount: </td>
                    <td>
                        <asp:TextBox ID="txtAmt" runat="server" Width="279px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td>
                        <asp:Button ID="tnf" runat="server" Text="Send Money" OnClick="Button1_Click" />
                    </td>
                </tr>
                </table>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">sign out</asp:LinkButton>
            <br /><asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 303px;
        }
    </style>
</asp:Content>
