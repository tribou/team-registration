<%@ Page Title="" Language="VB" MasterPageFile="~/Master/Main.master" AutoEventWireup="false" CodeFile="Teams.aspx.vb" Inherits="Teams" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    
    
    <asp:Panel ID="pnlTeams" runat="server">
        <fieldset>
            <legend>Register Teams</legend>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" 
                ValidationGroup="validate" />
            <table class="style1">
                <tr>
                    <td style="text-align: right" width="200px">
                        &nbsp;</td>
                    <td style="text-align: right" width="200px">
                        Team Name:&nbsp;
                    </td>
                    <td width="200px">
                        <asp:TextBox ID="txtName" runat="server" MaxLength="128"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" 
                            ControlToValidate="txtName" ErrorMessage="Enter a team name." ForeColor="Red" 
                            ToolTip="Enter a team name." ValidationGroup="validate">*</asp:RequiredFieldValidator>
                    </td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right" width="200px">
                        &nbsp;</td>
                    <td style="text-align: right" width="200px">
                        Team Captain Name:</td>
                    <td width="200px">
                        <asp:TextBox ID="txtCapt" runat="server" MaxLength="128"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqCaptain" runat="server" 
                            ControlToValidate="txtCapt" ErrorMessage="Enter a team captain." 
                            ForeColor="Red" ToolTip="Enter a team captain." ValidationGroup="validate">*</asp:RequiredFieldValidator>
                    </td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right" width="200px">
                        &nbsp;</td>
                    <td style="text-align: right" width="200px">
                        Number of Players:</td>
                    <td width="200px">
                        <asp:DropDownList ID="ddlNum" runat="server">
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right" width="200px">
                        &nbsp;</td>
                    <td style="text-align: right" width="200px">
                        Team Type:</td>
                    <td width="200px">
                        <asp:RadioButtonList ID="rblAdult" runat="server">
                            <asp:ListItem Selected="True" Value="False">Student Team</asp:ListItem>
                            <asp:ListItem Value="True">Adult Team</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="200px">
                        &nbsp;</td>
                    <td width="200px">
                        &nbsp;</td>
                    <td width="200px">
                        &nbsp;</td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right" width="200px">
                        &nbsp;</td>
                    <td style="text-align: right" width="200px">
                        <asp:Button ID="btnAdd" runat="server" style="text-align: right" 
                            Text="Add Team" ValidationGroup="validate" />
                    </td>
                    <td width="200px">
                        <asp:Button ID="btnDone" runat="server" Text="Complete Registration" />
                    </td>
                    <td width="200px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>

            <fieldset>
            <legend>Existing Teams</legend>
            <asp:GridView ID="gvwTeams" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="teamID" DataSourceID="SqlTeams"
                style="position:relative; margin:auto;" EmptyDataText="None Registered" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="teamID" HeaderText="teamID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="teamID" Visible="False" />
                    <asp:BoundField DataField="teamName" HeaderText="Team Name" 
                        SortExpression="teamName" />
                    <asp:BoundField DataField="teamCaptainName" HeaderText="Captain Name" 
                        SortExpression="teamCaptainName" />
                    <asp:BoundField DataField="teamNumPlayers" HeaderText="Players" 
                        SortExpression="teamNumPlayers" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="orgID" HeaderText="orgID" SortExpression="orgID" 
                        Visible="False" />
                    <asp:BoundField DataField="teamYear" HeaderText="Team Year" 
                        SortExpression="teamYear" ReadOnly="True" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="teamAdult" HeaderText="Adult Team" 
                        SortExpression="teamAdult" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlTeams" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CIS407_AtribouConnectionString %>" 
                    DeleteCommand="DELETE FROM [Teams] WHERE [teamID] = @teamID" 
                    InsertCommand="INSERT INTO [Teams] ([teamName], [teamCaptainName], [teamNumPlayers], [orgID], [teamYear], [teamAdult]) VALUES (@teamName, @teamCaptainName, @teamNumPlayers, @orgID, @teamYear, @teamAdult)" 
                    SelectCommand="getTeams" SelectCommandType="StoredProcedure" 
                    UpdateCommand="UPDATE [Teams] SET [teamName] = @teamName, [teamCaptainName] = @teamCaptainName, [teamNumPlayers] = @teamNumPlayers, [orgID] = @orgID, [teamYear] = @teamYear, [teamAdult] = @teamAdult WHERE [teamID] = @teamID">
                    <DeleteParameters>
                        <asp:Parameter Name="teamID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="teamName" Type="String" />
                        <asp:Parameter Name="teamCaptainName" Type="String" />
                        <asp:Parameter Name="teamNumPlayers" Type="Int32" />
                        <asp:Parameter Name="orgID" Type="Int32" />
                        <asp:Parameter Name="teamYear" Type="DateTime" />
                        <asp:Parameter Name="teamAdult" Type="Boolean" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="orgID" SessionField="orgID" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="teamName" Type="String" />
                        <asp:Parameter Name="teamCaptainName" Type="String" />
                        <asp:Parameter Name="teamNumPlayers" Type="Int32" />
                        <asp:Parameter Name="orgID" Type="Int32" />
                        <asp:Parameter Name="teamYear" Type="DateTime" />
                        <asp:Parameter Name="teamAdult" Type="Boolean" />
                        <asp:Parameter Name="teamID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </fieldset>
        </fieldset>
    </asp:Panel>

</asp:Content>

