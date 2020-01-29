<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="mantDpto.aspx.cs" Inherits="AtcWln.mantener.mantDpto" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="Content1"  >
    <asp:MultiView ID="MultiView1" runat="server" >
        <asp:View ID="vwDatos" runat="server">
             <div   align="center" >  
             <!-- <div class="div" style="display: inline-block; " >-->
                <asp:ImageButton ID="IBnuevo" runat="server" ImageUrl="~/images/agregar2.png" ToolTip="Agregar Cliente" CssClass="margin10 width50 height50 " OnClick="IBnuevo_Click"  />
                        
                <asp:ImageButton ID="IBmodifica" runat="server"  ImageUrl="~/images/editar2.png" ToolTip="Editar Registro" CssClass="margin10 width50 height50 " OnClick="IBmodifica_Click" />
                        
                <asp:ImageButton ID="IBeliminar" runat="server" ImageUrl="~/images/eliminar2.PNG"   CssClass="margin10 width50 height50 " OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" OnClick="IBeliminar_Click" />
                        
                <asp:ImageButton ID="IBsalvar" runat="server" ImageUrl="~/images/guardar.png" ToolTip="Salvar los Cambios"   Visible="False" CssClass="margin10 width50 height50 " OnClick="IBsalvar_Click"/>
                        
                 <asp:ImageButton ID="IBsalvarMod" runat="server" CssClass="margin10 width50 height50 " ImageUrl="~/images/guardar.png" ToolTip="Salvar los Cambios Editados" Visible="False" OnClick="IBsalvarMod_Click" />
                        
                <asp:ImageButton ID="IBcancelar" runat="server" ImageUrl="~/images/cancelar.png" ToolTip="Cancelar Actualización"   CssClass="margin10 width50 height50 " Visible="False" OnClick="IBcancelar_Click"/>
                        
                <asp:ImageButton ID="IBlista" runat="server"  ImageUrl="~/images/buscar.png" ToolTip="Mostrar Listado de Clientes"  CssClass="margin10 width50 height50 " OnClick="IBlista_Click" EnableTheming="True"/>
                
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/regresar.png" ToolTip="Regresar" PostBackUrl="~/mantener/wfTablas.aspx" CssClass="margin10 width50 height50 "/>

            
                
            </div>
            <br />
             &nbsp;&nbsp;
             <br />

            <div align="center" > 

            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                   <div >
                    <asp:Label ID="LbOpcion" runat="server" Text="Departamentos"  Font-Bold="True" Font-Size="12pt" BorderColor="#0033CC" ></asp:Label>
                </div>
                <div >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/dpto.png" Height="150px" Width="150px" />
                </div>
            </div>
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label ID="lbMensaje2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="12pt" BorderColor="#0033CC"></asp:Label>
                </div>
            </div>
        </div>
            
        <div align="center" > 

            <div style="display: block; margin:0px; padding:0px;border:0px solid;" >
                <div >
                    <asp:Label ID="Lbusuario" runat="server" Text="ID" ></asp:Label>
                </div>
            </div>
            <div style="display: block; margin:0px; padding:5px;border:0px solid;" >
                <div >
                    <asp:TextBox ID="txtID" runat="server" Width="220px" AutoPostBack="True" required OnTextChanged="txtID_TextChanged" ></asp:TextBox>
                </div>
            </div>
        </div>
            

        <div align="center" > 
            <div style="display: block; margin:0px; padding:0px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbContrase" runat="server" Text="Descripción" ></asp:Label>
                </div>
            </div>
            <div style="display: block; margin:0px; padding:0px;border:0px solid;" >
                <div >
                    <asp:TextBox ID="txtDescripcion" runat="server" Width="220px" required ></asp:TextBox>
                </div>
            </div>
        </div>            

       
        </asp:View>
        <asp:View ID="vwLista" runat="server">.
            
<br/>

            <div align="center"  style="border:0px solid;margin:auto;"> 
                <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                    <div >
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/dpto.png" Height="100px" Width="100px" />
                    </div>
                    <div >
                        <asp:Label ID="lbServicios1" runat="server" Text="Departamentos" ></asp:Label>
                    </div>     
                </div>
            </div>
            <div    align="center"  style="margin-bottom:20px;">  
             <!-- <div class="div" style="display: inline-block; " >-->
                <asp:Label ID="Label4" runat="server" Text="Buscar por Descripción:"></asp:Label>
                <asp:TextBox ID="txtBuscarDescripcion" runat="server" AutoPostBack="True" OnTextChanged="txtBuscarDescripcion_TextChanged"  ></asp:TextBox>                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                
                <asp:ImageButton ID="IBRegresar" runat="server" Height="33px" ImageUrl="~/images/regresar.png"  ToolTip="Regresar" Width="85px" OnClick="IBRegresar_Click"  />    
            </div>
            <div align="center"  style="border:0px solid;margin:auto;"> 
        
           <!-- <div style="display: inline-block; margin:10px; padding:10px; border:1px solid;" >
                <div style="display:inline-block; float:left; margin:10px; padding:10px;border:1px solid; " >
                    <asp:Label ID="Label3" runat="server" Text="Buscar por Descripción:"></asp:Label><br />
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="txtBuscarDescripcion_TextChanged"  ></asp:TextBox>                
                </div>
                <div style="display: inline-block; float:right; margin:10px; padding:10px;border:1px solid; " >
                <asp:ImageButton ID="ImageButton1" runat="server" Height="33px" ImageUrl="~/images/regresar.png"  ToolTip="Regresar" Width="85px" />    
                </div> -->
                <div style="display:inline-block;  margin:10px; padding:10px;border:2px solid; " >
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"  >
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td style="width: 163px">ID</td>
                                <td class="modal-sm" style="color: white; width: 433px;">Descripción</td>
                                <td style="color: white">Seleccionar</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="text-left">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>' Width="150px"></asp:Label>
                                </td>
                                <td class="text-left">
                                    <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("descripcion") %>' Width="400px"></asp:Label>
                                </td>
                                <td>
                                    <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/seleccion.png" Width="40px" OnClick="Image2_Click"  />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataList>
                    </div>
                <br />
        
        

            <br />
            <br />
                
        </asp:View>
        </asp:MultiView>
        
     </div>
</asp:Content>


            