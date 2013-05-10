<%@ Page Title="Client Details and Leads" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Leads.aspx.cs" Inherits="Leads" %>

<script runat="server">

   
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1 {
            width: 100%;
        }

        .style2 {
            height: 26px;
        }

        .style3 {
            width: 110px;
        }

        .style4 {
            height: 26px;
            color: #0099FF;
        }

        .style5 {
            color: #0099FF;
        }

        .auto-style1 {
            height: 48px;
        }

        .auto-style2 {
            width: 110px;
            height: 48px;
        }

        .auto-style3 {
            height: 38px;
        }

        .auto-style4 {
            width: 110px;
            height: 38px;
        }

        .auto-style5 {
            color: #0099FF;
            height: 47px;
        }

        .auto-style6 {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Client and Lead Details</h1>
    <%-- <p>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" TabIndex="14" />&nbsp;<asp:TextBox ID="txtSearch" runat="server" TabIndex="13"></asp:TextBox>
        &nbsp;
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="FillByName" TypeName="DataSetsearchTableAdapters.LeadsTableAdapter">
            <SelectParameters>
                <asp:Parameter Name="dataTable" Type="Object" />
                <asp:ControlParameter ControlID="txtSearch" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>--%>

    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="LeadId"
        DataSourceID="ClientLeadsSqlDataSource" OnDataBound="FormView1_DataBound">
        <EditItemTemplate>
            <table class="style1" cellpadding="5">
                <tr>
                    <td class="auto-style1">Name:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                    <td class="auto-style1">&nbsp;
                    </td>
                    <td class="auto-style1">Home Phone:
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>' TabIndex="4" />
                    </td>
                    <td class="auto-style2">Date Added:
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtDate1" runat="server" Text='<%# Bind("DateAdded", "{0:d}") %>' TabIndex="8"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender runat="server" ID="txtDate1_CalendarExtender" TargetControlID="txtDate1" Enabled="True" Format="d/MM/yyyy" DaysModeTitleFormat="MM, yyyy" TodaysDateFormat="d,MM, yyyy">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>Address:
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Height="50" Text='<%# Bind("Address") %>' TextMode="MultiLine" Width="148" TabIndex="1" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Mobile:
                    </td>
                    <td>
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' TabIndex="5" />
                    </td>
                    <td class="style3">Type:
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal"
                            SelectedValue='<%# Bind("Type") %>' TabIndex="9">
                            <asp:ListItem>Applicant</asp:ListItem>
                            <asp:ListItem>Vendor</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Post Code:
                    </td>
                    <td>
                        <asp:TextBox ID="PostCodeTextBox" runat="server" Text='<%# Bind("PostCode") %>' TabIndex="2"></asp:TextBox>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Work Phone:
                    </td>
                    <td>
                        <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>' TabIndex="6" />
                    </td>
                    <td class="style3">Introducer:
                    </td>

                    </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceUserName" DataTextField="Name" DataValueField="UserId" SelectedValue='<%# Bind("IntroducerId") %>' TabIndex="10">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceUserName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" SelectCommand="SELECT [Name], [UserId] FROM [LeadBaseUsers] ORDER BY [Name]"></asp:SqlDataSource>
                        </td>
                        <td>&nbsp;
                        </td>
                </tr>
                <tr>
                    <td>Date Of Birth:</td>
                    <td>
                        <asp:TextBox ID="DateOfBirthTextBox" runat="server" Text='<%# Bind("DateOfBirth", "{0:d}") %>' TabIndex="3" />
                        <ajaxToolkit:CalendarExtender ID="DateOfBirthTextBox_CalendarExtender" runat="server" Enabled="True" TargetControlID="DateOfBirthTextBox" Format="d/MM/yyyy" TodaysDateFormat="d,MM, yyyy">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Email:
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TabIndex="7" />
                    </td>
                    <td class="style3">Status</td>
                    <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" SelectedValue='<%# Bind("CurrentState") %>' TabIndex="11">
                            </asp:DropDownList>
                        </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <ajaxToolkit:CalendarExtender runat="server" ID="calExtender2" PopupButtonID="btnDate2"
                            TargetControlID="PostCodeTextBox" Format="d/MM/yyyy">
                        </ajaxToolkit:CalendarExtender>
                        <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" TabIndex="12" />
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">&nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" TabIndex="13" />
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">&nbsp;
                    </td>
                    <td class="auto-style3">&nbsp;
                    </td>
                    <td class="auto-style3">&nbsp;
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="style1" cellpadding="5">
                <tr>
                    <td>Name:
                    </td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" TabIndex="1" Text='<%# Bind("Name") %>' />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Home Phone:
                    </td>
                    <td>
                        <asp:TextBox ID="HomePhoneTextBox" runat="server" Text='<%# Bind("HomePhone") %>'
                            TabIndex="4" />
                    </td>
                    <td class="style3">Date Added:
                    </td>
                    <td>
                        <asp:TextBox ID="txtDate1" runat="server" Text='<%# Bind("DateAdded", "{0:d}") %>' TabIndex="8"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender runat="server" ID="calExtender1" PopupButtonID="btnDate1" TargetControlID="txtDate1" Format="d/MM/yyyy" TodaysDateFormat="d/MM/yyyy">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Address:
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Height="50" TabIndex="1" Text='<%# Bind("Address") %>' TextMode="MultiLine" Width="148" />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Mobile:
                    </td>
                    <td>
                        <asp:TextBox ID="MobileTextBox" runat="server" Text='<%# Bind("Mobile") %>' TabIndex="5" />
                    </td>
                    <td class="style3">Type:
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                            SelectedValue='<%# Bind("Type") %>' TabIndex="9">
                            <asp:ListItem Selected="True">Applicant</asp:ListItem>
                            <asp:ListItem>Vendor</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Post Code:
                    </td>
                    <td>
                        <asp:TextBox ID="PostCodeTextBox" runat="server" TabIndex="2" Text='<%# Bind("PostCode") %>' />
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Work Phone:
                    </td>
                    <td>
                        <asp:TextBox ID="WorkPhoneTextBox" runat="server" Text='<%# Bind("WorkPhone") %>'
                            TabIndex="6" />
                    </td>
                    <td class="style3">Introducer:
                    </td>

                    </td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceUserName" DataTextField="Name" DataValueField="UserId" SelectedValue='<%# Bind("IntroducerId") %>' TabIndex="10">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceUserName" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" SelectCommand="SELECT [Name], [UserId] FROM [LeadBaseUsers] ORDER BY [Name]"></asp:SqlDataSource>
                        </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>Date Of Birth:
                    </td>
                    <td>
                        <asp:TextBox ID="DateOfBirthTextBox" runat="server" TabIndex="3" Text='<%# Bind("DateOfBirth", "{0:d}") %>'></asp:TextBox>
                        <ajaxToolkit:CalendarExtender ID="calExtender2" runat="server" Format="d/MM/yyyy" PopupButtonID="btnDate2" TargetControlID="DateOfBirthTextBox" DaysModeTitleFormat="MM, yyyy" TodaysDateFormat="d/MM/yyyy">
                        </ajaxToolkit:CalendarExtender>
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>Email:
                    </td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' TabIndex="7" />
                    </td>
                    <td class="style3">Status</td>
                    <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" SelectedValue='<%# Bind("CurrentState") %>' TabIndex="11">
                            </asp:DropDownList>
                        </td>
                    <td>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" TabIndex="12" Text="Insert Customer" />
                    </td>
                    <td>&nbsp;</td>
                    <td></td>
                    <td>&nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" TabIndex="13" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                    <td class="style3">&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                    <td>&nbsp;
                    </td>
                </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="style1" cellpadding="10" cellspacing="5">
                <tr>
                    <td class="style5">Name:
                    </td>
                    <td>
                        <asp:Label ID="NameLabel" runat="server" BorderStyle="None" BorderWidth="1px" Text='<%# Bind("Name") %>' />
                    </td>
                    <td class="style5">HomePhone:
                    </td>
                    <td>
                        <asp:Label ID="HomePhoneLabel" runat="server" Text='<%# Bind("HomePhone") %>' />
                    </td>
                    <td class="style5">DateAdded:
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# ((DateTime)Eval("DateAdded")).ToString("d/MM/yyyy") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">Address:
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" BorderStyle="None" BorderWidth="1px"
                            Height="50px" Text='<%# Bind("Address") %>' Width="148px" />
                    </td>
                    <td class="style5">Mobile:
                    </td>
                    <td>
                        <asp:Label ID="MobileLabel" runat="server" Text='<%# Bind("Mobile") %>' />
                    </td>
                    <td class="style5">Type:
                    </td>
                    <td>
                        <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style5">PostCode:
                    </td>
                    <td>
                        <asp:Label ID="PostCodeLabel" runat="server" Text='<%# Bind("PostCode") %>' />
                    </td>
                    <td class="style5">WorkPhone:
                    </td>
                    <td>
                        <asp:Label ID="WorkPhoneLabel" runat="server" Text='<%# Bind("WorkPhone") %>' />
                    </td>
                    <td class="style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;DateOfBirth:
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="DateOfBirthLabel" runat="server" Text='<%# ((DateTime)Eval("DateOfBirth")).ToString("d/MM/yyyy") %>
' />
                    </td>
                    <td class="auto-style5">Email:
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    </td>
                    <td style="color: #0099FF" class="auto-style6">&nbsp;</td>
                    <td class="auto-style6">&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style4">&nbsp;<asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"
                        Text="Edit Customer" />
                    </td>
                    <td class="style2">&nbsp;
                    </td>
                    <td class="style4">&nbsp;<asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"
                        Text="Delete Customer" TabIndex="1" />
                    </td>
                    <td class="style2">&nbsp;
                    </td>
                    <td class="style2">&nbsp;
                            <asp:Button ID="NewButton" runat="server" CausesValidation="False" CommandName="New"
                                Text="New Customer" TabIndex="2" />
                    </td>
                    <td class="style2">&nbsp;
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    &nbsp;<asp:SqlDataSource ID="ClientLeadsSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>"
        DeleteCommand="DELETE FROM [Leads] WHERE [LeadId] = @LeadId" InsertCommand="INSERT INTO [Leads] ([Name], [Address], [PostCode], [DateOfBirth], [HomePhone], [Mobile], [WorkPhone], [Email], [CurrentState], [DateAdded], [Type], [IntroducerId]) VALUES (@Name, @Address, @PostCode, @DateOfBirth, @HomePhone, @Mobile, @WorkPhone, @Email, @CurrentState, @DateAdded, @Type, @IntroducerId)"
        SelectCommand="SELECT l.*, u.Name as Introducer FROM [Leads] l JOIN [LeadBaseUsers] u on u.UserId =  l.IntroducerId ORDER BY [DateAdded] DESC" UpdateCommand="UPDATE [Leads] SET [Name] = @Name, [Address] = @Address, [PostCode] = @PostCode, [DateOfBirth] = @DateOfBirth, [HomePhone] = @HomePhone, [Mobile] = @Mobile, [WorkPhone] = @WorkPhone, [Email] = @Email, [CurrentState] = @CurrentState, [DateAdded] = @DateAdded, [Type] = @Type, [IntroducerId] = @IntroducerId WHERE [LeadId] = @LeadId">
        <DeleteParameters>
            <asp:Parameter Name="LeadId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="PostCode" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CurrentState" Type="String" />
            <asp:Parameter DbType="Date" Name="DateAdded" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="IntroducerId" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="PostCode" Type="String" />
            <asp:Parameter DbType="Date" Name="DateOfBirth" />
            <asp:Parameter Name="HomePhone" Type="String" />
            <asp:Parameter Name="Mobile" Type="String" />
            <asp:Parameter Name="WorkPhone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="CurrentState" Type="String" />
            <asp:Parameter DbType="Date" Name="DateAdded" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="IntroducerId" Type="Int32" />
            <asp:Parameter Name="LeadId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>"
        SelectCommand="SELECT [StateId], [Name] FROM [States] ORDER BY [Name]"></asp:SqlDataSource>

    <h2>Current Status and
        Notes</h2>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceNotes">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF; color: #284775;">
                <td>
                    <asp:Label ID="IntroducerLabel" runat="server" Text='<%# Eval("Introducer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_AddedLabel" runat="server" Text='<%# Eval("[Date Added]") %>' />
                </td>
                <td>
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:TextBox ID="IntroducerTextBox" runat="server" Text='<%# Bind("Introducer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_AddedTextBox" runat="server" Text='<%# Bind("[Date Added]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="IntroducerTextBox" runat="server" Text='<%# Bind("Introducer") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Date_AddedTextBox" runat="server" Text='<%# Bind("[Date Added]") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NoteTextBox" runat="server" Text='<%# Bind("Note") %>' />
                </td>
                <td>
                    <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF; color: #333333;">
                <td>
                    <asp:Label ID="IntroducerLabel" runat="server" Text='<%# Eval("Introducer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_AddedLabel" runat="server" Text='<%# Eval("[Date Added]") %>' />
                </td>
                <td>
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td1" runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="Tr2" runat="server" style="background-color: #E0FFFF; color: #333333;">
                                <th id="Th1" runat="server">Introducer</th>
                                <th id="Th2" runat="server">Date Added</th>
                                <th id="Th3" runat="server">Note</th>
                                <th id="Th4" runat="server">Status</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr3" runat="server">
                    <td id="Td2" runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6; font-weight: bold; color: #333333;">
                <td>
                    <asp:Label ID="IntroducerLabel" runat="server" Text='<%# Eval("Introducer") %>' />
                </td>
                <td>
                    <asp:Label ID="Date_AddedLabel" runat="server" Text='<%# Eval("[Date Added]") %>' />
                </td>
                <td>
                    <asp:Label ID="NoteLabel" runat="server" Text='<%# Eval("Note") %>' />
                </td>
                <td>
                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Eval("Status") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSourceNotes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringLeadBase %>" SelectCommand="SELECT users.Name as Introducer, CONVERT(nvarchar(10), notes.DateAdded, 103) as 'Date Added', notes.Note, status.Name as Status FROM [Leads] leads JOIN [Notes] notes ON notes.LeadId=leads.LeadId JOIN [States] status ON status.StateId=notes.StateId JOIN LeadBaseUsers users on users.UserId=notes.UserId WHERE leads.LeadId=@LeadId ORDER BY notes.DateAdded DESC">
        <SelectParameters>
            <asp:Parameter DefaultValue="" Name="LeadId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="newNoteUrl" runat="server" Text="Status Change & New Note" TabIndex="14" />
    &nbsp
  
</asp:Content>
