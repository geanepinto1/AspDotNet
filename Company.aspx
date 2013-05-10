<%@ Page Title="Company" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Company.aspx.cs" Inherits="Company" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        text-align: center;
            background-color: #FFFFFF;
        }
    .auto-style4 {
        color: #000000;
    }
        .auto-style5 {
            height: 22px;
            background-color: #FFFFFF;
        }
        .auto-style7 {
            color: #0099FF;
        }
        .auto-style8 {
            height: 21px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Company</h1>
<asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="CompanyId" DataSourceID="CompaniesSqlDataSource" Height="154px" Width="432px">
    <EditItemTemplate>
        <table class="auto-style1" cellpadding="5">
            <tr>
                <td class="auto-style7">CompanyId:</td>
                <td>
                    <asp:Label ID="CompanyIdLabel1" runat="server" Text='<%# Eval("CompanyId") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Name:</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                </td>
                <td>
                    <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </td>
            </tr>
        </table>
    </EditItemTemplate>
    <InsertItemTemplate>
        <table class="auto-style1" cellpadding="5">
            <tr>
                <td class="auto-style7">Name:</td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                </td>
                <td>
                    <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </td>
            </tr>
        </table>
    </InsertItemTemplate>
    <ItemTemplate>
        <table class="auto-style1" cellpadding="5" >
            <tr class="auto-style4">
                <td class="auto-style8" width="200"><span class="auto-style7" style="background-color: #FFFFFF">Company Id:</span></td>
                <td class="auto-style8"></td>
                <td style="margin-left: 40px" class="auto-style8">
                    <asp:Label ID="CompanyIdLabel" runat="server" Text='<%# Eval("CompanyId") %>' />
                </td>
            </tr>
            <tr class="auto-style4">
                <td class="auto-style5"  width="200"><span class="auto-style7">Company Name:</span><b> </b> </td>
                <td class="auto-style5" ></td>
                <td class="auto-style5" ">
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                </td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC" class="auto-style3">
                    <asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                </td>
                <td bgcolor="#CCCCCC" class="auto-style3">
                    <asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                </td>
                <td bgcolor="#CCCCCC" class="auto-style3">
                    <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;
    </ItemTemplate>
</asp:FormView>
<p>
    <asp:SqlDataSource ID="CompaniesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" DeleteCommand="DELETE FROM [Companies] WHERE [CompanyId] = @CompanyId" InsertCommand="INSERT INTO [Companies] ([Name]) VALUES (@Name)" SelectCommand="SELECT [CompanyId], [Name] FROM [Companies] ORDER BY [CompanyId]" UpdateCommand="UPDATE [Companies] SET [Name] = @Name WHERE [CompanyId] = @CompanyId">
        <DeleteParameters>
            <asp:Parameter Name="CompanyId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="CompanyId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

