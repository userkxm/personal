<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="WebCensoringAndAdding.aspx.cs" Inherits="WebStatuaryHall.WebCensoringAndAdding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div style="text-align: center;">
            <b style="font-size: 30px;">
                <asp:Label Text="电影信息" runat="server" />
            </b>
        </div>
        <asp:GridView ID="dsSelect" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="MIID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MovieName" HeaderText="电影" SortExpression="MovieName" />
                <asp:BoundField DataField="Performer" HeaderText="演员" SortExpression="Performer" />
                <asp:BoundField DataField="Region" HeaderText="地区" SortExpression="Region" />
                <asp:BoundField DataField="ParticularYear" HeaderText="年份" SortExpression="ParticularYear" />
                <asp:BoundField DataField="UpdateDate" HeaderText="日期" SortExpression="UpdateDate" />
                <asp:BoundField DataField="PictureNumber" HeaderText="图片编号" SortExpression="PictureNumber" />
                <asp:BoundField DataField="StateNameID" HeaderText="类型编号" SortExpression="StateNameID" />
                <asp:BoundField DataField="LinkID" HeaderText="链接编号" SortExpression="LinkID" />
                <asp:BoundField DataField="Statname" HeaderText="状态编号" SortExpression="Statname" />
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" OnClientClick="return confirm('删除选中的数据?');" CommandName="Delete" Text="删除"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StatuaryHallConnectionString %>" SelectCommand="vw_selectMovieDesc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        
        //文件上传部分
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <div style="float: left">
            <asp:Button ID="btnUoload" Text="上传" runat="server" Width="100px" OnClick="btnUoload_Click" />

            <br />
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>  
    </form>
</asp:Content>
