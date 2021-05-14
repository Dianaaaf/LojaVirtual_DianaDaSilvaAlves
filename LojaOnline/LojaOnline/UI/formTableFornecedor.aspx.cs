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
    public partial class formTableFornecedor : System.Web.UI.Page
    {
        FornecedorDTO fornecedorDTO = new FornecedorDTO();
        FornecedorBLL fornecedorBLL = new FornecedorBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ExibirGridView()
        {
            GridViewFornecedores.DataBind(); 
            string pesquisa = "p.nome like %" + txb1.Text + "%";

            GridViewFornecedores.DataSource = fornecedorBLL.pesquisar(pesquisa); 
            GridViewFornecedores.DataBind();
        }

        protected void BtnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadFornecedor.aspx");
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
    }
}