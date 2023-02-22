<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TestEntity.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            Grades :
        </div>
        <asp:GridView ID="grd_Grades" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double"
            BorderWidth="3px" CellPadding="4" GridLines="Horizontal"
             OnPageIndexChanging="OnPageIndexChanging" AllowPaging="true"  PageSize="10" Width="1228px"
             OnSelectedIndexChanged="OnSelectedIndexChanged" AllowSorting="True" 
            AutoGenerateSelectButton="True"
            DataKeyNames="Grade1">
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

        </asp:GridView>
                
          <br/>
<u>Selected Row:</u>
<br />
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Grade" DataSourceID="SqlDataSource1" Width="1229px" 
            OnPageIndexChanging="FormView1_PageIndexChanging" BackColor="White" BorderColor="#336666" BorderStyle="Double" 
            BorderWidth="3px" CellPadding="4" GridLines="Horizontal" 
            OnItemDeleted="FormView1_ItemDeleted" OnItemUpdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                Grade:
                <asp:Label ID="GradeLabel1" runat="server" Text='<%# Eval("Grade") %>' />
                <br />
                GradeName:
                <asp:TextBox ID="GradeNameTextBox" runat="server" Text='<%# Bind("GradeName") %>' />
                <br />
                GradeAName:
                <asp:TextBox ID="GradeANameTextBox" runat="server" Text='<%# Bind("GradeAName") %>' />
                <br />
                GradeFName:
                <asp:TextBox ID="GradeFNameTextBox" runat="server" Text='<%# Bind("GradeFName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Grade:
                <asp:TextBox ID="GradeTextBox" runat="server" Text='<%# Bind("Grade") %>' />
                <br />
                GradeName:
                <asp:TextBox ID="GradeNameTextBox" runat="server" Text='<%# Bind("GradeName") %>' />
                <br />
                GradeAName:
                <asp:TextBox ID="GradeANameTextBox" runat="server" Text='<%# Bind("GradeAName") %>' />
                <br />
                GradeFName:
                <asp:TextBox ID="GradeFNameTextBox" runat="server" Text='<%# Bind("GradeFName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Grade:
                <asp:Label ID="GradeLabel" runat="server" Text='<%# Eval("Grade") %>' />
                <br />
                GradeName:
                <asp:Label ID="GradeNameLabel" runat="server" Text='<%# Bind("GradeName") %>' />
                <br />
                GradeAName:
                <asp:Label ID="GradeANameLabel" runat="server" Text='<%# Bind("GradeAName") %>' />
                <br />
                GradeFName:
                <asp:Label ID="GradeFNameLabel" runat="server" Text='<%# Bind("GradeFName") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>


            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />


        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DNATrainingConnectionString2 %>" 
            SelectCommand="SELECT [Grade], [GradeName], [GradeAName], [GradeFName] FROM [Grades] where [Grade] = @Code"
            ConflictDetection="CompareAllValues"
            DeleteCommand="DELETE FROM [Grades] WHERE 
            [Grade] = @original_Grade AND [GradeName] = @original_GradeName AND [GradeAName] = @original_GradeAName AND [GradeFName] = @original_GradeFName" 
            InsertCommand="INSERT INTO [Grades] ([Grade], [GradeName], [GradeAName], [GradeFName]) 
            VALUES (@Grade, @GradeName, @GradeAName, @GradeFName)" OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [Grades] 
            SET [GradeName] = @GradeName, [GradeAName] = @GradeAName, [GradeFName] = @GradeFName
            WHERE [Grade] = @original_Grade "
            >
            <SelectParameters>
           <asp:ControlParameter runat="server" ControlID="grd_Grades" PropertyName="SelectedValue" Name="Code" Type="Int16" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_Grade" Type="Int16" />
                <asp:Parameter Name="original_GradeName" Type="String" />
                <asp:Parameter Name="original_GradeAName" Type="String" />
                <asp:Parameter Name="original_GradeFName" Type="String" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="Grade" Type="Int16" />
                <asp:Parameter Name="GradeName" Type="String" />
                <asp:Parameter Name="GradeAName" Type="String" />
                <asp:Parameter Name="GradeFName" Type="String" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="GradeName" Type="String" />
                <asp:Parameter Name="GradeAName" Type="String" />
                <asp:Parameter Name="GradeFName" Type="String" />
                <asp:Parameter Name="original_Grade" Type="Int16" />
                <asp:Parameter Name="original_GradeName" Type="String" />
                <asp:Parameter Name="original_GradeAName" Type="String" />
                <asp:Parameter Name="original_GradeFName" Type="String" />
            </UpdateParameters>

        </asp:SqlDataSource>
<br />
    
      
    
    </form>
</body>
</html>
