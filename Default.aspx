﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AtcWln._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <script language="javascript">
 function show()
    {
        document.write("<head runat='server'></head>");
    }
</script>
    <div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="wfLogin.aspx" class="btn btn-primary btn-lg" style="display:none">Login &raquo;</a></p>
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <asp:TextBox ID="TextBox1" runat="server" Height="400" Width="500" ></asp:TextBox>
                <ajaxtoolkit:htmleditorextender ID="TextBox1_HtmlEditorExtender" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" TargetControlID="TextBox1" EnableSanitization="false">
                </ajaxtoolkit:htmleditorextender>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
            <a href="Default.aspx">Default.aspx</a>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
