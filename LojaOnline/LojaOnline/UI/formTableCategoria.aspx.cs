using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LojaOnline.DTO;
using LojaOnline.BLL;

namespace LojaOnline.UI
{
    public partial class formTableCategoria : System.Web.UI.Page
    {
        CategoriaDTO categoriaDTO = new CategoriaDTO();
        CategoriaBLL categoriaBLL = new CategoriaBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ExibirGridView()
        {
            GridViewCategoria.DataBind();
            string pesquisa = "p.nome like %" + txb1.Text + "%";

            GridViewCategoria.DataSource = categoriaBLL.pesquisar(pesquisa);
            GridViewCategoria.DataBind();
        }

        protected void BtnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadCategoria.aspx");
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
    }
}