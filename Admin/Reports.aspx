<%@ Page Title="" Language="VB" MasterPageFile="~/Master/Main.master" AutoEventWireup="false" CodeFile="Reports.aspx.vb" Inherits="Admin_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td width="150px" style="text-align: center">
                <asp:Button ID="btnReturn" runat="server" Text="Return" />
            </td>
            <td style="text-align: center">
                <h2>
                    Current Teams</h2>
            </td>
            <td width="150px">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="10" DataSourceID="sqlTeamsByYear" ForeColor="#333333" 
        GridLines="None" 
        style="position:relative; margin-left:auto; margin-right:auto;">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="orgName" HeaderText="Organization" 
                SortExpression="orgName" />
            <asp:BoundField DataField="teamName" HeaderText="Team Name" 
                SortExpression="teamName" />
            <asp:BoundField DataField="teamCaptainName" HeaderText="Captain Name" 
                SortExpression="teamCaptainName" />
            <asp:BoundField DataField="teamNumPlayers" HeaderText="Players" 
                SortExpression="teamNumPlayers">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="teamAdult" HeaderText="Adult Team" ReadOnly="True" 
                SortExpression="teamAdult">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="sqlTeamsByYear" runat="server" 
        ConnectionString="<%$ ConnectionStrings:CIS407_AtribouConnectionString %>" 
        SelectCommand="teamsByYear" SelectCommandType="StoredProcedure">
    </asp:SqlDataSource>
</asp:Content>

