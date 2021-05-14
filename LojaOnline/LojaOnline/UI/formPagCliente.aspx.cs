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
    public partial class formPagCliente : System.Web.UI.Page
    {
        ClienteDTO clienteDTO = new ClienteDTO();
        ClienteBLL clienteBLL = new ClienteBLL();

        ProdutoBLL produtoBLL = new ProdutoBLL();
        FornecedorBLL fornecedorBLL = new FornecedorBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Atualizar_Click(object sender, EventArgs e)
        {
            try
            {
                clienteDTO.Nome = txbNome.Text;
                clienteDTO.CPF = Convert.ToInt32(txbCPF.Text);
                clienteDTO.Telefone = Convert.ToInt32(txbTelefone.Text);
                clienteDTO.Email = txbEmail.Text;
                clienteDTO.Senha = txbSenha.Text;
                clienteBLL.alterar(clienteDTO);

                //alert
                string mensagem = "Cliente alterado com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(),
                                                    "alert('" + mensagem + "')", true);
            }
            catch (Exception ex)
            {
                throw new Exception("Não foi possível alterar os dados!");
            }
        }

        //AÇÃO DOS BOTÕES
        protected void MostrarProd_Click(object sender, EventArgs e)
        {
            ExibirGridViewProdutos();
        }
        protected void MostrarFornec_Click(object sender, EventArgs e)
        {
            ExibirGridViewFornecedores();
        }

        //GRID VIEW
        public void ExibirGridViewProdutos()
        {
            GridViewClientes.DataBind();
            string pesquisa = "p.nome";

            GridViewClientes.DataSource = produtoBLL.pesquisar(pesquisa);
            GridViewClientes.DataBind();
        }
        public void ExibirGridViewFornecedores()
        {
            GridViewClientes.DataBind();
            string pesquisa = "p.nome";

            GridViewClientes.DataSource = fornecedorBLL.pesquisar(pesquisa);
            GridViewClientes.DataBind();
        }
    }
}