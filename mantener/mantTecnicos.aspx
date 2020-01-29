<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="mantTecnicos.aspx.cs" Inherits="AtcWln.mantener.mantTecnicos" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="vwDatos" runat="server">
             <div   align="center" >  
             <!-- <div class="div" style="display: inline-block; " >-->
                <asp:ImageButton ID="IBnuevo" runat="server" ImageUrl="~/images/agregar2.png" ToolTip="Agregar Cliente" CssClass="margin10 width50 height50 " OnClick="IBnuevo_Click" />
                        
                <asp:ImageButton ID="IBmodifica" runat="server"  ImageUrl="~/images/editar2.png" ToolTip="Editar Registro" CssClass="margin10 width50 height50 " OnClick="IBmodifica_Click"  />
                        
                <asp:ImageButton ID="IBeliminar" runat="server" ImageUrl="~/images/eliminar2.PNG"   CssClass="margin10 width50 height50 " OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" OnClick="IBeliminar_Click"  />
                        
                <asp:ImageButton ID="IBsalvar" runat="server" ImageUrl="~/images/guardar.png" ToolTip="Salvar los Cambios"  Visible="False" CssClass="margin10 width50 height50 " OnClick="IBsalvar_Click"/>
                        
                 <asp:ImageButton ID="IBsalvarMod" runat="server" CssClass="margin10 width50 height50 " ImageUrl="~/images/guardar.png"   ToolTip="Salvar los Cambios Editados" Visible="False" OnClick="IBsalvarMod_Click1" />
                        
                <asp:ImageButton ID="IBcancelar" runat="server" ImageUrl="~/images/cancelar.png" ToolTip="Cancelar Actualización"   CssClass="margin10 width50 height50 "   Visible="False" OnClick="IBcancelar_Click"/>
                        
                <asp:ImageButton ID="IBlista" runat="server"  ImageUrl="~/images/buscar.png"   ToolTip="Mostrar Listado de Clientes"  CssClass="margin10 width50 height50 " OnClick="IBlista_Click"/>

                <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/images/regresar.png"  ToolTip="Regresar"  PostBackUrl="~/mantener/wfTablas.aspx" CssClass="margin10 width50 height50 "/>                
            </div>
            
            
        <div align="center" > 

            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label ID="lbMensaje2" runat="server" Text="Label" Visible="False" Font-Bold="True" Font-Size="12pt" BorderColor="#0033CC"></asp:Label>
                </div>
            </div>
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbOpcion" runat="server" Text="Consultores"  Font-Bold="True" Font-Size="12pt" BorderColor="#0033CC" ></asp:Label>
                </div>
                <div >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/tecnicos.png" Height="100px" Width="100px" />
                </div>
            </div>
        </div>
          <div align="center" >
             <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div >
                    <asp:Label ID="lbMensaje" runat="server" Font-Bold="True" Font-Size="12pt" ForeColor="#0066FF" Text="Label" Visible="False"></asp:Label>
                </div>
            </div>
          </div>
          <br />
            
                <div align="center" >         
                     <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="LbRut" runat="server" Text="Rut:"></asp:Label>
                        </div >
                        <div style="display: inline-block; ">
                            <asp:TextBox ID="txtRut" runat="server" Width="122px" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" required Height="21px"></asp:TextBox>                            
                        </div >
                         <div  style="display: inline-block; margin:2px;">
                            <asp:Label ID="Label13" runat="server" Text="-"></asp:Label>
                        </div >
                         <div style="display: inline-block;">
                            <asp:TextBox ID="TxtValidador" runat="server" Width="30px"  Enabled="false" ></asp:TextBox>                            
                        </div >
                    </div>
                    
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            Nombres</div >
                        <div >
                            <asp:TextBox ID="txtNombre" runat="server" Width="220px" required></asp:TextBox>
                        </div >
                    </div>
                     <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >     
                            Cargo</div>
                        <div >
                            <asp:TextBox ID="txtCargo" runat="server" Width="220px" required></asp:TextBox>
                        </div>
                    </div>
                </div>
             <br />

             <br />
             <br />

             
            <div align="center" > 
                <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="Label12" runat="server" Text="Email:"></asp:Label>
                        </div >
                        <div >
                            <asp:TextBox ID="txtEmail" runat="server" Width="220px" required TextMode="Email"></asp:TextBox>
                
                        </div >
                    </div>
            <div style="display: inline-block; margin:10px; padding:10px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbCampo1" runat="server" Text="Adicional 01" ></asp:Label>
                </div>            
                <div >
                    <asp:TextBox ID="TxtCampo1" runat="server" MaxLength="50"   Width="220px"  ></asp:TextBox>
                </div>
            </div>
             <div style="display: inline-block; margin:10px; padding:10px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbCampo2" runat="server" Text="Adicional 02" ></asp:Label>
                </div>            
                <div >
                    <asp:TextBox ID="TxtCampo2" runat="server" Width="220px" MaxLength="50"  ></asp:TextBox>
                </div>
            </div>
        </div>
            <br/>
            <br/>
            <br/>

        <div align="center" > 

            <div style="display: inline-block; margin:10px; padding:10px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbCampo3" runat="server" Text="Adicional 03" ></asp:Label>
                </div>            
                <div >
                    <asp:TextBox ID="TxtCampo3" runat="server" MaxLength="50"   Width="220px"  ></asp:TextBox>
                </div>
            </div>
             <div style="display: inline-block; margin:10px; padding:10px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbCampo4" runat="server" Text="Adicional 04" ></asp:Label>
                </div>            
                <div >
                    <asp:TextBox ID="TxtCampo4" runat="server" Width="220px" MaxLength="50"  ></asp:TextBox>
                </div>
            </div>
            <div style="display: inline-block; margin:10px; padding:10px;border:0px solid;" >
                <div >
                    <asp:Label ID="LbCampo5" runat="server" Text="Adicional 05" ></asp:Label>
                </div>            
                <div >
                    <asp:TextBox ID="TxtCampo5" runat="server" Width="220px" MaxLength="50"  ></asp:TextBox>
                </div>
            </div>
        </div>

        </asp:View>
        <asp:View ID="vwLista" runat="server">

            <div align="center"  style="border:0px solid;margin:auto;"> 
                <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                    <div >
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/tecnicos.png" Height="100px" Width="100px" />
                    </div>
                    <div >
                        <asp:Label ID="lbServicios1" runat="server" Text="Clientes" ></asp:Label>
                    </div>     
                </div>
            </div>
            <div    align="center"  style="margin-bottom:20px;border:0px solid">  
             <!-- <div class="div" style="display: inline-block; " >-->
                <div style="display: inline-block; margin:10px; padding:10px;" >
                    <div >
                        <asp:Label ID="Label3" runat="server" Text="Buscar por Rut:"></asp:Label>                
                    </div >
                    <div >
                        <asp:TextBox ID="txtValor" runat="server" AutoPostBack="True" OnTextChanged="txtValor_TextChanged"></asp:TextBox>
                    </div >
                </div>
                <div style="display: inline-block; margin:10px; padding:10px;" >
                    <div >
                        <asp:Label ID="Label4" runat="server" Text="Buscar por Razón:" ></asp:Label>
                    </div >
                    <div >
                        <asp:TextBox ID="txtValorRazon" runat="server" AutoPostBack="True" OnTextChanged="txtValorRazon_TextChanged"></asp:TextBox>                
                    </div >
                </div>                
                <div style="display: inline-block; margin:10px; padding:10px;" >
                    <div >
                        <asp:ImageButton ID="IBlista0" runat="server" Height="33px" ImageUrl="~/images/regresar.png" OnClick="IBlista0_Click" ToolTip="Regresar" Width="85px" />                    </div >
                </div>
                

            </div>
            <div align="center"  style="border:0px solid;margin:auto;"> 
            <div style="display:inline-block;  margin:10px; padding:10px;border:0px solid; " >
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center"  style="margin-right: 0px" >
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <div style="text-align:center;float:left;border:0px solid;border-color:white;" class="busqueda1" >
                            <asp:Label ID="Label11" runat="server" Text='Rut' Width="150px"></asp:Label>
                        </div>
                        <div style="text-align:center;float:left;border:0px solid;border-color:white;" class="busqueda1">
                            <asp:Label ID="Label8" runat="server" Text='Razón Social' Width="250px"></asp:Label>
                        </div>
                        <div style="text-align:center;float:right;border:0px solid;border-color:white;" class="busqueda1">
                            <asp:Label ID="Label9" runat="server" Text='Selecionar' Width="100px"></asp:Label>
                        </div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="text-align:center;float:left;border:0px solid;"  class="descrip1">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("rut") %>' Width="150px"></asp:Label>
                        </div>
                        <div style="text-align:center;float:left;border:0px solid;" class="descrip1">
                            <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("nombres") %>' Width="250px"></asp:Label>
                        </div>
                        <div style="text-align:center;float:left;border:0px solid;" >
                            <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/seleccion.png" Width="30px"  OnClick="seleccionarRegistro"  />
                        </div>
                        
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataList>


            </div>
        </div>

                
        </asp:View>
    </asp:MultiView>
          </div>



</asp:Content>
