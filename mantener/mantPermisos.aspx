<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="mantPermisos.aspx.cs" Inherits="AtcWln.mantener.mantPermisos" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div style="display:inline-block;width:40%;float:left;">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="opciones" runat="server">
            <div align="center" > 
                <div style="display: inline-block; margin:10px; padding:10px;" >
                    <div >
                          <asp:CheckBox ID="menuTablas" Text="Tablas" CssClass="checkbox-inline" runat="server"      OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="True" />
                          <asp:CheckBox ID="menuSolicitud" Text="Solicitud" CssClass="checkbox-inline disabled" runat="server"      />
                          <asp:CheckBox ID="menuAjustes" Text="Ajustes" CssClass="checkbox-inline" runat="server"     OnCheckedChanged="CheckBox3_CheckedChanged" AutoPostBack="True" />
                          <asp:CheckBox ID="menuPerimsos" Text="Permisos" CssClass="checkbox-inline" runat="server"      />
                    </div>
                </div>
            </div>
        </asp:View>
        

    </asp:MultiView>
</div>    

<div style="display:inline-block;width:40%;">
    <asp:MultiView ID="MVOpciones" runat="server">
        <asp:View ID="View1" runat="server">
            <div align="center" > 
                <div  align="center"  style="margin-bottom:20px;">
                    <asp:Label ID="lbMVtablas" runat="server" Text="Tablas - Opciones "></asp:Label>
                </div>
            </div>             
             <div align="center" > 
                 <div align="center"  style="margin-bottom:20px;">               
                    <asp:ImageButton ID="IBRegresar" runat="server" Height="33px" ImageUrl="~/images/regresar.png"  ToolTip="Regresar" Width="85px" OnClick="IBRegresar_Click"  />    
                </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/clientes.png"  ToolTip="Mantenimiento de Clientes" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="lbClientes" runat="server" Text="Clientes"  ToolTip="Mantenimiento de Clientes" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px; " >
                        <div>
                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/dpto.png"  ToolTip="Mantenimiento de Departamentos" Width="80px" Height="80px"  />
                        </div>
                        <div>
                            <asp:Label ID="lbDpto" runat="server" Text="Departamentos"  ToolTip="Mantenimiento de Departamentos" CssClass="lblMenus"></asp:Label>
                        </div>
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/grupos.png"  ToolTip="Mantenimiento de Grupo de Servicios" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="LbGrupo" runat="server" Text="Grupos"   ToolTip="Mantenimiento de Grupos de Servicios" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/subgrupo.png"   ToolTip="Mantenimiento de Sub-Grupo de Servicios" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="LbSubGrupo" runat="server" Text="SubGrupos"  ToolTip="Mantenimiento de Grupos de Servicios" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/canales.png"  ToolTip="Mantenimiento de Canales de Comunicación" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="Label1" runat="server" Text="Canales"   ToolTip="Mantenimiento de Canales de Comunicación" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/servicios.png"   ToolTip="Mantenimiento de Servicios" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="Label2" runat="server" Text="Servicios"   ToolTip="Mantenimiento de Servicios" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/tecnicos.png"  ToolTip="Mantenimiento de Técnicos" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="Label3" runat="server" Text="Consultores" ToolTip="Mantenimiento de Técnicos" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/usuarios.jpg"  ToolTip="Mantenimiento de Usuarios" Width="80px" Height="80px" />
                        </div >
                        <div >
                            <asp:Label ID="Label4" runat="server" Text="Usuarios"   ToolTip="Mantenimiento de Usuarios" CssClass="lblMenus"></asp:Label>
                        </div >
                    </div>
                </div>
        </asp:View>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:View ID="ajustes" runat="server">
            <div align="center"  style="margin-bottom:20px;">
                <asp:Label ID="Label5" runat="server" Text="Ajustes - Opciones "></asp:Label>
            </div>            
            <div align="center" > 
                 <div    align="center"  style="margin-bottom:20px;">               
                    <asp:ImageButton ID="IBRegresarAjustes" runat="server" Height="33px" ImageUrl="~/images/regresar.png"  ToolTip="Regresar" Width="85px" OnClick="IBRegresarAjustes_Click"  />    
                </div>
                <div class="divPesta1">
                    <asp:Button ID="Button1" runat="server" Text="Datos Enviar Email" CssClass="BtnPesta" />
                </div>
                <div class="divPesta1">
                    <asp:Button ID="Button2" runat="server" Text="Datos Conexión BD" CssClass="BtnPesta" />
                </div>
            </div>
        </asp:View>

    </asp:MultiView>
</div>
    

    
</asp:Content>
