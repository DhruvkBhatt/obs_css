<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_account.aspx.cs" Inherits="project_S_E.Admin.Add_account" MasterPageFile="~/Admin/Site2.Master" Title="Add account page"%>

<asp:Content ID="content1" ContentPlaceHolderID="Contentmanu" runat="server">
    <div id="menu">
		<ul>
			<li class="active"><a href="#">Admin page</a></li>
			
		</ul>
	</div>
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Account_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="681px" CssClass="auto-style3">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Account_no" HeaderText="Account_no" ReadOnly="True" SortExpression="Account_no" />
                <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Enroll_date" HeaderText="Enroll_date" SortExpression="Enroll_date" />
                <asp:BoundField DataField="Account_type_no" HeaderText="Account_type_no" SortExpression="Account_type_no" />
                <asp:BoundField DataField="New_user" HeaderText="New_user" SortExpression="New_user" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:online_banking_systemConnectionString %>" DeleteCommand="DELETE FROM [Account_info] WHERE [Account_no] = @original_Account_no AND [Balance] = @original_Balance AND [Password] = @original_Password AND (([Enroll_date] = @original_Enroll_date) OR ([Enroll_date] IS NULL AND @original_Enroll_date IS NULL)) AND [Account_type_no] = @original_Account_type_no AND [New_user] = @original_New_user" InsertCommand="INSERT INTO [Account_info] ([Account_no], [Balance], [Password], [Enroll_date], [Account_type_no], [New_user]) VALUES (@Account_no, @Balance, @Password, @Enroll_date, @Account_type_no, @New_user)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Account_info]" UpdateCommand="UPDATE [Account_info] SET [Balance] = @Balance, [Password] = @Password, [Enroll_date] = @Enroll_date, [Account_type_no] = @Account_type_no, [New_user] = @New_user WHERE [Account_no] = @original_Account_no AND [Balance] = @original_Balance AND [Password] = @original_Password AND (([Enroll_date] = @original_Enroll_date) OR ([Enroll_date] IS NULL AND @original_Enroll_date IS NULL)) AND [Account_type_no] = @original_Account_type_no AND [New_user] = @original_New_user">
            <DeleteParameters>
                <asp:Parameter Name="original_Account_no" Type="String" />
                <asp:Parameter Name="original_Balance" Type="Int32" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Enroll_date" />
                <asp:Parameter Name="original_Account_type_no" Type="String" />
                <asp:Parameter Name="original_New_user" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Account_no" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter DbType="Date" Name="Enroll_date" />
                <asp:Parameter Name="Account_type_no" Type="String" />
                <asp:Parameter Name="New_user" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter DbType="Date" Name="Enroll_date" />
                <asp:Parameter Name="Account_type_no" Type="String" />
                <asp:Parameter Name="New_user" Type="Int32" />
                <asp:Parameter Name="original_Account_no" Type="String" />
                <asp:Parameter Name="original_Balance" Type="Int32" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Enroll_date" />
                <asp:Parameter Name="original_Account_type_no" Type="String" />
                <asp:Parameter Name="original_New_user" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style3 {
            margin-left: 49px;
        }
    </style>
</asp:Content>
