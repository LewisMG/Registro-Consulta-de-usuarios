using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Usuario
    {
        [Key]
        public int UsuarioId { get; set; }
        public string Nombre { get; set; }
        public string NombreUser { get; set; }
        public string Contraseña { get; set; }
        public string vContraseña { get; set; }  
        public string Tipo { get; set; }
        public decimal TotalVendido { get; set; }

        public Usuario()
        {

        }
    }
}
