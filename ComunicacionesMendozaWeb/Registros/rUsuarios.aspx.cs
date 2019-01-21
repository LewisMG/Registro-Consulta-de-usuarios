using BLL;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComunicacionesMendozaWeb.Registros
{
    public partial class rUsuarios : System.Web.UI.Page
    {

        private void LimpiarCampos()
        {
            usuarioidTextBox.Text = " ";
            nombresTextBox.Text = " ";
            nomUserTextBox.Text = "";
            contraseñaTextBox.Text = "";
            VcontraseñaTextBox.Text = "";
            DropDownListUsuario.SelectedIndex = 0;
            tVendidoTextBox.Text = "";
        }

        private Usuario LlenaClase()
        {
            Usuario usuario = new Usuario();

            usuario.UsuarioId = ToInt(usuarioidTextBox.Text);
            usuario.Nombre = nombresTextBox.Text;
            usuario.NombreUser = nomUserTextBox.Text;
            usuario.Contraseña = contraseñaTextBox.Text;
            usuario.vContraseña = VcontraseñaTextBox.Text;
            usuario.Tipo = DropDownListUsuario.Text;
            usuario.TotalVendido = ToInt(tVendidoTextBox.Text);

            return usuario;
        }

        private int ToInt(object valor)
        {
            int retornar = 0;
            int.TryParse(valor.ToString(), out retornar);

            return retornar;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            Usuario usuario = repositorio.Buscar(ToInt(usuarioidTextBox.Text));
            if (usuario != null)
            {
                nombresTextBox.Text = usuario.Nombre;
                nomUserTextBox.Text = usuario.NombreUser;
                contraseñaTextBox.Text = usuario.Contraseña;
                VcontraseñaTextBox.Text = usuario.vContraseña;
                DropDownListUsuario.Text = usuario.Tipo.ToString();
                tVendidoTextBox.Text = usuario.TotalVendido.ToString();
            }
            else
            {
                Response.Write("<script>alert('No existe ese usuario');</script>");

            }
        }

        protected void BtnNuevo_Click(object sender, EventArgs e)
        {
            LimpiarCampos();
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            Usuario usuario = new Usuario();
            bool paso = false;

            usuario = LlenaClase();

            if (usuario.UsuarioId == 0)
            {
                paso = repositorio.Guardar(usuario);
                Response.Write("<script>alert('Guardado Exitosamente!!');</script>");
                LimpiarCampos();
            }
            else
            {
                int id = ToInt(usuarioidTextBox.Text);
                usuario = repositorio.Buscar(id);

                if (usuario != null)
                {
                    paso = repositorio.Modificar(usuario);
                    Response.Write("<script>alert('Modificado Exitosamente');</script>");
                }
                else
                    Response.Write("<script>alert('No se ha encontrado el Id');</script>");
            }

            if (paso)
            {
                LimpiarCampos();
            }
            else
                Response.Write("<script>alert('Fallo!! No ha Podido Guardar');</script>");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
            int id = ToInt(usuarioidTextBox.Text);

            var usuario = repositorio.Buscar(id);

            if (usuario != null)
            {
                if (repositorio.Eliminar(id))
                {
                    Response.Write("<script>alert('Eliminado Exitosamente!!');</script>");
                    LimpiarCampos();
                }
                else
                    Response.Write("<script>alert('Fallo!! No se Puede Eliminar');</script>");
            }
            else
                Response.Write("<script>alert('No Existe');</script>");
        }
    }
}