<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kala_id" 
        DataSourceID="ObjectDataSource2" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="kala_id" HeaderText="kala_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="kala_id" />
            <asp:BoundField DataField="kala_name" HeaderText="kala_name" 
                SortExpression="kala_name" />
            <asp:BoundField DataField="kala_tozihat" HeaderText="kala_tozihat" 
                SortExpression="kala_tozihat" />
            <asp:BoundField DataField="kala_img" HeaderText="kala_img" 
                SortExpression="kala_img" />
            <asp:CheckBoxField DataField="kala_mojod" HeaderText="kala_mojod" 
                SortExpression="kala_mojod" />
            <asp:BoundField DataField="kala_qeymat" HeaderText="kala_qeymat" 
                SortExpression="kala_qeymat" />
            <asp:BoundField DataField="nazar_id" HeaderText="nazar_id" 
                SortExpression="nazar_id" />
            <asp:BoundField DataField="cat_id" HeaderText="cat_id" 
                SortExpression="cat_id" />
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
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        DeleteMethod="Deletekala" InsertMethod="Insertkala" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="Getallkala_sort" 
        TypeName="kalaTableAdapters.Tbl_kalaTableAdapter" UpdateMethod="Updatekala">
        <DeleteParameters>
            <asp:Parameter Name="Original_kala_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kala_name" Type="String" />
            <asp:Parameter Name="kala_tozihat" Type="String" />
            <asp:Parameter Name="kala_img" Type="String" />
            <asp:Parameter Name="kala_mojod" Type="Boolean" />
            <asp:Parameter Name="kala_qeymat" Type="Decimal" />
            <asp:Parameter Name="nazar_id" Type="Int32" />
            <asp:Parameter Name="cat_id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kala_name" Type="String" />
            <asp:Parameter Name="kala_tozihat" Type="String" />
            <asp:Parameter Name="kala_img" Type="String" />
            <asp:Parameter Name="kala_mojod" Type="Boolean" />
            <asp:Parameter Name="kala_qeymat" Type="Decimal" />
            <asp:Parameter Name="nazar_id" Type="Int32" />
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="Original_kala_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
<table style="margin:0 auto;font-family:Tahoma;font-size:10px;border-color:Silver;border-width:3px;text-align:center;direction:rtl;border-style:solid;">

    <tr>
        <td>نام کالا :</td>
        <td><asp:TextBox ID="txt_namekala" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txt_namekala" ErrorMessage="نام کالا حتما باید درج شود" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>شرح کالا :</td>
        <td><asp:TextBox ID="txt_tozihat" runat="server" TextMode="MultiLine"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txt_tozihat" ErrorMessage="شرح کالا حتما باید درج شود" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>تصویر کالا :</td>
        <td><asp:FileUpload ID="imgupload" runat="server" /> </td>
    </tr>
    <tr>
        <td>وضعیت کالا :</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True" Value="0">موجود</asp:ListItem>
                <asp:ListItem Value="1">ناموجود</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>قیمت کالا :</td>
        <td><asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txt_price" ErrorMessage="قیمت کالا حتما باید درج شود" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>دسته بندی کالا:</td>
        <td><asp:DropDownList ID="drp_cat" runat="server" DataSourceID="ObjectDataSource1" 
                DataTextField="cat_name" DataValueField="cat_id"></asp:DropDownList> 
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                OldValuesParameterFormatString="original_{0}" SelectMethod="GetallDatacat" 
                TypeName="catTableAdapters.Tbl_catTableAdapter"></asp:ObjectDataSource>
        </td>
        
    </tr>
    <tr>
        <td><asp:Button ID="btn_send" runat="server" Text="ارسال" onclick="btn_send_Click" /></td>
        <td><asp:Label ID="lbl_kala" runat="server" Text=""></asp:Label> </td>
    </tr>
</table>
</asp:Content>

