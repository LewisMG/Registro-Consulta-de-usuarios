using BLL;
using Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ComunicacionesMendozaWeb.Consultas
{
    public partial class cUsuario : System.Web.UI.Page
    {
        Expression<Func<Usuario, bool>> filtro;// = p => true;
        RepositorioBase<Usuario> repositorio = new RepositorioBase<Usuario>();
        public static List<Usuario> listUsuarios { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            listUsuarios = repositorio.GetList(x => true);
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            int id = 0;

            switch (FiltroDropDownList.SelectedIndex)
            {
                case 0://Todo
                    break;

                case 1://UsuarioId
                    id = Convert.ToInt32(CriterioTextBox.Text);
                    filtro = p => p.UsuarioId == id;
                    break;

                case 2://Nombre
                    filtro = p => p.Nombre.Contains(CriterioTextBox.Text);
                    break;
                case 3://Tipo
                    filtro = p => p.Tipo.Contains(CriterioTextBox.Text);
                    break;
            }

            listUsuarios = repositorio.GetList(filtro);
            UsuarioGridView.DataSource = listUsuarios;
            UsuarioGridView.DataBind();
        }
        public static List<Usuario> RetornarUsuarios()
        {
            return listUsuarios;
        }
    }
}