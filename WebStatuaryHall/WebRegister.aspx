<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="WebRegister.aspx.cs" Inherits="WebStatuaryHall.WebRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <form runat="server" style="max-width: 400px; text-align: center;">
                    <img class="mb-4" src="img/pjdy.png" alt="" width="360" height="160" />
                    <h1 class="h3 mb-3 font-weight-normal">注册</h1>
                    <p>
                        <asp:TextBox ID="Name" placeholder="昵称" runat="server" Width="360" Height="35" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:TextBox ID="loginname" placeholder="用户名" runat="server" Width="360" Height="35" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="loginname" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                    </p>
                    <asp:TextBox ID="pwd" runat="server" placeholder="密码" Width="360" Height="35" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pwd" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                    <p style="margin-top:15px;">
                        <asp:TextBox ID="txtpwd" runat="server" placeholder="重复密码" Width="360" Height="35" TextMode="Password" />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwd" ControlToValidate="txtpwd" ErrorMessage="密码不一致">*</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpwd" ErrorMessage="不能为空">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Button Text="注册" runat="server" Width="235" Height="30" OnClick="Unnamed1_Click" />
                    </p>
                    <a style="float: right" href="WebSignIn.aspx">已有账号？点击登录</a>
                    <p>
                        <asp:Label ID="lblmsg" Text="" runat="server" />
                    </p>

                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</asp:Content>
