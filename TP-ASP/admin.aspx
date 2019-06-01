<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cBody" Runat="Server">
     <div class="container">
    <div class="row">
        <form runat="server" class="col-8 mb-5 mt-5 mx-auto" action="#" method="post">
        <h5>Login</h5>
        <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="False">
            <asp:Literal ID="Msg" runat="server"></asp:Literal>
        </asp:PlaceHolder>
            <label>Username *<br/>
                <asp:TextBox ID="txtName" name="username" placeholder="Username" runat="server" class="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your email" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </label>
            <label>Password *<br/>
                <asp:TextBox class="form-control" ID="txtPassword" type="password" name="password" placeholder="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter your password" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator3" runat="server" ErrorMessage="invalid password, must contain at least 8 upper and lower case" ControlToValidate="txtPassword" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"></asp:RegularExpressionValidator>
            </label>
            <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-info btn-block" OnClick="Button1_Click" />
      </form>
    </div>
</div>
</asp:Content>

