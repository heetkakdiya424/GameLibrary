﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="gamecantant.aspx.cs" Inherits="WebApplication8.gamecantant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="gamecantant/m.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="section hero" id="home" aria-label="home"
  style="background-image: url('hero-b.jpg')">
  <div class="container">

    <div class="hero-content">

      <p class="hero-subtitle">HK Gaming</p>

      <h1 class="h1 hero-title">
            
           ASSASSIN'S <span class="span">CREED&nbsp;</span>VALHALLA
      </h1>

      <p class="hero-text">
          a Viking raider raised to be a fearless warrior, 
          and lead your clan from icy desolation in Norway to a new home amid 
          the lush farmlands of ninth-century England. Find your settlement and 
          conquer this hostile land by any means to earn a place in Valhalla.
      </p>

      <button id="btnSave" runat="server" class="btn skewBg" onserverclick="doIt">Read More</button>&nbsp;
      <button id="Button1" runat="server" class="btn skewBg" onserverclick="dwd">Download Here</button>&nbsp;
        <button id="Button" runat="server" class="btn skewBg">How To Download</button>
    </div>

    <figure class="hero-banner img-holder" style="--width: 700; --height: 700;">
      <img src="gamecantant/logo-assassins-creed-valhalla-.jpg" width="700" height="700" alt="hero banner" class="w-100">
    </figure>

  </div>
</section>
        </div>
    </form>
</body>
</html>
</asp:Content>
