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
    public partial class formCadFornecedor : System.Web.UI.Page
    {
        FornecedorDTO fornecedorDTO = new FornecedorDTO();
        FornecedorBLL fornecedorBLL = new FornecedorBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                fornecedorDTO.Cnpj = Convert.ToInt32(cnpj.Text);
                fornecedorDTO.Telefone = Convert.ToInt32(telefone.Text);
                fornecedorDTO.Nome = nome.Text;
                fornecedorDTO.Email = email.Text;
                fornecedorDTO.TelefoneRepresentante = Convert.ToInt32(telefoneRepresentante.Text);
                fornecedorDTO.NomeRepresentante = nomeRepresentante.Text;
                fornecedorBLL.inserir(fornecedorDTO);

                //alert
                string mensagem = "Fornecedor inserido com sucesso!";
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
            cnpj.Text = " ";
            telefone.Text = " ";
            nome.Text = " ";
            email.Text = " ";
            telefoneRepresentante.Text = " ";
            nomeRepresentante.Text = " ";
        }
    }
}