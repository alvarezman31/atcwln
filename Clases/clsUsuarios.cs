using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace AtcWln.Clases
{
    public class clsUsuarios
    {
        // declarar las variables globales
        string tabla = "usuarios";

        private string password;
        private string rut;
        private string verifica;
        private string nombres;
        private string email;

        protected string Rut { get => rut; set => rut = value; }
        protected string Verifica { get => verifica; set => verifica = value; }
        protected string Nombres { get => nombres; set => nombres = value; }
        protected string Email { get => email; set => email = value; }
        protected string Password { get => password; set => password = value; }

        public clsUsuarios(string tabla, string rut, string verifica, string nombres, string email, string password)
        {
            this.tabla = tabla;
            this.rut = rut;
            this.verifica = verifica;
            this.nombres = nombres;
            this.email = email;
            this.password = password;
        }

        // metodos de manipulacion de datos
        public void agregar()
        {
#pragma warning disable CS0436 // El tipo entra en conflicto con un tipo importado
           /* clsConexion con1 = new clsConexion();
            con1.conectar(tabla);
            DataRow fila;
            fila = con1.data.Tables[tabla].NewRow();
            fila["rut"] = Rut;
            fila["password"] = Password;
            con1.data.Tables[tabla].Rows.Add(fila);
            con1.adaptadorDatos.Update(con1.data, tabla);
            */


#pragma warning restore CS0436 // El tipo entra en conflicto con un tipo importado

        }
    }
}


