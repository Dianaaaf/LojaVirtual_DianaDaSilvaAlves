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
    public partial class formCadProduto : System.Web.UI.Page
    {
        ProdutoDTO produtoDTO = new ProdutoDTO();
        ProdutoBLL produtoBLL = new ProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                produtoDTO.Nome = nome.Text;
                produtoDTO.Descricao = descricao.Text;
                produtoDTO.Valor = Convert.ToDouble(valor.Text);
                produtoDTO.CategoriaID = Convert.ToInt32(categoria.SelectedValue.ToString());
                produtoDTO.FornecedorId = Convert.ToInt32(fornecedor.SelectedValue.ToString());
                produtoDTO.QuantEstoque = Convert.ToInt32(quantidade.Text);
                produtoDTO.Foto = imagem.FileName.ToString();
                produtoBLL.inserir(produtoDTO);

                //upload de imagem para o projeto
                string localFoto = Server.MapPath("IMG/Produtos/" + produtoDTO.Foto);
                imagem.SaveAs(localFoto);

                //alert
                string mensagem = "Produto inserido com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(),
                                                    "alert('" + mensagem + "')", true);
            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }
        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            nome.Text = " ";
            descricao.Text = " ";
            valor.Text = " ";
            categoria.SelectedIndex = -1;
            fornecedor.SelectedIndex = -1;
            quantidade.Text = " ";
        }
    }
}