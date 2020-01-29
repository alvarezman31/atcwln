<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfSolicitudes.aspx.cs" Inherits="AtcWln.Solicitudes.wfSolicitudes"  %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">   
    <script>
       /* function onContentsChange() {
            alert('contents changed');
        }*/
    </script>    
    <script runat="server">

    /*protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ltlResult.Text = Editor1.Content;
        TxtMensaje.Text = Editor1.Content;
    }*/
</script>
    
    <script type="text/javascript">

function pageLoad() {
    //alert('cdcdcdcd');
    var checkboxes = $("[id*='CheckboxEmail']");
    var total = checkboxes.length;
    var inputNombre = document.getElementById("<%=txtEnviarEmail.ClientID %>");
    //alert(inputNombre.value);
    inputNombre.value="";
    for (var x = 0; x < total; x++) {
        //alert(x);
        //alert("***" + document.getElementById(checkboxes[x].id).value);

        //alert(checkboxes[x].id);
        //alert(checkboxes[x].checked);
        if (checkboxes[x].checked) {

            //alert("111" + document.getElementById(checkboxes[x].id).html());
            
            //alert("333" + checkboxes[x].value.trim());
            //alert("222" + (checkboxes[x].text));
            if (inputNombre.value == "") {
                inputNombre.value = checkboxes[x].value.trim();
            }
            else {
                inputNombre.value += ";" +  checkboxes[x].value.trim();
            }
            //alert(checkboxes[x].localName);
            //alert(checkboxes[x].nodeName);
            //alert(checkboxes[x].id);
            //checkboxes[x].checked = true;
            //inputNombre.value += checkboxes[x].value;
            //cont = cont + 1;
        }
    }
   alert(cont);

    checkboxes.each(function (i) {
        if (this.checked) {
            $(this).parent().css("background-color", "green");
        } else {
            $(this).parent().css("background-color", "red");
        }
    });
}
</script>
    <div align="center" >  
             <!-- <div class="div" style="display: inline-block; " >-->
            </div>

    <!-- <div id="columnaIzq">
        
                


    </div> -->
    <div align="center">
         <div align="center">
        <div  style="width: 79%;">    
            <div  class="divPesta2">          
                <div class="divPesta1">
                    <asp:Button ID="Button4" runat="server" Text="Volver" CssClass="BtnPesta" PostBackUrl="~/wfMenu.aspx" />
                </div>                          
            </div>
        </div>
    </div>
 <div class="columnaCentro">     
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="View1" runat="server">
             <div align="center"> 

                <div style="display: block; margin:5px; padding:5px;border:0px solid;" >
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div>
                            <asp:Label ID="Label5" runat="server" Text="Cliente"></asp:Label>
                        </div>
                        <asp:DropDownList ID="DDLCliente" runat="server" Height="17px" Width="184px" AutoPostBack="True" OnSelectedIndexChanged="DDLCliente_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div>
                            <asp:Label ID="Label3" runat="server" Text="Contrato" Visible="false"></asp:Label>
                        </div>
                        <asp:DropDownList ID="DDLcontrato" runat="server" Height="17px" Width="184px" AutoPostBack="True" OnSelectedIndexChanged="DDLcontrato_SelectedIndexChanged" Visible="false" >
                        </asp:DropDownList>
                    </div>
                    <div style="display: inline-block; margin:10px; padding:10px;" >
                        <div style="width: 205px">
                            <asp:Label ID="Label1" runat="server" Text="Canal"></asp:Label>
                        </div>
                        <asp:DropDownList ID="DDLcanales" runat="server" Height="21px" Width="205px" OnSelectedIndexChanged="DDLcanales_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>                 
                    <div style="display: block; margin:10px; padding:10px;" >
                        <div style="width: 305px">
                            <asp:Label ID="LbAsunto" runat="server" Text="Asunto"></asp:Label>
                        </div>
                        <asp:TextBox ID="TxtAsunto" runat="server"  CssClass="TextAsunto" MaxLength="100" ></asp:TextBox>      
                    </div>     
 
                 </div>
            
                <div style="display: inline-block; margin:10px; padding:10px;">    
                    <div>
                        <asp:Label ID="Label4" runat="server" Text="Descripción de la Situación" ></asp:Label>
                    </div>                    
                </div>    
                    
                <asp:TextBox ID="TxtMensaje" runat="server" TextMode="MultiLine" CssClass="TextMensaje" OnTextChanged="TxtMensaje_TextChanged" BorderStyle="Solid" BorderWidth="2px" style="margin-top: 10px" Width="90%" Height="400" ></asp:TextBox>

                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>                                 
                <ajaxToolkit:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" runat="server" BehaviorID="TextBox1_HtmlEditorExtender" TargetControlID="TxtMensaje" EnableSanitization="false">
                </ajaxToolkit:HtmlEditorExtender>

               
                 <div style="display: inline-block; margin:10px; padding:10px;" >
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" Height="35px" onchange="this.form.submit()" OnLoad="FileUpload1_Load" />
                    </div>
                <div style="display: inline-block; margin:10px; padding:10px;" >
                    <asp:TextBox ID="TxtAdjuntos" runat="server" Height="70px" TextMode="MultiLine" Width="400px" ReadOnly="true"></asp:TextBox>
                </div>
                 
        </div>
             <div style="display: block; margin:10px; padding:10px;">
                 <asp:Button ID="Button1" runat="server" Text="Siguiente" OnClick="Button1_Click2" CssClass="btn btn-success " />
            </div>
         </asp:View>

         <asp:View ID="View2" runat="server">
                <div style="display: none; margin:10px; padding:10px;">
                        <div>
                            <asp:Label ID="Label2" runat="server" Text="Empresa"></asp:Label>
                        </div>
                        <asp:TextBox ID="TxtEmpresa" runat="server" Width="177px"></asp:TextBox>
                    </div>
             <div style="display: inline-block; margin:5px; padding:0px;" >
                    <h4>Email Registrados</h4>
              <div align="center" style="margin:10px;display:block;overflow:auto;border:0 solid;">  
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:Label ID="Label17" runat="server" Text="Email:"></asp:Label>
                    </div>
                    <div>
                         <asp:TextBox ID="txtEmail1" runat="server"></asp:TextBox>
                    </div>
                </div> 
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:Label ID="Label18" runat="server" Text="Predeterminado:"></asp:Label>
                    </div>
                    <div>
                         <asp:CheckBox ID="ckbEmail" runat="server"   />                 
                    </div>
                </div> 
                <div style="display: inline-block; margin:5px; padding:10px;" >
                    <div>
                         <asp:ImageButton ID="Image2" runat="server" ImageUrl="~/images/agregar.jpg" Width="30px" OnClick="Image2_Click" />
                    </div>
                
                </div>                 
                </div>                
                 <asp:CheckBoxList ID="CheckBoxList1" runat="server" Font-Bold="False" Font-Size="10pt">
            </asp:CheckBoxList>   
                    <asp:Repeater ID="repeaterEmail" runat="server" Visible="false">
                      <ItemTemplate>  
                          <div >                              
                            <input id="TxtNombreEmail<%# DataBinder.Eval(Container.DataItem, "nombre").ToString().Trim()%>" type="text" value="<%# DataBinder.Eval(Container.DataItem, "nombre").ToString().Trim() %>"/>
                            <input id="CheckboxEmail<%# DataBinder.Eval(Container.DataItem, "id").ToString().Trim()%>" type="checkbox" value="<%# DataBinder.Eval(Container.DataItem, "email").ToString().Trim() %>" Onclick="pageLoad();" <%# DataBinder.Eval(Container.DataItem, "status").ToString().Trim() == "1" ? "checked='checked'" : "" %> /><label for="CheckboxEmail<%# DataBinder.Eval(Container.DataItem, "id").ToString().Trim()%>"><%# DataBinder.Eval(Container.DataItem, "email").ToString().Trim()%></label>
                         </div>
                      </ItemTemplate>
                 </asp:Repeater>   
                    <br />
                 <asp:TextBox ID="txtEnviarEmail" runat="server" visible="false" Height="108px" TextMode="MultiLine" Width="619px" OnTextChanged="txtEnviarEmail_TextChanged1"></asp:TextBox>
             </div>
             <div style="display: block; margin:10px; padding:10px;">
                 <asp:Button ID="Button2" runat="server" Text="Anterior" OnClick="Button2_Click" CssClass="btn btn-success " />
            </div>
             <div style="display: block; margin:10px; padding:10px;">
                 <asp:Button ID="Button3" runat="server" Text="Enviar" OnClientClick="pageLoad();" OnClick="Button3_Click"  CssClass="btn btn-success " />
            </div>
            <div style="display: block; margin:10px; padding:10px;">
                <asp:Label ID="lbMensaje2" runat="server" Text="" Font-Bold="True" Font-Size="16pt" ForeColor="#000099"></asp:Label>
                <br />
                <br />
                <br />
                <asp:ImageMap ID="ImageMap1" runat="server" Height="95px" Width="365px">
                </asp:ImageMap>
                <br />
            </div>

         </asp:View>

     </asp:MultiView>
</div>             

    </div>
 <!--  <div id="columnaDer">

    </div>          -->
</asp:Content>
