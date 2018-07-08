<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:DataList ID="DataList1" runat="server" DataKeyField="kala_id" 
        DataSourceID="ObjectDataSource1">
        <ItemTemplate>
            <div class="top-left"><h4><a style="color:Black;text-decoration:none;" href="<%# Eval("kala_id","showkala.aspx?kala_id={0}") %>" title="<%# Eval("kala_name") %>" target="_blank"><%# Eval("kala_name") %></a></h4></div>
            <div class="center-left" style="float:right;text-align:right;direction:rtl;margin-right:8px;">
                <img src="<%# Eval("kala_img","img/{0}") %>" alt="<%# Eval("kala_name") %>" title="<%# Eval("kala_name") %>" width="auto" height="200px" />
                <asp:TextBox ID="kala_tozihatLabel" runat="server" TextMode="MultiLine" Enabled="False" Text='<%# Eval("kala_tozihat") %>' Width="860" Height="190"></asp:TextBox>
            </div>
        </ItemTemplate>

    </asp:DataList>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="Getallkala_sort" 
        TypeName="kalaTableAdapters.Tbl_kalaTableAdapter"></asp:ObjectDataSource>

</asp:Content>

