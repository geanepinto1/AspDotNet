<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<script runat="server">
   
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #0099FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Branch Users</h1>
<p>
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="UserId" DataSourceID="BranchUsersSqlDataSource" OnItemInserted="FormView1_ItemInserted"
            OnItemUpdated="FormView1_ItemUpdated" OnDataBound="FormView1_DataBound">
        <EditItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td class="auto-style2">BranchId:</td>
                    <td>
                        <asp:TextBox ID="BranchIdTextBox" runat="server" Text='<%# Bind("BranchId") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone:</td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>Name:</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>BranchId:</td>
                    <td>
                        <asp:TextBox ID="BranchIdTextBox" runat="server" Text='<%# Bind("BranchId") %>' />
                    </td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            &nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;<br />&nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            <table cellpadding="5" class="auto-style1">
                <tr>
                    <td class="auto-style2">UserId: </td>
                    <td>
                        <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                    </td>
                    <td class="auto-style2">BranchId:</td>
                    <td>
                        <asp:Label ID="BranchIdLabel" runat="server" Text='<%# Bind("BranchId") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name: </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td class="auto-style2">Email:</td>
                    <td>
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone:</td>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </td>
                    <td>
                        <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="BranchUsersSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" DeleteCommand="DELETE FROM [LeadBaseUsers] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [LeadBaseUsers] ( [Name], [Email], [Phone], [BranchId]) VALUES (@Name, @Email, @Phone, @BranchId)" SelectCommand="SELECT * FROM [LeadBaseUsers] ORDER BY [BranchId]" UpdateCommand="UPDATE [LeadBaseUsers] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone, [BranchId] = @BranchId WHERE [UserId] = @UserId">
        <DeleteParameters>
            <asp:Parameter Name="UserId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="BranchId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="BranchId" Type="Int32" />
            <asp:Parameter Name="UserId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <h2>
        Leads generated by above User:</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceNotesUserCreated" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceNotesUserCreated" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" SelectCommand="SELECT notes.DateAdded, notes.Note, notes.UserId  FROM LeadBaseUsers AS users INNER JOIN Notes AS notes ON notes.UserId = users.UserId WHERE (users.UserId = @UserId) ORDER BY notes.DateAdded DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="" Name="UserId" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
</asp:Content>
