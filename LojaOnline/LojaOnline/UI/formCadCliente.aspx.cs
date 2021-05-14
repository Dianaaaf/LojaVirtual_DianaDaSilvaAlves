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
    public partial class formCadCliente : System.Web.UI.Page
    {
        ClienteDTO clienteDTO = new ClienteDTO();
        ClienteBLL clienteBLL = new ClienteBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                clienteDTO.Nome = nome.Text;
                clienteDTO.CPF = Convert.ToInt32(cpf.Text);
                clienteDTO.Endereço = endereco.Text;
                clienteDTO.Telefone = Convert.ToInt32(telefone.Text);
                clienteDTO.Email = email.Text;
                clienteDTO.Senha = senha.Text;
                clienteBLL.inserir(clienteDTO);

                //alert
                string mensagem = "Cliente inserido com sucesso!";
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
            cpf.Text = " ";
            endereco.Text = " ";
            telefone.Text = " ";
            email.Text = " ";
            senha.Text = " ";
        }
    }
}