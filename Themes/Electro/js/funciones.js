function mostrar(opcion1) {
 //   alert("hola");
  //  alert(opcion1);
    var elemento = document.getElementById(opcion1);
    elemento.className -= ' oculto';    
  //  alert(opcion1);
    //elemento.className -= ' oculto';
    //alert('bye');
}

function ocultar(opcion1) {
    //alert("hola");
    //alert(opcion1);
    var elemento = document.getElementById(opcion1);
    elemento.className += ' oculto';
    //alert(opcion1);
    //elemento.className -= ' oculto';
    //alert('bye');
}

function mostrar2() {
    alert("hola mostrar 2");
    /*alert(opcion1);
    var elemento = document.getElementById(opcion1);
    elemento.className -= ' oculto';
    alert(opcion1);*/
    //elemento.className -= ' oculto';
    //alert('bye');
}

function ocultar2(opcion1) {
    alert("hola");
    alert(opcion1);
    var elemento = document.getElementById(opcion1);
    elemento.className += ' oculto';
    alert(opcion1);
    //elemento.className -= ' oculto';
    //alert('bye');
}

function mostrarPassBD() {
    alert("edeeee");
    if ($('#TxtPasswordBD').get(0).type = 'text') {
        document.getElementById('<%= TxtPasswordBD.ClientID %>').type = 'password';
    }
    else if ($('#TxtPasswordBD').get(0).type = 'password') {
        document.getElementById('<%= TxtPasswordBD.ClientID %>').type = 'text';
    }
}