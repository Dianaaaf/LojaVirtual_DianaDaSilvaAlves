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
    public partial class formViewFornecedor : System.Web.UI.Page
    {
        FornecedorDTO fornecedorDTO = new FornecedorDTO();
        FornecedorBLL fornecedorBLL = new FornecedorBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void ExibirGridView()
        {
            GridListarFornecedores.DataBind();
            string pesquisa = "p.nome like %" + LabelNome.Text + "%";

            GridListarFornecedores.DataSource = fornecedorBLL.pesquisar(pesquisa);
        }

        protected void BtnListar_Click(object sender, EventArgs e)
        {
            ExibirGridView();
        }
    }
}