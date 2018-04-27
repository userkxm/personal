<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="WebInformationPage.aspx.cs" Inherits="WebStatuaryHall.WebInformationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <%--        <div style="border: 1px solid #808080">
            <div style="border-bottom: 1px dashed #808080">
                <asp:SiteMapPath runat="server"></asp:SiteMapPath>

            </div>--%>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <asp:Image ID="imgName" ImageUrl="imageurl" runat="server" Width="300" Height="100%" />
                </div>
                <div class="col-md-9" >
                    <div class="row"  style="padding:20px;">
                        <div class="col-xs-9">
                            影片名称：<asp:Label ID="Name" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            影片状态：<asp:Label ID="Statnames" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row"  style="padding:20px;">
                        <div class="col-md-9">
                            影片分类：<asp:Label ID="StatenameIDs" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            主要演员：<asp:Label ID="Performers" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row"  style="padding:20px;">
                        <div class="col-md-9">
                            影片地区：<asp:Label ID="Regions" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            播出年份：<asp:Label ID="Particularyears" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row" style="padding:20px;">
                        <div class="col-md-9">
                            更新日期：<asp:Label ID="updatedates" Text="text" runat="server" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-9">
                            剧情介绍：<asp:Label ID="plotintroductions" Text="text" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="border: 1px solid #808080; margin: 10px; height: 100px">
            <div style="border-bottom: 1px solid #808080; height: 20px; margin-top: 6px;">
                <span style="vertical-align: middle;">&nbsp;下载主线路-1（请大家使用主线路下载电影，速度超级快!请用迅雷!）</span>
            </div>
            <div style="margin-top: 8px; margin-left: 15px">
                <asp:Label ID="ThunderboltLinks" Text="text" runat="server" /><br />
            </div>
            <div style="margin-top: 10px; margin-left: 15px">
                <asp:Button ID="textButton1" Text="复制链接" runat="server" Height="25" OnClick="textButton1_Click" />&nbsp
                <asp:Button Text="迅雷下载" runat="server" Height="25" />
            </div>
        </div>
        <div>
        </div>
        <div style="border: 1px solid #808080; margin: 10px; height: 80px;">
            <div style="height: 25px; border-bottom: 1px solid #808080; margin-top: 8px; background-color: #c3c1c1">&nbsp;百度网盘分享</div>
            <div style="margin-top: 8px; margin-left: 15px">
                <asp:Label Text="百度网盘 链接：" runat="server" /><asp:Label ID="BSLs" Text="text" runat="server" />&nbsp;&nbsp
                密码：<asp:Label ID="SDLPs" Text="text" runat="server" />&nbsp
                <asp:Button Text="复制密码" runat="server" Height="25px" OnClick="Unnamed3_Click" />
            </div>
        </div>
        <div>
        </div>

    </form>
</asp:Content>
