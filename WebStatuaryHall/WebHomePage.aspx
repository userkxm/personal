<%@ Page Title="" Language="C#" MasterPageFile="~/PjFilm.Master" AutoEventWireup="true" CodeBehind="WebHomePage.aspx.cs" Inherits="WebStatuaryHall.WebHomePage" %>

<%@ OutputCache Duration="60" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding-top:50px;">
        <div class="row" >
            <div class="col-md-10">
                    <div style="border-bottom: 1px dashed #000000">
                        <h4 >电影推荐</h4>
                    </div>
                <div>
                    <asp:DataList runat="server" RepeatColumns="6" RepeatDirection="Horizontal" ID="dgdShow">
                        <ItemTemplate>
                            <div style="padding-top:20px;">
                            <a href='<%# "WebInformationPage.aspx?id="+Eval("PictureNumber")%>'>
                                <asp:Image ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="148" Height="180" />
                            </a>
                            <asp:HyperLink NavigateUrl="navigateurl" runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' CssClass="Menu" />
                            </div>
                        </ItemTemplate>
                        <AlternatingItemTemplate>

                            <%--<asp:ImageButton ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' CommandName='<%# Eval("PictureNumber") %>' runat="server" OnClick="Unnamed_Click" Width="100" Height="120"/>--%>
                            <div style="padding-top:20px;">
                            <a href='<%# "WebInformationPage.aspx?id="+Eval("PictureNumber")%>'>
                                <asp:Image ImageUrl='<%# "~/Image/12/"+Eval("PictureNumber")+".jpg" %>' runat="server" Width="148" Height="180" />
                            </a>
                            <asp:HyperLink NavigateUrl="navigateurl" runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' CssClass="Menu" />
                            </div>
                        </AlternatingItemTemplate>
                    </asp:DataList>
                </div>

            </div>
            <div class="col-md-2">

                <div style="border-bottom: 1px dashed #808080;">
                    <h4 style="">最新电影</h4>
                </div>
                <div>
                    <asp:DataList runat="server" ID="datal">
                        <ItemTemplate>
                            <div style="padding-top:15px;">
                            <asp:HyperLink NavigateUrl='<%# "WebInformationPage.aspx?id="+Eval("PictureNumber")%>' runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' />
                            </div>
                        </ItemTemplate>
                        <AlternatingItemTemplate>
                            <div style="padding-top:15px;">
                            <asp:HyperLink NavigateUrl='<%# "WebInformationPage.aspx?id="+Eval("PictureNumber")%>' runat="server" Text='<%# Eval("MovieName").ToString().Length>9?Eval("MovieName").ToString().Substring(0,8)+"..":Eval("MovieName") %>' />
                            </div>
                        </AlternatingItemTemplate>
                    </asp:DataList>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
