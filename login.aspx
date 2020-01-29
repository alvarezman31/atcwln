<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AtcWln.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="menuContextual" runat="server">
    <ul>
        <li>Prueba</li>
        <li>Prueba2</li>
        <li>Prueba3</li>
    </ul>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div align="center" class="text-center Content1"  > 
    

        <div style="display: inline-block; margin:10px; padding:10px;" >
             <div style="display: inline-block; margin:10px; padding:10px; " >
        <table class="nav-justified" style="width: 573px;" >
            <tr>
                <td rowspan="6" style="width: 124px">
        <img alt="" src="images/login.png" style="width: 179px; height: 128px" /></td>
                <td class="text-right" style="width: 124px; height: 20px; margin-left: 40px;">
             <asp:Label runat="server" Text="Usuario: " ID="lbNombre" Font-Bold="True" Font-Names="12" Font-Size="12pt" ></asp:Label>
                </td>
                <td style="height: 20px; width: 125px;" class="text-left">
            <asp:TextBox ID="txtRut" runat="server" MaxLength="10" ToolTip="Ingrese Rut" CausesValidation="True"     ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 124px; height: 20px; margin-left: 40px;">
                </td>
                <td style="height: 21px; width: 125px;" class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRut" CssClass="btn-danger" Display="Dynamic" ErrorMessage="Campo Usuario no puede estar Vacio" ForeColor="#0000CC" Width="241px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 124px; margin-left: 40px;">   
             <asp:Label runat="server" Text="Contraseña: " ID="Label1" Font-Bold="True" Font-Names="12" CausesValidation="True" ></asp:Label>
                </td>
                <td style="width: 125px" class="text-left">
             <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Ingrese Contraseña" MaxLength="10" CausesValidation="True"  ></asp:TextBox>                              
                </td>
            </tr>
            <tr>
                <td class="text-right" style="width: 124px; margin-left: 40px;">   
                    &nbsp;</td>
                <td style="width: 125px" class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="btn-danger active" Display="Dynamic" ErrorMessage="Campo Contraseña no puede estar Vacio" ForeColor="#0000CC" Width="268px"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Label ID="lbEstado" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Red" Text="Label" visible="false"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 124px">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Iniciar Sesión" Width="100px" />
                </td>
                <td style="width: 125px">
            
             <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default.aspx" Text="Cancelar" Width="100px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
   </div>
    <br />
    </div>





</asp:Content>
