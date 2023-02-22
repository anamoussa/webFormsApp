<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddJob.aspx.cs" Inherits="TestEntity.AddJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            height: 23px;
            width: 292px;
        }
        .auto-style5 {
            width: 292px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3" colspan="4">Insert new Job </td>
            </tr>
            <tr>
                <td class="auto-style4">Job Name </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txt_jobn" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style5">Job Cat Id</td>
                <td>
                    <asp:TextBox ID="txt_jobCat" runat="server" Width="205px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Job A Name </td>
                <td>
                    <asp:TextBox ID="txt_jobAname" runat="server" Width="204px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btn_addJob" runat="server" Text="Add New Job " />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>

 

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceJobs"  >
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="AName" HeaderText="AName" SortExpression="AName" />
        <asp:BoundField DataField="JobCatId" HeaderText="JobCatId" SortExpression="JobCatId" />
        <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" SortExpression="CreatedBy" />
        <asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" SortExpression="CreatedDate" />
        <asp:BoundField DataField="ChangeBy" HeaderText="ChangeBy" SortExpression="ChangeBy" />
        <asp:BoundField DataField="ChageDate" HeaderText="ChageDate" SortExpression="ChageDate" />
        <asp:CheckBoxField DataField="IsDeleted" HeaderText="IsDeleted" SortExpression="IsDeleted" />
    </Columns>
        </asp:GridView>
        
        <asp:SqlDataSource ID="SqlDataSourceJobs" runat="server" ConnectionString="<%$ ConnectionStrings:JobsDBConnectionString %>" 
            SelectCommand="SELECT * FROM [Job]"
            >
            
        </asp:SqlDataSource>
    </form>
</body>
</html>
