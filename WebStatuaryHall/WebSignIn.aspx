<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="WebSignIn.aspx.cs" Inherits="WebStatuaryHall.WebSignIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6" style="text-align:center;">
            <form runat="server" style="max-width:400px;">
                <div style="text-align: center">
                    <img class="mb-4" src="img/pjdy.png" alt="" width="360" height="160" />
                    <h1 class="h3 mb-3 font-weight-normal">请登录</h1>

                    <asp:TextBox ID="txtName" runat="server" placeholder="账号" Width="360" Height="35" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="账号不能为空">*</asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtPwd" runat="server" placeholder="密码" Width="360" Height="35" TextMode="Password" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="账号不能为空">*</asp:RequiredFieldValidator>

                    <br />
                    <br />
                    <asp:Button Text="登录" runat="server" Width="320" Height="35" OnClick="Unnamed1_Click" /><br />
                    <br />
                        <a style="float:left" href="WebRegister.aspx">没有账号？点击注册</a>

                        <a style="float:right" href="WebPasswordRetrieval.aspx">忘记密码？</a>
                    <br />

                    <span>
                        <asp:Label ID="lblmsg" Text="" runat="server" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </span>
                </div>
            </form>
                </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
