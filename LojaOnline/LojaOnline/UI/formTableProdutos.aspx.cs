using LojaOnline.BLL;
using LojaOnline.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LojaOnline.UI
{
    public partial class formTableProdutos : System.Web.UI.Page
    {
        ProdutoBLL produtoBLL = new ProdutoBLL();
        ProdutoDTO produtoDTO = new ProdutoDTO();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {
            GridViewProdutos.DataBind(); ///faz a vinculação com a base de dados
            string pesquisa = "p.nome like %" + txb1.Text + "%";

            GridViewProdutos.DataSource = produtoBLL.pesquisar(pesquisa); //obtém o objeto retornado
            GridViewProdutos.DataBind();
        }

        protected void BtnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadProduto.aspx");
        }

        protected void BtnPesquisar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
    }
}