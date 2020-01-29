<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="mantClientes.aspx.cs" Inherits="AtcWln.mantener.mantClientes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
     <div class="Content1"  >
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="vwDatos" runat="server">
             <div   align="center" >  
             <!-- <div class="div" style="display: inline-block; " >-->
                <asp:ImageButton ID="IBnuevo" runat="server" ImageUrl="~/images/agregar2.png" ToolTip="Agregar Cliente" CssClass="margin10 width50 height50 " OnClick="IBnuevo_Click" />
                        
                <asp:ImageButton ID="IBmodifica" runat="server"  ImageUrl="~/images/editar2.png" ToolTip="Editar Registro" CssClass="margin10 width50 height50 " OnClick="IBmodifica_Click"/>
                        
                <asp:ImageButton ID="IBeliminar" runat="server" ImageUrl="~/images/eliminar2.PNG"   CssClass="margin10 width50 height50 " OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" OnClick="IBeliminar_Click"/>
                        
                <asp:ImageButton ID="IBsalvar" runat="server" ImageUrl="~/images/guardar.png" ToolTip="Salvar los Cambios"  OnClick="IBsalvar_Click" Visible="False" CssClass="margin10 width50 height50 "/>
                        
                 <asp:ImageButton ID="IBsalvarMod" runat="server" CssClass="margin10 width50 height50 " ImageUrl="~/images/guardar.png" OnClick="IBsalvarMod_Click" ToolTip="Salvar los Cambios Editados" Visible="False" />
                        
                <asp:ImageButton ID="IBcancelar" runat="server" ImageUrl="~/images/cancelar.png" ToolTip="Cancelar Actualización"   CssClass="margin10 width50 height50 " OnClick="IBcancelar_Click" Visible="False"/>
                        
                <asp:ImageButton ID="IBlista" runat="server"  ImageUrl="~/images/buscar.png" OnClick="IBlista_Click" ToolTip="Mostrar Listado de Clientes"  CssClass="margin10 width50 height50 "/>

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
                    <asp:Label ID="LbOpcion" runat="server" Text="Clientes"  Font-Bold="True" Font-Size="12pt" BorderColor="#0033CC" ></asp:Label>
                </div>

                <div >
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/clientes.png" Height="100px" Width="100px" />
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
                            <asp:TextBox ID="txtRut" runat="server" Width="122px" AutoPostBack="True" OnTextChanged="txtRut_TextChanged" required=""></asp:TextBox>                            
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
                            <asp:Label ID="LbRazon" runat="server" Text="Razón Social:"></asp:Label>
                        </div >
                        <div >
                            <asp:TextBox ID="txtRazon" runat="server" Width="220px" required></asp:TextBox>
                        </div >
                    </div>
                     <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >     
                            <asp:Label ID="Label6" runat="server" Text="Teléfono:"></asp:Label>
                        </div>
                        <div >
                            <asp:TextBox ID="txtTelefono" runat="server" Width="220px" required></asp:TextBox>
                        </div>
                    </div>
                </div>
             <br />

             <br />
             <br />

             <div align="center" >  
	            <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="Label7" runat="server" Text="Página Web.:"></asp:Label>
                        </div >
                        <div >
                            <asp:TextBox ID="txtUrl" runat="server" Width="220px" required></asp:TextBox>
                        </div >
                    </div>
	            <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="Label10" runat="server" Text="Fecha:"></asp:Label>
                        </div >
                        <div >
                
                            <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"  Width="220px" required Height="22px" OnTextChanged="txtFecha_TextChanged"></asp:TextBox>
                
                        </div >
                    </div>
                 <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="Label12" runat="server" Text="Email:"></asp:Label>
                        </div >
                        <div >
                            <asp:TextBox ID="txtEmail" runat="server" Width="220px" required TextMode="Email"></asp:TextBox>
                
                        </div >
                    </div>
              </div>

            <br />
             <br />
            
            <br/>
<br/>
<br/>
<br/>
 <div align="center" >  
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div>
                <asp:Label ID="Lbpersona1" runat="server" Text="Persona Contacto 1:"></asp:Label>
            </div>
            <div>
                 <asp:TextBox ID="txtPersona1" runat="server" Width="220px" required></asp:TextBox>
            </div>
        </div>
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div>
                 <asp:Label ID="LbTelefonoPer1" runat="server" Text="Teléfono Persona Contacto 1:"></asp:Label>
            </div>
            <div>
                 <asp:TextBox ID="txtTelefonoPersona1" runat="server" Width="220px" required></asp:TextBox>
            </div>
        </div>
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div>
                 <asp:Label ID="Lbpersona2" runat="server" Text="Persona Contacto 2:"></asp:Label>
            </div>
            <div>
                 <asp:TextBox ID="txtPersona2" runat="server" Width="220px" required></asp:TextBox>
            </div>
        </div> 
 </div>
