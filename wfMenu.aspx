<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master"  EnableEventValidation="false" AutoEventWireup="true" CodeBehind="wfMenu.aspx.cs" Inherits="AtcWln.wfMenu" %>


 
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">   

    <META http-equiv=refresh content=3600>     
    <input id="pColor1" type="text" value="" hidden="hidden" />
    <input id="pColor2" type="text" value="" hidden="hidden"/>
    <input id="pColor3" type="text" value="" hidden="hidden"/>
    <input id="pColor4" type="text" value="" hidden="hidden"/>
    <input id="pColor5" type="text" value="" hidden="hidden"/>


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
          //    alert('1234');
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);
          
      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {
          
        // Create the data table.
          var data = new google.visualization.arrayToDataTable(<%=obtenerDatos()%>);
          //var colores1 = ['blue', 'green', '#B9770E', '#1A5276', '#CCFF33', '#9B59B6']; // =document.getElementsByName("nombre")[0].value;          
        //  alert('1234');
          var color1 = document.getElementById("pColor1").value;          //'blue';// + "," + "'green'" + "," + "'#B9770E'"  ;
          var color2 = document.getElementById("pColor2").value;                       
          var color3 = document.getElementById("pColor3").value;
          var color4 = document.getElementById("pColor4").value;
          var color5 = document.getElementById("pColor5").value;

          /*if (color1 == "") {
              if (color2 != "") {
                  color1 = color2
              } else
                  if (color3 != "") {
                      color1=color3
                  }*/
                
        // document.getElementById("pColor5").value = '3333333';
        //document.getElementById("InpColor1").value = "***"; 
        /*  var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
          ['Mushrooms', 3],
          ['Onions', 1],
          ['Olives', 1],
          ['Zucchini', 1],
          ['Pepperoni', 2]
        ]);*/
          /*alert("**"+color1+"**");
          alert("**"+color2+"**");
          alert("**"+color3+"**");
          alert("**"+color4+"**");
          alert("**"+color5+"**");*/
        // Set chart options
          var options = {
              'title': 'Resumen',
              is3D: true,
              'fontSize':10,
              //backgroundColor: { fill: "gray" },
              //pieHole: 0.4,
              //legend: { position: "labeled", textStyle: { color: "blue", fontSize: 10 } },
              tooltip: { textStyle: { color: "ff0000" }, showColorCode: true },
              //slices: { 0: { color: color1 }, 1: { color: (color2 === "" ? color3:color2) }, 2: { color: color3 } },
              colors: [color1, color2, color3, color4, color5],
             //colors: [color1,color2],
              //colors: 
          };
       //   options.color1 = 'blue';
            //'width': 400,
              //         'height':200};

        // Instantiate and draw our chart, passing in some options.

         //document.getElementById('pColor1').value = 'blue';
         // alert("1234");
        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>  
        <div align="center">
        <div  style="width: 70%;display:inline-block;border:0 solid !important;justify-content:flex-start;">    
            <div  class="divPesta2">          
                <div class="divPesta1">
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="Desde"></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtFechaIni" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="divPesta1">
                    <div>
                        <asp:Label ID="Label9" runat="server" Text="Hasta"></asp:Label>
                    </div>
                    <asp:TextBox ID="TxtFechaFin" runat="server" TextMode="Date"></asp:TextBox>
                </div>                                     
                <div class="divPesta1" >
                    <div>
                        <asp:Label ID="LbTecnico" runat="server" Text="Tecnico"></asp:Label>
                        <asp:Label ID="LbPuntos" runat="server" Text="" ></asp:Label>                        
                    </div>
                    <asp:DropDownList ID="DDLTecnico" runat="server" Height="25px" Width="184px">
                    </asp:DropDownList>

                </div> 
                <div class="divPesta1">
                    <div>
                        <asp:Label ID="Label10" runat="server" Text="Estado"></asp:Label>
                    </div>
                    <asp:DropDownList ID="DDLestado" runat="server" Height="25px" Width="184px" >
                    </asp:DropDownList>
                </div>
                <div class="divPesta1">
                    <div>
                        <asp:Label ID="Label11" runat="server" Text="SLA"></asp:Label>
                    </div>
                    <asp:DropDownList ID="DDLsla" runat="server" Height="25px" Width="184px" >
                    </asp:DropDownList>
                </div>
                <div class="divPesta1" >
                    <div class="div2">
                        <asp:Button ID="Button1" runat="server" Text="Filtrar" CssClass="BtnPesta" OnClick="Button1_Click1" />
                    </div>
                </div>         
             </div>
            </div>                    
        <div class="divPesta2" style="width: 30%;border:0 solid;display:inline-block;float:right;">    
          <div id="chart_div" style="border:0 solid;display:inline-block;overflow:hidden;"   >

          </div>
        </div>    
   </div>
    
<br />

                      <!-- Cantidad de Paginas -->

        <div style="border:0 solid;text-align:center;align-items:center;align-content:center; margin-top:10px;"  class="divPesta2"   >          
            <div class="divPesta1" style="border:0 solid;text-align:center;align-items:center;margin-top:10px;" >
                <div  style="display:inline-block;float:left;">
                            <h6>Páginas</h6>                          
                          </div>
                <div style="float:left;margin-left:15px;border:0 solid;">
                    <div style="display:inline-block;">                              
                    <asp:LinkButton ID="anterior" CssClass="categoria" runat="server" OnCommand="Unnamed_Command" CommandArgument="A" ><img src="images/anterior.jpg" style="width:30px;height:30px;"/></asp:LinkButton>                                  

                    </div>
                </div>
                 <asp:Repeater ID="Repeater1" runat="server" >
                      <HeaderTemplate>                          
                      </HeaderTemplate>
                      <ItemTemplate>  
                          <div style="float:left;margin-left:15px;">
                              <div style="display:inline-block;border:0 solid">                              
                                <asp:LinkButton ID="pagina" CssClass="categoria" runat="server" OnCommand="Unnamed_Command" CommandArgument="<%# (Container.DataItem)%>" ><%# (Container.DataItem)%></asp:LinkButton>                                  
                                <div style="margin:0px;padding:0px;">
                                <input style="border:4px solid;width:20px;color:blue;height:10px;" readonly="readonly" type="text" class="oculto"  ID="Lbl<%# (Container.DataItem)%>"  name="Lbl<%# (Container.DataItem)%>" value="____"></input>                                  
                                </div>
                              </div>
                          </div>
                      </ItemTemplate>
                 </asp:Repeater>   
                <asp:TextBox visible="false" runat="server" ID="paginaAct" Text="0"></asp:TextBox>                  
                <asp:TextBox visible="false" runat="server" ID="totPaginas" Text="0"></asp:TextBox>                  
                <div style="float:left;margin-left:15px;border:0 solid;">
                    <div style="display:inline-block;">                              
                        <asp:LinkButton ID="siguiente" CssClass="categoria" runat="server" OnCommand="Unnamed_Command" CommandArgument="S" ><img src="images/siguiente.jpg" style="width:30px;height:30px;"/></asp:LinkButton>                                  

                    </div>
                </div>
                </div>
                

            </div>
    <br />
       
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server" >
            <div align="center" >
                <h3 style="margin: 20px; " >Solicitudes </h3>
            </div>
            <asp:DataList ID="DataListMenu" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" CellSpacing="20" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"   >
                    <AlternatingItemStyle BackColor="#CCCCCC" />
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <HeaderTemplate>
                        <table class="nav-justified  busqueda1">
                            <tr>
                                <td  class="modal-sm" hidden="hidden" style="width: 50px">ID</td>
                                <td  class="modal-sm" style="width: 200px">Cliente</td> 
                               <!-- <td class="modal-sm" style="color: white; width: 150px;">Empresa</td> -->
                                <td  class="modal-sm" style="color: white; width: 400px;">Detalle</td>
                                <td  class="modal-sm" style="color: white; width: 150px;text-align:center;">Fecha</td>
                                <td  class="modal-sm" style="color: white; width: 150px;text-align:center;">Técnico</td>
                                <td  class="modal-sm" style="color: white; width: 60px;text-align:center;">Status</td>
                                <td  class="modal-sm" style="color: white; width: 60px;text-align:center"></td>
                                <td  class="modal-sm" style="color: white; width: 140px;text-align:center;vertical-align:middle;  ">Sla</td> 
                                <td  class="modal-sm" style="color: white; width: 70px;text-align:center;">Seleccionar</td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div style="display:none;width:50px;" hidden="hidden" >
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("id") %>' Width="50px" ></asp:Label>                            
                        </div>
                        <div  style="display:inline-block;border:0px solid;width:200px;">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("empresa") %>'></asp:Label>
                        </div>
                       <!-- <div style="display:inline-block;border:0px solid;width:150px;">
                            <asp:Label ID="Label4" runat="server" style="margin-right: 36px" Text='<%# Eval("empresa") %>' Width="150px"></asp:Label>                        
                        </div> -->


                        <div class="descrip1"  style="display:inline-block;border:0px solid;text-align:center;">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="multilinea2" TextMode="MultiLine" Enabled="false"  Text='<%# Eval("asunto") %>' ></asp:TextBox>                            
                        </div>

                        <div style="display:inline-block;border:0px solid;width:150px;text-align:center;">
                            <asp:Label ID="Label3" runat="server" style="margin-right: 36px" Text='<%# Eval("fecha") %>' Width="150px"></asp:Label>                            
                        </div>

                        <div style="display:inline-block;border:0px solid;width:150px;text-align:center;">
                            <asp:Label ID="Label7" runat="server" style="margin-right: 36px" Text='<%# Eval("tecnico") %>' Width="150px"></asp:Label>                            
                        </div>

                        <div style="display:inline-block;border:0px solid;width:50px;text-align:left;">
                            <asp:Label ID="Label2" runat="server" style="margin-right: 36px" Text='<%# Eval("destatus") %>' Width="50px"></asp:Label>                            
                        </div>

                        <div style="display:inline-block;border:0px solid;width:50px;text-align:center;">
                            <asp:Label ID="Label6" runat="server" style="margin-right: 36px" Text='<%# Eval("tiempo") %>' Width="50px" Visible="false"></asp:Label>                            
                        </div>

                        <div class="divEstado" style="display:inline-block;border:0px solid;width:140px; text-align:center;flex-wrap:wrap;">
                            <div style="margin:0px;">
                                <Label ID="Label12"  style="margin: 0px;text-align:right;color:<%# (Eval("sla").ToString() =="Cumplido" ? "GREEN" : "RED") %>" ><%#  Math.Abs(((double.Parse(Eval("tiempo").ToString())/double.Parse(Eval("sla1").ToString()))-1)*100) + "%"%></Label>
                           </div> 
                            <asp:Image ID="Image1" runat="server" CssClass="BtnEstado" Width="70px" ImageUrl='<%#  (Eval("sla").ToString()=="Cumplido" ? "~/images/cumplido.png" : (Eval("sla").ToString()=="No_Cumplido" ? "~/images/nocumplido.png" : "~/images/porvencer.png")) %>'  ToolTip='<%# "Duración: " + Eval("tiempo") + " - " + (Eval("sla").ToString()=="Cumplido" ? "Cumplido" : "NO CUMPLIDO")  %>'/>
                        </div>

                        <div style="display:inline-block;border:0px solid;width:70px;text-align:center;">
                            <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/seleccion.png" Width="30px" OnClick="Image2_Click" />    
                        </div>

                        

                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:DataList>
        </asp:View>
    </asp:MultiView>
    
</asp:Content>
