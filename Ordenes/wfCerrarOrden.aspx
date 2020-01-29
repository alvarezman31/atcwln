<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfCerrarOrden.aspx.cs" Inherits="AtcWln.Ordenes.wfCerrarOrden" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
    <div class="columnaCentro" style="width: 70%" align="center">    
        <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="lbOrdenTec" runat="server" Text="Empresa"></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtEmpresa" runat="server" Enabled="False" Width="201px"></asp:TextBox>
                </div>
        
        <br />
        <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtUsuario" runat="server" Height="22px" Width="165px" Enabled="False"></asp:TextBox>
                </div>

        <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="Label2" runat="server" Text="Técnico"></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtTecnico" name="TxtTecnico" runat="server" Enabled="False"></asp:TextBox>
                </div>


        
        
        <br />
        <h4 style="margin:10px;">Comentarios:</h4>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:TextBox ID="TxtComentario" runat="server"  TextMode="MultiLine" CssClass="TextMensaje" Width="90%" Height="400" ></asp:TextBox>

        <ajaxToolkit:HtmlEditorExtender ID="TxtComentario_HtmlEditorExtender" runat="server" BehaviorID="TxtComentario_HtmlEditorExtender" TargetControlID="TxtComentario" EnableSanitization="false">
        </ajaxToolkit:HtmlEditorExtender>

                 <div style="display: block; margin:10px; padding:10px;">    
                    <div style="display: inline-block; margin:10px; padding:10px;">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" OnLoad="FileUpload1_Load" onchange="this.form.submit()" Height="35px" Width="350px" />
                    </div>
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="140px" Width="170px" Visible="false"/>
                    <br />
                    <br />
                    <div style="display: inline-block; margin:10px; padding:10px;">
                        <asp:TextBox ID="TxtAdjuntos" runat="server" Height="70px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                    </div>
                </div>  
        <br />
        <asp:TextBox ID="TxtDetalleServicios" runat="server" TextMode="MultiLine" Height="74px" Width="347px" ></asp:TextBox>

        <div>
            <h5 style="margin:10px;">Enviar Respuesta a:</h5>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Bold="False" Font-Size="10pt">
            </asp:CheckBoxList>                         
        </div>        
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Enviar" CssClass="btn btn-success " />
        
        <br />
        <asp:Label ID="lbMensaje2" runat="server"></asp:Label>
    </div>
</div>
</asp:Content>
