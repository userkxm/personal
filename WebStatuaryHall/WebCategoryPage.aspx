<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="WebCategoryPage.aspx.cs" Inherits="WebStatuaryHall.WebCategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container" style="padding-top: 50px;">

            <div class="row">
                <div class="col-md-10">
                    <div style="border-bottom: 1px dashed #000000">
                        <h4>您所查询的分类电影本站暂时提供这些：</h4>
                    </div>
                    <asp:DataList runat="server" RepeatColumns="6" ID="datal">
                        <ItemTemplate>
                            <div style="padding-top: 20px; margin: 15px;">
                                <asp:HyperLink NavigateUrl="navigateurl" runat="server">
                                    <asp:Image ID="images" ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="150" Height="200" />
                                </asp:HyperLink>

                                <asp:HyperLink ID="txtp" NavigateUrl="navigateurl" runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' CssClass="Menu" />
                            </div>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <div style="padding-top: 20px; margin: 15px;">
                                <asp:HyperLink NavigateUrl="navigateurl" runat="server">
                                    <asp:Image ID="imageps" ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="150" Height="200" />
                                </asp:HyperLink>

                                <asp:HyperLink ID="txts" NavigateUrl="navigateurl" runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' CssClass="Menu" />
                            </div>
                        </AlternatingItemTemplate>
                    </asp:DataList>

                </div>
            </div>
        </div>
        <div style="text-align: center;">
            排名
        </div>
        <asp:Button Text="上一页" runat="server" /><asp:Label Text="/" runat="server" /><asp:Button Text="下一页" runat="server" />
    </form>
</asp:Content>
