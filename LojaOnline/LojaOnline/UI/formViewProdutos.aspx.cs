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
    public partial class formViewProdutos : System.Web.UI.Page
    {
        ProdutoDTO produtoDTO = new ProdutoDTO();
        ProdutoBLL produtoBLL = new ProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ExibirGridView()
        {
            GridListarProdutos.DataBind();
            string pesquisa = "p.nome like %" + LabelNome.Text + "%";

            GridListarProdutos.DataSource = produtoBLL.pesquisar(pesquisa);
            GridListarProdutos.DataBind();
        }

        protected void BtnListar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
    }
}