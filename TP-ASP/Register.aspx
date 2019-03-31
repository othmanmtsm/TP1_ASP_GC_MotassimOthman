<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        input{
            width:100%;
            border: none;
            padding:20px;
            border-bottom:2px dashed #ccc;
        }
        .btn-primary{
            cursor:pointer;
            margin-top:10px;
        }
        input:focus{
            outline:none;
            border-bottom:2px dashed #1A73E8;
        }
        form{
            padding: 100px 0px 100px 0px;
        }
        .spanElement{
            color:red;
        }
        #hdr { 
           height:100%;
           background-image: url("images/45.jpg");
           background-repeat:no-repeat;
           background-size:cover;
           text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="header" Runat="Server">
    <section id="hdr">
        <div class="container">
            <div class="row" style="margin-top:25%;">
                <div class="col-6 mx-auto">
                    <h1>ANTIMICROBIAL RESISTANCE</h1>
                    <h3>Register Now</h3>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cBody" Runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-6 mx-auto">
                 <form id="form1" runat="server">
                    <div id="registerContent">
		                <div id="RegisterAccount">
			                <h2> Register now and get your invitation </h2>
                            <asp:TextBox ID="email" CssClass="inputs" runat="server" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="please enter your email" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="incorrect email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="spanElement" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="cmail" CssClass="inputs" runat="server" placeholder="Confirm Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cmail" ErrorMessage="please confirm your email" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="email" ControlToValidate="cmail" ErrorMessage="incorrect email" CssClass="spanElement" Display="Dynamic"></asp:CompareValidator>
                            <asp:TextBox ID="fname" CssClass="inputs" runat="server" placeholder="Full name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="fname" ErrorMessage="please enter your email" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="pass" CssClass="inputs" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pass" ErrorMessage="please enter your password" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="pass" ErrorMessage="min 8 lowercase and uppercase characters, numbers, special characters" ValidationExpression="^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*\W).{8,}$" CssClass="spanElement" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="cpass" CssClass="inputs" runat="server" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="cpass" ErrorMessage="please confirm your password" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pass" ControlToValidate="cpass" ErrorMessage="wrong password" CssClass="spanElement" Display="Dynamic"></asp:CompareValidator>
                            <asp:TextBox ID="tel" CssClass="inputs" runat="server" placeholder="Phone number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tel" ErrorMessage="please enter your phone number" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tel" ErrorMessage="invalid number" ValidationExpression="([+]|[00])([1-250]{1,3})([0-9]{9})" CssClass="spanElement" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:TextBox ID="job" CssClass="inputs" runat="server" placeholder="Main job"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="job" ErrorMessage="please enter your job" CssClass="spanElement" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:Button ID="register" CssClass="btn-primary" runat="server" Text="Register" OnClick="register_Click" />
                        </div>
	                </div>
                 </form>
            </div>
        </div>
    </div>
</asp:Content>

