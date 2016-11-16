<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project_S_E.Home" MasterPageFile="~/Site1.Master" Title="Home page" %>

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
    <asp:Label ForeColor="Green" Text="Welcome To Home" runat="server" Font-Size="Larger"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Statement" ForeColor="Red" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Change_password" ForeColor="Red" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Your_detail" ForeColor="Red" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="Loan_req" ForeColor="Red" OnClick="Button4_Click" />
        <asp:Button ID="Button5" runat="server" Text="Change_Detail" ForeColor="Red" OnClick="Button5_Click" />
        <asp:Button ID="Button6" runat="server" Text="Transaction" ForeColor="Red" OnClick="Button6_Click" />
        <asp:Button ID="Button7" runat="server" Text="Debit_Req" ForeColor="Red" OnClick="Button7_Click" />
        <br />
    
        <br />
    
    </div>
</asp:Content>