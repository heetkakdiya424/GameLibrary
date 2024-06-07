<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication8.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <head>
        <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="login/css/style.css">
    </head>
    <body>
        <form id="form1" runat="server">
        <div class="main">

        <section class="sign-in">
        <div class="container">
            <div class="signin-content">
                <div class="signin-image">
                    <figure><img src="login/images/signup-image.jpg" alt="sing up image"></figure>
                    <a href="signup.aspx" class="signup-image-link">Create an account</a>
                </div>

                <div class="signin-form">
                    <h2 class="form-title">Log in</h2>
                    <form method="POST" class="register-form" id="login-form">
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <asp:TextBox ID="txtlemail" placeholder="Email addrres" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your Email" ControlToValidate="txtlemail"></asp:RequiredFieldValidator>
                            
                        </div>
                        <div class="form-group">
                            <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>                            
                            <asp:TextBox ID="txtlpass"  placeholder="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your Password" ControlToValidate="txtlpass"></asp:RequiredFieldValidator>

                        </div>
                        
                        <div class="form-group form-button">
                            
                            <asp:Button ID="Button1" runat="server"  class="form-submit" Text="Log in" OnClick="Button1_Click" />
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
    </body>
</asp:Content>
