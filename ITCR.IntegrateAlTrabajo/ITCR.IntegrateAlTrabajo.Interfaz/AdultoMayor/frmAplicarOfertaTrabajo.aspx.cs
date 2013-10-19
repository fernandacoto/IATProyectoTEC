using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.IntegrateAlTrabajo.Negocios;
using ITCR.IntegrateAlTrabajo.Datos;

namespace ITCR.IntegrateAlTrabajo.Interfaz.AdultoMayor
{
    public partial class frmAplicarOfertaTrabajo : System.Web.UI.Page
    {
        cIATOfertaTrabajoNegocios OfertaTrabajo = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
        cIATCategoriaTrabajoNegocios Categoria = new cIATCategoriaTrabajoNegocios(1, "A", 2, "B");
        cIATTipoTrabajoNegocios TipoTrabajo = new cIATTipoTrabajoNegocios(1, "A", 2, "B");
        cIATEmpresaNegocios Empresa = new cIATEmpresaNegocios(1, "A", 2, "B");
        cIATContactoNegocios Contacto = new cIATContactoNegocios(1, "A", 2, "B");
        cIATDistritoNegocios Distrito = new cIATDistritoNegocios(1, "A", 2, "B");
        cIATCantonNegocios Canton = new cIATCantonNegocios(1, "A", 2, "B");
        cIATProvinciaNegocios Provincia = new cIATProvinciaNegocios(1, "A", 2, "B");

        static Int16 IdCategoria;
        static Int16 IdTipoOferta;
        static Int16 IdEmpresa;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Session["Id_Oferta"] = "2";
                mostrarOferta();
            }
        }

        protected void mostrarOferta()
        {
            OfertaTrabajo.Id_OfertaTrabajo = Int16.Parse(Convert.ToString(Session["Id_Oferta"]));
            DataTable TablaOfertaTrabajo = OfertaTrabajo.Buscar();            

            if (TablaOfertaTrabajo.Rows.Count > 0)
            {
                txtNombrePuesto.Text = TablaOfertaTrabajo.Rows[0]["Nom_Puesto"].ToString();
                txtDescripciónPuesto.Text = TablaOfertaTrabajo.Rows[0]["Dsc_OfertaTrabajo"].ToString();
                txtRequisitosPuesto.Text = TablaOfertaTrabajo.Rows[0]["Txt_Requisitos"].ToString();
                txtInformaciónAdicionalPuesto.Text = TablaOfertaTrabajo.Rows[0]["InformacionAdicional"].ToString();
                IdCategoria = Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdCategoriaOfertaTrabajo"].ToString());
                IdTipoOferta = Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdTipoOfertaTrabajo"].ToString());
                IdEmpresa = Int16.Parse(TablaOfertaTrabajo.Rows[0]["FK_IdEmpresa"].ToString());
            }

            Categoria.Id_CategoriaTrabajo = IdCategoria;
            DataTable TablaCategoria = Categoria.Buscar();

            if (TablaCategoria.Rows.Count > 0)
            {
                txtCategoríaPuesto.Text = TablaCategoria.Rows[0]["Nom_CategoriaTrabajo"].ToString();
            }

            TipoTrabajo.Id_TipoTrabajo = IdTipoOferta;
            DataTable TablaTipoOferta = TipoTrabajo.Buscar();

            if (TablaTipoOferta.Rows.Count > 0)
            {
                txtTipoTrabajoPuesto.Text = TablaTipoOferta.Rows[0]["Nom_TipoTrabajo"].ToString();
            }

            Empresa.Id_Empresa = IdEmpresa;
            DataTable TablaEmpresa = Empresa.Buscar();

            Int16 IdUsuario = 0;
            Int16 IdDistrito = 0;

            if (TablaEmpresa.Rows.Count > 0)
            {
                txtEmpresaPuesto.Text = TablaEmpresa.Rows[0]["Nom_Empresa"].ToString();
                IdUsuario = Int16.Parse(TablaEmpresa.Rows[0]["FK_IdUsuario"].ToString());
                IdDistrito = Int16.Parse(TablaEmpresa.Rows[0]["FK_IdDistrito"].ToString());
            }

            Contacto.FK_IdUsuario = IdUsuario;
            Contacto.FK_IdTipoContacto = 3;
            DataTable TablaContactoCorreo = Contacto.Buscar();

            if (TablaContactoCorreo.Rows.Count > 0)
            {
                txtCorreoElectrónicoPuesto.Text = TablaContactoCorreo.Rows[0]["Detalle"].ToString();
            }

            Contacto.FK_IdTipoContacto = 1;
            DataTable TablaContactoTelefono = Contacto.Buscar();

            if (TablaContactoTelefono.Rows.Count > 0)
            {
                txtTeléfonoPuesto.Text = TablaContactoTelefono.Rows[0]["Detalle"].ToString();
            }

            Distrito.Id_Distrito = IdDistrito;
            DataTable TablaDistrito = Distrito.Buscar();

            Int16 IdCanton = 0;

            if (TablaDistrito.Rows.Count > 0)
            {
                IdCanton = Int16.Parse(TablaDistrito.Rows[0]["FK_IdCanton"].ToString());
            }

            Canton.Id_Canton = IdCanton;
            DataTable TablaCanton = Canton.Buscar();

            Int16 IdProvincia = 0;

            if (TablaCanton.Rows.Count > 0)
            {
                IdProvincia = Int16.Parse(TablaCanton.Rows[0]["FK_IdProvincia"].ToString());
            }

            Provincia.Id_Provincia = IdProvincia;
            DataTable TablaProvincia = Provincia.Buscar();

            if (TablaProvincia.Rows.Count > 0)
            {
                txtUbicaciónPuesto.Text = TablaProvincia.Rows[0]["Nom_Provincia"].ToString();
            }
        }

        protected void btnAplicarOfertaTrabajo_Click(object sender, EventArgs e)
        {
            cIATOfertaTrabajoNegocios OfertaTrabajoActualizada = new cIATOfertaTrabajoNegocios(1, "A", 2, "B");
            OfertaTrabajoActualizada.Id_OfertaTrabajo = Int16.Parse(Convert.ToString(Session["Id_Oferta"]));
            OfertaTrabajoActualizada.Nom_Puesto = txtNombrePuesto.Text;
            OfertaTrabajoActualizada.Dsc_OfertaTrabajo = txtDescripciónPuesto.Text;
            OfertaTrabajoActualizada.Txt_Requisitos = txtRequisitosPuesto.Text;
            OfertaTrabajoActualizada.InformacionAdicional = txtInformaciónAdicionalPuesto.Text;
            OfertaTrabajoActualizada.Ind_Activa = false;
            OfertaTrabajoActualizada.FK_IdCategoriaOfertaTrabajo = IdCategoria;
            OfertaTrabajoActualizada.FK_IdTipoOfertaTrabajo = IdTipoOferta;
            OfertaTrabajoActualizada.FK_IdEmpresa = IdEmpresa;

            OfertaTrabajoActualizada.Actualizar();

            string script = @"<script type='text/javascript'>
                            alert('La aplicación ha sido realizada correctamente.');
                            </script>";

            ScriptManager.RegisterStartupScript(this, typeof(Page), "Persona Adulta Mayor", script, false);
        }
    }
}