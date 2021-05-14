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
    public partial class formCadCategoria : System.Web.UI.Page
    {
        CategoriaDTO categoriaDTO = new CategoriaDTO();
        CategoriaBLL categoriaBLL = new CategoriaBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Salvar_Click(object sender, EventArgs e)
        {
            try
            {
                categoriaDTO.Nome = nome.Text;
                categoriaDTO.Descrição = descrição.Text;
                categoriaBLL.inserir(categoriaDTO);

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
            nome.Text = " ";
            descrição.Text = " ";
        }
    }
}