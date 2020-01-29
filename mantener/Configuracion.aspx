<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs" Inherits="AtcWln.mantener.Configuracion" %>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript">
function mostrarPassBD(objeto1) {
   // alert("edeeee" + $('#<%= TxtPasswordBD.ClientID %>').get(0).type );
    if ($('#<%= TxtPasswordBD.ClientID %>').get(0).type == 'text') {
        document.getElementById('<%= TxtPasswordBD.ClientID %>').type = 'password';        
        document.getElementById("imagenPassBD").src="../images/mostrarPass.jpg";
    }
    else if ($('#<%= TxtPasswordBD.ClientID %>').get(0).type == 'password') {
        document.getElementById('<%= TxtPasswordBD.ClientID %>').type = 'text';
         document.getElementById("imagenPassBD").src="../images/ocultarPass.jpg";        
    }
    
}   
function mostrarPass(objeto1) {
   // alert("edeeee" + $('#<%= TxtPasswordBD.ClientID %>').get(0).type );
    if ($('#<%= TxtPassword.ClientID %>').get(0).type == 'text') {
        document.getElementById('<%= TxtPassword.ClientID %>').type = 'password';        
        document.getElementById("imagenPass").src="../images/mostrarPass.jpg";
    }
    else if ($('#<%= TxtPassword.ClientID %>').get(0).type == 'password') {
        document.getElementById('<%= TxtPassword.ClientID %>').type = 'text';
         document.getElementById("imagenPass").src="../images/ocultarPass.jpg";        
    }
    
}         
</script>    
        <div  class="divPesta2">          
            <div class="divPesta1">
                <asp:Button ID="Button1" runat="server" Text="Datos Enviar Email" CssClass="BtnPesta" OnClick="Button1_Click"/>
            </div>
            <div class="divPesta1">
                <asp:Button ID="Button2" runat="server" Text="Datos Conexión BD" CssClass="BtnPesta" OnClick="Button2_Click"/>
            </div>
           <!-- <div class="divPesta1">
                <asp:Button ID="Button3" runat="server" Text="Datos 3" CssClass="BtnPesta"/>
            </div>
            <div class="divPesta1">
                <asp:Button ID="Button4" runat="server" Text="Datos 4" CssClass="BtnPesta"/>
            </div>        -->
        </div>
    <div align="center" >
    <asp:MultiView ID="MultiView1" runat="server">
        
        <asp:View ID="View2" runat="server">            
    <div  class="divPesta">
        <div  >        
            <asp:Label ID="Label1" runat="server" Text="Host" ToolTip="Servidor SMTP" Width="100px"></asp:Label>
            <asp:TextBox ID="TxtSmtp" runat="server" ></asp:TextBox>
        </div>
        <div> 
        <asp:Label ID="Label2" runat="server" Text="Puerto" ToolTip="Puerto del Servidor SMTP" Width="100px"></asp:Label>    
            <asp:TextBox ID="TxtPuerto" runat="server"></asp:TextBox>
        </div>

    <div>        
        <asp:Label ID="Label3" runat="server" Text="From" ToolTip="Email del Cual se Enviaran los Correos" Width="100px"></asp:Label>
        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Password" ToolTip="Contraseña del Email de Salida" Width="100px"></asp:Label>
        <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:LinkButton ID="LinkButton1" CssClass="categoria" runat="server" OnClientClick="mostrarPass();return false;"><img id="imagenPass" src="../images/mostrarPass.jpg" style="width:30px;height:30px;"/></asp:LinkButton>                                  

    </div>
    
    <div>
        <asp:Button ID="BtnGuardar" runat="server" style="height: 26px;margin-bottom:15px;" Text="Guardar SMTP" OnClick="BtnGuardar_Click" CssClass="BtnPesta" ToolTip="Guarda Los Cambios"/>
    </div>
   </div>
    </asp:View>
    <asp:View ID="View1" runat="server">
<div  class="divPesta">
        <div>
        
        <asp:Label ID="Label5" runat="server" Text="Servidor" Width="100px"></asp:Label>
        <asp:TextBox ID="TxtServer" runat="server" ></asp:TextBox>
        </div>
        <div> 
        <asp:Label ID="Label6" runat="server" Text="Base de Datos" Width="100px"></asp:Label>    
            <asp:TextBox ID="TxtBase" runat="server"></asp:TextBox>
        </div>

    <div>        
        <asp:Label ID="Label7" runat="server" Text="Usuario" Width="100px"></asp:Label>
        <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label8" runat="server" Text="Password" Width="100px"></asp:Label>
        <asp:TextBox ID="TxtPasswordBD" runat="server" TextMode="Password" ></asp:TextBox>
        <asp:LinkButton ID="anterior" CssClass="categoria" runat="server" OnClientClick="mostrarPassBD();return false;"><img id="imagenPassBD" src="../images/mostrarPass.jpg" style="width:30px;height:30px;"/></asp:LinkButton>                                  
    </div>
    
    <div>
        <asp:Button ID="Button5" runat="server" style="height: 26px;margin-bottom:15px;" Text="Guadar Conexión" OnClick="Button5_Click" CssClass="BtnPesta" />
    </div>
   </div>

    </asp:View>
    </asp:MultiView>
</div> 
   
</asp:Content>
