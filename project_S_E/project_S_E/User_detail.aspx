<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_detail.aspx.cs" Inherits="project_S_E.User_detail" MasterPageFile="~/Site1.Master" Title="User Details"%>

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
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="814px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="User_name" HeaderText="User_name" SortExpression="User_name" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Ph_no" HeaderText="Ph_no" SortExpression="Ph_no" />
                <asp:BoundField DataField="Email_id" HeaderText="Email_id" SortExpression="Email_id" />
                <asp:BoundField DataField="Account_no" HeaderText="Account_no" SortExpression="Account_no" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:online_banking_systemConnectionString %>" SelectCommand="SELECT [User_name], [City], [State], [Pincode], [Country], [DOB], [Ph_no], [Email_id], [Account_no] FROM [User_db] WHERE ([Account_no] = @Account_no)">
            <SelectParameters>
                <asp:SessionParameter Name="Account_no" SessionField="my_account_no" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>

</asp:Content>