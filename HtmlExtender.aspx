<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HtmlExtender.aspx.cs" Inherits="HtmlEditor.HtmlExtender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Editor Html Extender</h1>
                <hr />
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:TextBox ID="TextBox1" runat="server" Height="400" Width="500" ></asp:TextBox>
                <ajaxtoolkit:htmleditorextender ID="TextBox1_HtmlEditorExtender" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" TargetControlID="TextBox1" EnableSanitization="false">
                </ajaxtoolkit:htmleditorextender>
                <hr />

                <hr />
            <div style="display: block; margin:10px; padding:10px;">
                 <asp:Button ID="Button3" runat="server" Text="Enviar" OnClick="Button3_Click"  CssClass="btn btn-success " style="height: 26px" />
            </div>


            </center>
        </div>
    </form>
</body>
</html>
