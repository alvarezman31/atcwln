<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfOrdenes.aspx.cs" Inherits="AtcWln.Ordenes.wfOrdenes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
    <div align="center">
        <div  style="width: 79%;">    
            <div  class="divPesta2">          
                <div class="divPesta1">
                    <asp:Button ID="Button1" runat="server" Text="Solicitud" CssClass="BtnPesta" OnClick="Button1_Click" />
                </div>
                <div class="divPesta1">
                    <asp:Button ID="Button2" runat="server" Text="Orden Técnica" CssClass="BtnPesta" OnClick="Button2_Click" />
                </div>               
                 <div class="divPesta1">
                    <asp:Button ID="Button4" runat="server" Text="Volver" CssClass="BtnPesta" PostBackUrl="~/wfMenu.aspx" />
                </div>       
            </div>
        </div>
    </div>
    
<div align="center">
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <div class="columnaCentro" style="width: 79%">    
          <div style="display: block; margin:5px; padding:5px;border:0px solid; " >

                            <div style="display: inline-block; margin:10px; padding:0px;" >
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="Rut Cliente"></asp:Label>
                                </div>
                                <asp:TextBox ID="TxtEmpresa" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                <asp:Label ID="Label9" runat="server" Text="-"></asp:Label>
                                <asp:TextBox ID="TxtDigito" runat="server" Width="20px" Enabled="False"></asp:TextBox>
                            </div>                 
                            <div style="display: inline-block; margin:10px; padding:0px;" >
                                <div>
                                    <asp:Label ID="Label8" runat="server" Text="Nombre"></asp:Label>
                                </div>
                                <asp:TextBox ID="TxtRazon" name="TxtRazon" runat="server" Enabled="False" AutoPostBack="True" ></asp:TextBox>
                            </div> 
                            <div style="display: inline-block; margin:10px; padding:0px;" >
                                <div>
                                    <asp:Label ID="Label3" runat="server" Text="Fecha"></asp:Label>
                                </div>
                                <asp:TextBox ID="TxtFecha" runat="server" Enabled="False"></asp:TextBox>                        
                            </div>
                            <div style="display: inline-block; margin:10px; padding:0px;" >
                                <div>
                                    <asp:Label ID="lbSolicitud" runat="server" Text="Solicitud" Enabled="False"></asp:Label>
                                </div>
                                <asp:TextBox ID="TxtSolicitud" runat="server" Enabled="False" Width="131px"></asp:TextBox>                        
                            </div>
                            <div style="display: inline-block; margin:10px; padding:0px;" >
                            
                                <asp:TextBox ID="TxtStatus" runat="server" visible="False" Width="131px"></asp:TextBox>                        
                            </div>
             
                            <div style="display: inline-block; margin:10px; padding:0px;" >
                                <div>
                                    <asp:Label ID="lbContrat" runat="server" Text="Contrato" Visible="false"></asp:Label>
                                </div>
                                <asp:TextBox ID="TxtContrato" runat="server" Enabled="False" Visible="false" ></asp:TextBox>                        
                            </div>
                          <div style="display: inline-block; margin:10px; padding:0px;">    
                            <div>
                                <asp:Label ID="lbCanal" runat="server" Text="Canal de Comunicación"></asp:Label>
                            </div>                    
                            <asp:TextBox ID="TxtCanal" runat="server" Enabled="False" ></asp:TextBox>
                        </div> 
              <div style="display: block; margin:10px; padding:10px;" >
                        <div style="width: 305px">
                            <asp:Label ID="LbAsunto" runat="server" Text="Asunto"></asp:Label>
                        </div>
                        <asp:TextBox ID="TxtAsunto" runat="server"  CssClass="TextAsunto" MaxLength="100" ></asp:TextBox>      
                    </div>     
 
            </div>
              
             <div style="display: block; margin:10px; padding:0px;">    
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Descripción de la Situación"></asp:Label>
                </div>                    
                 <asp:ScriptManager ID="ScriptManager1" runat="server">
                 </asp:ScriptManager>
                <asp:TextBox ID="TxtMensaje" runat="server" TextMode="MultiLine" CssClass="TextMensaje" Enabled="False" Width="90%" Height="400" ></asp:TextBox>
                 
                 <ajaxToolkit:HtmlEditorExtender ID="TxtMensaje_HtmlEditorExtender" runat="server" BehaviorID="TxtMensaje_HtmlEditorExtender" TargetControlID="TxtMensaje" EnableSanitization="false">
                 </ajaxToolkit:HtmlEditorExtender>
                 
                 <br /><br />     
                 <div  class="columnaCentro" style="border:1px dashed;min-height:250px !important;" >    
                  <asp:Repeater ID="RepterDetails" runat="server">
                      <HeaderTemplate>
                          <h4>Documentos Adjuntos</h4>
                          <br />
                      </HeaderTemplate>
                      <ItemTemplate>  

                          <div class="col-md-4" style="border:1px dashed;width:300px;height:150px;margin:5px;overflow:auto;">                              
                              <a hidden href="data:<%# DataBinder.Eval(Container.DataItem, "mime").ToString().Trim()%>;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2"))%>" target="_blank"> <img class="img-responsive" style="max-height:100px;" 
                                  src= "<%# (DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".jpg" && DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".png") ? DataBinder.Eval(Container.DataItem, "archivo") : "data:image/jpg;base64,"+ ((byte[])DataBinder.Eval(Container.DataItem, "archivo2")) %>" /> </a>
                              <a href="/Ordenes/descargarDoc.aspx?tipo11=solicitud_archivo&id=<%# DataBinder.Eval(Container.DataItem, "id")%>" target="_blank"> <img class="img-responsive" style="max-height:100px;" 
                                  src= "<%# (DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".jpg" && DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".png") ? DataBinder.Eval(Container.DataItem, "archivo") : "data:image/jpg;base64,"+ Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2")) %>" /> 
                              </a>
                              <a hidden href="data:<%# DataBinder.Eval(Container.DataItem, "mime").ToString().Trim()%>;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2"))%>" target="_blank">  <%# DataBinder.Eval(Container.DataItem, "nombre").ToString().Trim()%></a>
                             <a   href="/Ordenes/descargarDoc.aspx?tipo11=solicitud_archivo&id=<%# DataBinder.Eval(Container.DataItem, "id")%>" target="_blank">  <%# DataBinder.Eval(Container.DataItem, "nombre")  %></a>                              

                         </div>
                      </ItemTemplate>
                 </asp:Repeater>   
                </div>
            </div>    
            </div>

    </asp:View>
    <asp:View ID="View2" runat="server">
            
        <div class="columnaCentro" style="width: 79%">    
       <div align="left" style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div >                        
                        <asp:Button ID="BtStatus"  runat="server" Text="Cerrardo"  CssClass="btn-danger" Enabled="false"  Visible="false" />                            
                    </div>
                    <asp:Label ID="Label6" runat="server" Text="Fecha de Cierre" Visible="False" ></asp:Label>                    
                    <asp:TextBox ID="TxtFechaCierre" name="TxtFechaCierre" CssClass="btn-danger" runat="server" Enabled="False" Visible="false"></asp:TextBox>
                </div>                 
            </div>
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="lbOrdenTec" runat="server" Text="Orden Técnica Nro."></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtNumOrden" name="TxtNumOrden" runat="server" Enabled="False"></asp:TextBox>
                </div>                 
                <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="LbTecnico" runat="server" Text="Tecnico"></asp:Label>
                    </div>
                    <asp:DropDownList ID="DDLTecnico" runat="server" Height="17px" Width="184px" AutoPostBack="True" Visible="False"  >
                    </asp:DropDownList>
                </div>                 

                <div style="display: inline-block; margin:10px; padding:0px;" >                    
                    
                    <asp:Button ID="BtAgregarOT" runat="server" Text="Crear OT" OnClick="BtAgregarOT_Click" CssClass="BtnPesta" />                    
                </div> 
                <div style="display: inline-block; margin:10px; padding:0px;" >                    
                    
                    <asp:Button ID="BtCerrarOT" runat="server" Text="Cerrar OT" CssClass="BtnPesta" OnClick="BtCerrarOT_Click" />                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                    
                </div> 
            </div>
            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="lbServicio" runat="server" Text="Servicios" Visible="False"></asp:Label>
                    </div>
                    <asp:DropDownList ID="DDLServicios" runat="server" Height="30px" Width="280px" Visible="False" >
                    </asp:DropDownList>
                </div>                 
                <div style="display: inline-block; margin:10px; padding:0px;" >
                    <div>
                        <asp:Label ID="lbCantidad" runat="server" Text="Cantidad" Visible="False" ></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtCantidad" runat="server" TextMode="Number" Visible="False">1</asp:TextBox>                                        
                </div> 
                <div style="display: inline-block; margin:10px; padding:0px;" >

                    <asp:Button ID="btServicios" runat="server" Text="Agregar Servicio" OnClick="DDLServicios_SelectedIndexChanged" CssClass="BtnPesta" Visible="False" />
                </div> 
            </div>
        <br />
        <br />
        <asp:Label ID="lbMensaje2" runat="server" Text="Label" Visible="False"></asp:Label>

            <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center"  >
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td style="width: 100px">ID</td>
                                <td class="modal-sm" style="color: white; width: 300px;">Descripción</td>
                                <td class="modal-sm" style="color: white; width: 100px;">Cantidad</td>
                                <td style="color: white; width: 150px; text-align-last:right;" >Procesos</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="text-left">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>' Width="100px"></asp:Label>
                                </td>
                                <td class="text-left">
                                    <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("descripcion") %>' Width="300px"></asp:Label>
                                </td>
                                <td class="text-left">
                                    <asp:Label ID="Label5" runat="server" style="margin-right: 36px" Text='<%# Eval("cantidad") %>' Width="100px"></asp:Label>
                                </td>                                
                                <td>
                                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/agregar.jpg" Width="30px" CommandArgument="+" OnCommand="actualizarCantidades" Visible='<%# TxtStatus.Text == "C" ? false : true %>'/>
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/eliminar.jpg" Width="30px" CommandArgument="-" CommandName="ImageButton3_Click" OnCommand="actualizarCantidades" Enabled='<%# Eval("cantidad").ToString() == "1" ? false : true %>' Visible='<%# TxtStatus.Text == "C" ? false : true %>' />
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/eliminarBtn.png" Width="30px" CommandArgument="*" OnCommand="actualizarCantidades" OnClientClick="return confirm('¿Esta seguro que desea eliminar el registro?');" Visible='<%# TxtStatus.Text == "C" ? false : true %>'/>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataList>

           </div>
            <br />
            <div  class="columnaCentro" style="border:1px dashed;min-height:250px !important;" >    
                  <asp:Repeater ID="RepeaterDetOrden" runat="server">
                      <HeaderTemplate>
                          <h4>Documentos Adjuntos</h4>
                          <br />
                      </HeaderTemplate>
                      <ItemTemplate>  

                          <div class="col-md-4" style="border:1px dashed;width:300px;height:150px;margin:5px;overflow:auto;">                              
                              <a hidden href="data:<%# DataBinder.Eval(Container.DataItem, "mime").ToString().Trim()%>;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2"))%>" target="_blank"> <img class="img-responsive" style="max-height:100px;" 
                                  src= "<%# (DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".jpg" && DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".png") ? DataBinder.Eval(Container.DataItem, "archivo") : "data:image/jpg;base64,"+ ((byte[])DataBinder.Eval(Container.DataItem, "archivo2")) %>" /> </a>
                              <a href="/Ordenes/descargarDoc.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>&tipo11=orden_archivo" target="_blank"> <img class="img-responsive" style="max-height:100px;" 
                                  src= "<%# (DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".jpg" && DataBinder.Eval(Container.DataItem, "extension").ToString().Trim() != ".png") ? DataBinder.Eval(Container.DataItem, "archivo") : "data:image/jpg;base64,"+ Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2")) %>" /> 
                              </a>
                              <a hidden href="data:<%# DataBinder.Eval(Container.DataItem, "mime").ToString().Trim()%>;base64,<%# Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem, "archivo2"))%>" target="_blank">  <%# DataBinder.Eval(Container.DataItem, "nombre").ToString().Trim()%></a>
                             <a   href="/Ordenes/descargarDoc.aspx?id=<%# DataBinder.Eval(Container.DataItem, "id")%>&tipo11=orden_archivo" target="_blank">  <%# DataBinder.Eval(Container.DataItem, "nombre")  %></a>                              

                         </div>
                      </ItemTemplate>
                 </asp:Repeater>   
                </div>


        </div>

        </asp:View>
    </asp:MultiView>


    
        
    </div>
       
</asp:Content>
