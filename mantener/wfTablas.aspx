<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfTablas.aspx.cs" Inherits="AtcWln.mantener.wfTablas" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div align="center" > 
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/clientes.png" PostBackUrl="~/mantener/mantClientes.aspx" ToolTip="Mantenimiento de Clientes" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="lbClientes" runat="server" Text="Clientes" PostBackUrl="~/mantener/mantClientes.aspx" ToolTip="Mantenimiento de Clientes" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px; " >
            <div>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/dpto.png" PostBackUrl="~/mantener/mantDpto.aspx" ToolTip="Mantenimiento de Departamentos" Width="80px" Height="80px"  />
            </div>
            <div>
                <asp:Label ID="lbDpto" runat="server" Text="Departamentos" PostBackUrl="~/mantener/mantDpto.aspx" ToolTip="Mantenimiento de Departamentos" CssClass="lblMenus"></asp:Label>
            </div>
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/grupos.png" PostBackUrl="~/mantener/mantGrupo.aspx" ToolTip="Mantenimiento de Grupo de Servicios" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="LbGrupo" runat="server" Text="Grupos" PostBackUrl="~/mantener/mantGrupos.aspx" ToolTip="Mantenimiento de Grupos de Servicios" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/subgrupo.png" PostBackUrl="~/mantener/mantSubgrupo.aspx" ToolTip="Mantenimiento de Sub-Grupo de Servicios" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="LbSubGrupo" runat="server" Text="SubGrupos" PostBackUrl="~/mantener/mantSubgrupos.aspx" ToolTip="Mantenimiento de Grupos de Servicios" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/canales.png" PostBackUrl="~/mantener/mantCanales.aspx" ToolTip="Mantenimiento de Canales de Comunicación" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="Label1" runat="server" Text="Canales" PostBackUrl="~/mantener/mantCanales.aspx" ToolTip="Mantenimiento de Canales de Comunicación" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/servicios.png" PostBackUrl="~/mantener/mantServicios.aspx" ToolTip="Mantenimiento de Servicios" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="Label2" runat="server" Text="Servicios" PostBackUrl="~/mantener/mantServicios.aspx" ToolTip="Mantenimiento de Servicios" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/tecnicos.png" PostBackUrl="~/mantener/mantTecnicos.aspx" ToolTip="Mantenimiento de Técnicos" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="Label3" runat="server" Text="Consultores" PostBackUrl="~/mantener/mantTecnicos.aspx" ToolTip="Mantenimiento de Técnicos" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
        <div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/usuarios.jpg" PostBackUrl="~/mantener/mantUsuarios.aspx" ToolTip="Mantenimiento de Usuarios" Width="80px" Height="80px" />
            </div >
            <div >
                <asp:Label ID="Label4" runat="server" Text="Usuarios" PostBackUrl="~/mantener/mantUsuarios.aspx" ToolTip="Mantenimiento de Usuarios" CssClass="lblMenus"></asp:Label>
            </div >
        </div>
    </div>

</asp:Content>
