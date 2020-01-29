<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="mantDpto.aspx.cs" Inherits="AtcWln.mantDpto" %>
 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        <br />
    </p>
        <div class="text-center">
        &nbsp;<asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="vwDatos" runat="server">
                    <asp:ImageButton ID="IBnuevo" runat="server" Height="50px" ImageUrl="~/images/agregar.jpg" ToolTip="Agregar Cliente" Width="50px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="IBmodifica" runat="server" Height="50px" ImageUrl="~/images/editar.jpg" ToolTip="Editar Registro" Width="50px" />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="IBeliminar" runat="server" Height="50px" ImageUrl="~/images/eliminar.jpg" Width="50px" />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="IBsalvar" runat="server" Height="50px" ImageUrl="~/images/guardar.jpg" ToolTip="Salvar los Cambios" Width="50px" OnClick="IBsalvar_Click" />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="IBsalvar0" runat="server" Height="50px" ImageUrl="~/images/regresar.jpg" ToolTip="Cancelar Actualización" Width="50px" />
                    &nbsp;&nbsp;
                    <asp:ImageButton ID="IBlista" runat="server" Height="50px" ImageUrl="~/images/listar.png" OnClick="IBlista_Click" ToolTip="Mostrar Listado de Clientes" Width="50px" />
                    <br />
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td class="text-justify" rowspan="5" style="width: 9px">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/clientes.png" />
                            </td>
                            <td style="height: 23px" class="text-right">Rut.</td>
                            <td class="text-left" style="height: 23px">
                                <asp:TextBox ID="txtRut" runat="server" Width="220px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 33px" class="text-right">Razón Social:</td>
                            <td class="text-left" style="height: 33px">
                                <asp:TextBox ID="txtRazon" runat="server" Width="220px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">Dirección:</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtDireccion" runat="server" Rows="4" TextMode="MultiLine" Width="220px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px" class="text-right">Teléfono:</td>
                            <td class="text-left" style="height: 20px">
                                <asp:TextBox ID="txtTelefono" runat="server" Width="220px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="text-right">Página Web:</td>
                            <td class="text-left">
                                <asp:TextBox ID="txtUrl" runat="server" Width="220px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="vwLista" runat="server">
                    <asp:ImageButton ID="IBlista0" runat="server" Height="33px" ImageUrl="~/images/retornar.jpg" OnClick="IBlista0_Click" ToolTip="Regresar" Width="50px" />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" aling="center" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="458px">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    
                    <br />
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <div class="text-center">
                        <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="10" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                            <AlternatingItemStyle BackColor="#CCCCCC" />
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <HeaderTemplate>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 163px">Rut</td>
                                        <td class="modal-sm" style="color: white; width: 433px;">Razon</td>
                                        <td style="color: white">Procesos</td>
                                    </tr>
                                </table>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <table class="nav-justified">
                                    <tr>
                                        <td class="text-left">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("rut") %>' Width="150px"></asp:Label>
                                        </td>
                                        <td class="text-left">
                                            <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("razon") %>' Width="400px"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/editar.jpg" Width="40px"  OnClick="seleccionarRegistro"  />
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        </asp:DataList>
                    </div>
                    <br />
                    <br />
                    cacacascascascascaacs<br />
                    
                </asp:View>
            </asp:MultiView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
    
        </div>

    
    <br />
</asp:Content>
