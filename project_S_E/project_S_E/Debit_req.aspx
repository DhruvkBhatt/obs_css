<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Debit_req.aspx.cs" Inherits="project_S_E.Debit_req" MasterPageFile="~/Site1.Master" Title="Debit Request"%>

<asp:Content ID="content1" ContentPlaceHolderID="Contentmanu" runat="server">
    <div id="menu">
		<ul>
			<li class="active"><a href="#">Home</a></li>
			<li><a href="Transaction.aspx">Transaction</a></li>
            <li><a href="Loan_req.aspx">loan</a></li>
			<li><a href="logout.aspx">Log out</a></li>
		</ul>
	</div>
</asp:Content>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>

            <asp:Calendar ID="Calendar2" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar2_DayRender"></asp:Calendar>
             <asp:Label ID="label1" runat="server"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">PickDate...</asp:LinkButton>
            <table>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td class="auto-style3">Requested Money</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td class="auto-style3"></td>
                    <td>

                        <asp:Button ID="Button1" runat="server" Text="Conform" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            width: 169px;
        }
    </style>
</asp:Content>
