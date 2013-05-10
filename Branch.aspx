<%@ Page Title="Branch" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Branch.aspx.cs" Inherits="Branch" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Branch</h1>
    <p>
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataKeyNames="BranchId" DataSourceID="BranchSqlDataSource" ForeColor="#333333">
            <EditItemTemplate>
                BranchId:
            <asp:Label ID="BranchIdLabel1" runat="server" Text='<%# Eval("BranchId") %>' />
                <br />
                CompanyId:
            <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
                <br />
                Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Postcode:
            <asp:TextBox ID="PostcodeTextBox" runat="server" Text='<%# Bind("Postcode") %>' />
                <br />
                Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                CompanyId:
            <asp:TextBox ID="CompanyIdTextBox" runat="server" Text='<%# Bind("CompanyId") %>' />
                <br />
                Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Postcode:
            <asp:TextBox ID="PostcodeTextBox" runat="server" Text='<%# Bind("Postcode") %>' />
                <br />
                Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                BranchId:
            <asp:Label ID="BranchIdLabel" runat="server" Text='<%# Eval("BranchId") %>' />
                <br />
                CompanyId:
            <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Bind("CompanyId") %>' />
                <br />
                Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>' />
                <br />
                Postcode:
            <asp:Label ID="PostcodeLabel" runat="server" Text='<%# Bind("Postcode") %>' />
                <br />
                Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
        </asp:FormView>
        <asp:SqlDataSource ID="BranchSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" DeleteCommand="DELETE FROM [Branch] WHERE [BranchId] = @BranchId" InsertCommand="INSERT INTO [Branch] ([CompanyId], [Address], [Postcode], [Phone]) VALUES (@CompanyId, @Address, @Postcode, @Phone)" SelectCommand="SELECT * FROM [Branch] ORDER BY [CompanyId]" UpdateCommand="UPDATE [Branch] SET [CompanyId] = @CompanyId, [Address] = @Address, [Postcode] = @Postcode, [Phone] = @Phone WHERE [BranchId] = @BranchId">
            <DeleteParameters>
                <asp:Parameter Name="BranchId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CompanyId" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Postcode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyId" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Postcode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="BranchId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