<br/>
<br/>
<br/>
<br/>


 <div align="center" >  
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                 <asp:Label ID="LbTelefonoPer2" runat="server" Text="Teléfono Persona Contacto 2:"></asp:Label>
            </div >
            <div >
                 <asp:TextBox ID="txtTelefonoPersona2" runat="server" Width="220px" required></asp:TextBox>
            </div >
        </div>	
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                 <asp:Label ID="Lbpersona3" runat="server" Text="Persona Contacto 3:"></asp:Label>
            </div >
            <div >
                 <asp:TextBox ID="txtPersona3" runat="server" Width="220px" required></asp:TextBox>
            </div >
        </div>
	<div style="display: inline-block; margin:10px; padding:10px;" >
            <div >
                 <asp:Label ID="LbTelefonoPer3" runat="server" Text="Teléfono Persona Contacto 3:"></asp:Label>
            </div >
            <div >
                 <asp:TextBox ID="txtTelefonoPersona3" runat="server" Width="220px" required></asp:TextBox>
            </div >
        </div> 
	 </div>
<br/>
<br/>
<br/>

            <div align="center" >  
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div >
                            <asp:Label ID="Label5" runat="server" Text="Dirección:"></asp:Label>
                        </div>
                        <div>
                            <asp:TextBox ID="txtDireccion" runat="server" Rows="4" TextMode="MultiLine" Width="342px" required Height="99px"></asp:TextBox>
                        </div>
                    </div> 
                   
            </div>
             <br />
             <br />
            <div align="center" style="margin:10px;">  
                <asp:Label ID="lbEmail" runat="server" Text='Email Registrados' visible="false" Font-Size="14" Font-Bold="True"></asp:Label>
            </div>
            <div align="center" style="margin:10px;display:block;overflow:auto;border:0 solid;">  
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:Label ID="LbEmailReg" runat="server" Text="Email:" Visible="False"></asp:Label>
                    </div>
                    <div>
                         <asp:TextBox ID="txtEmail1" runat="server" Visible="False"></asp:TextBox>
                    </div>
                </div> 
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:Label ID="LbPrede" runat="server" Text="Predeterminado:" Visible="False"></asp:Label>
                    </div>
                    <div>
                         <asp:CheckBox ID="ckbEmail" runat="server" Visible="False"   />                 
                    </div>
                </div> 
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:ImageButton ID="ImgAgregaEmail" runat="server" ImageUrl="~/images/agregar.jpg" Width="30px" OnClick="ImgAgregaEmail_Click" Visible="False" />
                    </div>
                
                </div>                 
            </div>
            <div align="center" style="margin:10px;border: 0 solid;">  
             <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
                 <AlternatingItemStyle BackColor="#CCCCCC" />
                 <FooterStyle BackColor="#CCCCCC" />
                 <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                 <HeaderTemplate>
                     <div style="text-align:center;float:left;border:0px solid;border-color:white;" class="busqueda1" >
                         <asp:Label ID="Label11" runat="server" Text='Email' Width="500px"></asp:Label>
                     </div>
                     <div style="text-align:center;float:left;border:0px solid;border-color:white;" class="busqueda1" >
                         <asp:Label ID="Label14" runat="server" Text='Predeterminado' Width="200px"></asp:Label>
                     </div>
                     <div style="text-align:center;float:left;border:0px solid;border-color:white;" class="busqueda1" >
                         <asp:Label ID="Label16" runat="server" Text='Procesos' Width="200px"></asp:Label>
                     </div>                     
                 </HeaderTemplate>
                 <ItemTemplate>
                     <div style="text-align:center;float:left;border:0px solid;"  class="descrip1">
                        <asp:Label ID="Label15" runat="server" style="margin-right: 36px" Text='<%# Eval("email") %>' Width="200px"></asp:Label>
                     </div>
                     <div style="text-align:center;float:left;border:0px solid;"  class="descrip1">
                        <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Eval("status").ToString() == "0" ? false : true %>'  />                         
                     </div>
                     <div style="text-align:center;float:left;border:0px solid;" >
                        <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/eliminarBtn.png" Width="30px" OnClick="seleccionarRegistro"  />
                     </div>
                 </ItemTemplate>
                 <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                 <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:DataList>
            </div>
             <br />            
             <br />
        </asp:View>
        <asp:View ID="vwLista" runat="server">

            <div align="center"  style="border:0px solid;margin:auto;"> 
                <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                    <div >
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/clientes.png" Height="100px" Width="100px" />
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
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" style="margin-right: 0px" >
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
                            <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("razon") %>' Width="250px"></asp:Label>
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
