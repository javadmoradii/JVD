<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="cat.aspx.cs" Inherits="admin_cat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cat_id" 
        DataSourceID="ObjectDataSourcforcat" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="cat_name" HeaderText="cat_name" 
                SortExpression="cat_name" />
            <asp:BoundField DataField="cat_id" HeaderText="cat_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="cat_id" />
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
    <asp:ObjectDataSource ID="ObjectDataSourcforcat" runat="server" 
        DeleteMethod="Deletecatbycat_id" InsertMethod="Insertcat" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetallDatacat" 
        TypeName="catTableAdapters.Tbl_catTableAdapter" 
        UpdateMethod="Updatecatbycat_id">
        <DeleteParameters>
            <asp:Parameter Name="Original_cat_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cat_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="Original_cat_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</center>

<table style="direction:rtl;font-family:Tahoma;font-size:12px;text-align:center;width:500px;margin:0 auto;border-color:Black;border-width:1px;border-style:solid;padding:10px;">
    <tr>
        <td>دسته بندی کالا :</td>
        <td><asp:TextBox ID="txt_catname" runat="server" style="margin-right: 0px" 
                Width="165px"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Button ID="btn_catsend" runat="server" Text="تایید دسته بندی جدید" 
                onclick="btn_catsend_Click" /></td>
        <td><asp:Label ID="lbl_catsend" runat="server" Text=""></asp:Label></td>
    </tr>

</table>

    <br />
</asp:Content>

