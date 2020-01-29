<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfLogin.aspx.cs" Inherits="AtcWln.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <div align="center" style="border: 0px solid;"> 

            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <img alt="" src="images/login.png" style="width: 179px; height: 128px" />
                </div>
            </div>
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    
                </div>
            </div>
        </div>
    
    <div align="center" > 

            <div style="display: inline-block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label runat="server" Text="Usuario: " ID="lbNombre" Font-Bold="True" Font-Names="12" Font-Size="12pt" ></asp:Label>
                </div>
                <div >
                    <asp:TextBox ID="txtRut" runat="server" MaxLength="10" ToolTip="Ingrese Rut" CausesValidation="True" style="margin-bottom: 0"></asp:TextBox>                    
                </div>
                <div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRut" CssClass="btn-danger" Display="Dynamic" ErrorMessage="Campo Usuario no puede estar Vacio" ForeColor="#0000CC" Width="241px"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div style="display: inline-block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label runat="server" Text="Contraseña: " ID="Label1" Font-Bold="True" Font-Names="12" CausesValidation="True" ></asp:Label>                    
                </div>
                <div>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ToolTip="Ingrese Contraseña" MaxLength="10" CausesValidation="True" AutoPostBack="True" OnTextChanged="Button2_Click"  ></asp:TextBox>                              
                </div>
                <div >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" CssClass="btn-danger" Display="Dynamic" ErrorMessage="Campo Contraseña no puede estar Vacio" ForeColor="#0000CC" Width="268px"></asp:RequiredFieldValidator>                    
                </div>
            </div>
        </div>
    
        <div align="center" > 
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label ID="lbEstado" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="Red" Text="Label" visible="false"></asp:Label>                    
                </div>
            </div>            
        </div>
    
        <div align="center" > 
            <div style="display: inline-block; margin:15px; padding:15px;border:0px solid;" >
                <div >
                     <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Iniciar Sesión" Width="130px" Height="48px" CssClass="BtnPesta" />
                </div>
            </div>
        </div>
    
</asp:Content>