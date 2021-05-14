using LojaOnline.DTO;
using LojaOnline.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LojaOnline.UI
{
    public partial class formLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                //Instanciar o objeto ClienteDTO
                ClienteDTO clienteDTO = new ClienteDTO();
                clienteDTO.Email = textEmail.Text;
                clienteDTO.Senha = textSenha.Text;

                //Instanciar o objeto ClienteBLL
                ClienteBLL clienteBLL = new ClienteBLL();
                if (clienteBLL.Autenticar(clienteDTO.Email, clienteDTO.Senha))
                {
                    Session["emailUsuario"] = clienteDTO.Email;
                    msgOK.Visible = true;
                    msgOK.Text = "Sejam bem-vindos!";
                    Response.Redirect("formPagAdministrador.aspx");
                }
                else
                {
                    msgErro.Visible = true;
                    msgErro.Text = "Cliente não encontrado!";
                }
            }
            catch(Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("formCadCliente.aspx");
        }

        protected void btnEsqueciSenha_Click(object sender, EventArgs e)
        {
            try
            {
                // Instanciar o objeto ClienteDTO
                ClienteDTO clienteDTO = new ClienteDTO();
                clienteDTO.Email = textEmail.Text;
                clienteDTO.Senha = textSenha.Text;
                //Instanciar o objeto ClienteBLL
                ClienteBLL clienteBLL = new ClienteBLL();
                msgOK.Visible = true;
                string senha = clienteBLL.RecuperarSenha(clienteDTO.Email);
                msgOK.Text = senha;

                textSenha.Text = senha;
            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;

            }
        }
    }
}