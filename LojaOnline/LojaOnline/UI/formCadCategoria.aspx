<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCadCategoria.aspx.cs" Inherits="LojaOnline.UI.formCadCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Cadastro de Categoria</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
    <nav>
        <div>
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Inicial" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/formTableProdutos.aspx" Text="Produtos" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkVoltar" NavigateUrl="~/UI/formLogin.aspx" Text="Principal" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkCadProdutos" NavigateUrl= "~/UI/formCadProduto.aspx" Text="Cadastro de Produtos" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkCadCliente" NavigateUrl="~/UI/formCadCliente.aspx" Text="Cadastro de Cliente" runat="server"></asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLinkCadFornecedor" NavigateUrl="~/UI/formCadFornecedor.aspx" Text="Cadastro de Fornecedor" runat="server"></asp:HyperLink>
                </li>
            </ul>
        </div>
    </nav>

          <div>
           <asp:HiddenField ID="id" runat="server" />
                  <!--id, nome, descrição-->

                <div>
                    <asp:Label for="nome" Text="Nome" runat="server"></asp:Label>
                    <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                </div>
                
                <div>
                    <asp:Label for="descrição" Text="Descrição" runat="server"></asp:Label>
                    <asp:TextBox ID="descrição" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Button ID="salvar" runat="server" Text="Salvar" OnClick="Salvar_Click" class="btn btn-success"/>
                    <asp:Button ID="cancelar" runat="server" Text="Cancelar" OnClick="Cancelar_Click" class="btn btn-danger"/>
                </div>
                <div class="form-group">
                    <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                    <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                </div>
            </div>
    </form>
    <footer>
        <div class="footer-copy-right">
            Copyright &copy; Desenvolvido por Diana Alves. Todos os direitos reservados.
        </div>
    </footer>
</body>
</html>
