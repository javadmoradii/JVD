<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="showkala.aspx.cs" Inherits="showkala" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title><%# Eval("kala_name") %></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="kala_id" 
        DataSourceID="ObjectDataSourceshowkala">
        <ItemTemplate>
            <div class="top-left"><h4><a style="color:Black;text-decoration:none;" href="<%# Eval("kala_id","showkala.aspx?kala_id={0}") %>" title="<%# Eval("kala_name") %>" target="_blank"><%# Eval("kala_name") %></a></h4></div>
                <div class="center-left">
                        <table style="float:right;text-align:right;direction:rtl;margin-right:8px;">
                            <tr>
                                <td>
                                    <img src="<%# Eval("kala_img","img/{0}") %>" alt="<%# Eval("kala_name") %>" title="<%# Eval("kala_name") %>" width="auto" height="200px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("kala_tozihat") %>' />
                                    <br />
                                      وضعیت کالا :
                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("kala_mojod") %>' />
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      قیمت کالا :
                                      <asp:Label ID="Label4" runat="server" Text='<%# Eval("kala_qeymat") %>' />
                                      <asp:Label ID="Label1" runat="server" Text="تومان"></asp:Label>
                                </td>
                            </tr>
                        </table> 
                </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:ObjectDataSource ID="ObjectDataSourceshowkala" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDatakalaBykalaid" 
        TypeName="kalaTableAdapters.Tbl_kalaTableAdapter">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="kala_id" 
                QueryStringField="kala_id" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

