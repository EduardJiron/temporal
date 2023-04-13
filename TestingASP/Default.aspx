<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestingASP._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-info dflex-all-center">
        <i class="fa-solid fa-table-columns fa-2xl"></i>
        <h2>Inicio</h2>
    </div>

    <div class="cleancode-data dflex-all-center br-default sh-default padd-default">
        <img class="cleancode-logo" src="assets/img/clean.png"/>
        <div class="cleancode-text">
            <h2>CleanCode</h2>
            <p>Presentación sobre patrones de diseño y creacional.</p>
        </div>
    </div>

    <div class="separator dflex-all-center mt-double">
        <h3 class="separator-text">Diseño:&nbsp;Decorator</h3>
        <span class="separator-line br-default"></span>
    </div>

    <div class="cleancode-members clean-deco br-default sh-default mt-default padd-default dflex-all-center">

    </div>
    
    <div class="separator dflex-all-center mt-double">
        <h3 class="separator-text">Creacional:&nbsp;Prototype</h3>
        <span class="separator-line br-default"></span>
    </div>

    <div class="cleancode-members clean-proto br-default sh-default mt-default padd-default dflex-all-center">

    </div>

    <script src="assets/script/members.js"></script>
</asp:Content>
