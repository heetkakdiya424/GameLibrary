<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication8.signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.css">
    <link rel="stylesheet" href="login/css/style.css">
    <style type="text/css">
        .auto-style1 {
            display:block;
            flex-direction: column;
            width: 620px;   
            height: 611px;
            padding: 75px 0;
            margin-left: 90px;
        }
        </style>
    </head>
    <body>
    <form id="form1" runat="server">
    <div class="main">
        <section class="signup">
            <div class="container">
            <div class="auto-style4">

                <div class="auto-style1" style="flex-wrap: wrap; flex-direction: column; align-content: space-around;">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        </div>
                            <div class="form-group" style="">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>                                
                                <asp:TextBox ID="txtname" placeholder="Your Name" runat="server"></asp:TextBox>                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter the Name" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <asp:TextBox ID="txtemail" placeholder="Your Email" runat="server" TextMode="Email"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the Email" ControlToValidate="txtemail" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox ID="txtpass" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>                               
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter the password" ControlToValidate="txtpass" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="* Password must contain  minimum 8 characters , 1 letter, 1 number" ForeColor="Black" SetFocusOnError="True" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <asp:TextBox ID="txtre_pass" placeholder="Repeat your password" runat="server" TextMode="Password"></asp:TextBox>                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter the password" ControlToValidate="txtre_pass" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtre_pass" ErrorMessage="* Passwords do not match" ForeColor="Black" SetFocusOnError="True"></asp:CompareValidator>
                            </div>

                            <div class="form-group form-button" style="left: 0px; top: 0px; height: 144px">
                                
                                <asp:Button ID="Button2"  class="form-submit" runat="server" Text="Register" OnClick="Button2_Click" />                                
                            </div>
                        </form>
                    </div>
                        
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="login/vendor/jquery/jquery.min.js"></script>
    <script src="login/js/main.js"></script>
    </form>
</asp:Content>
