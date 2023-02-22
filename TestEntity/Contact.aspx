<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TestEntity.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <p>
        <asp:GridView ID="grd_jobs" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84"
            BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="1184px"  
            OnPageIndexChanging="OnPageIndexChanging" AllowPaging="true"  PageSize="10">

            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    </asp:Content>
