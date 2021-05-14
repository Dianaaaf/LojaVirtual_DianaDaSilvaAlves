<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formPagAdministrador.aspx.cs" Inherits="LojaOnline.UI.formPagAdministrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Página do Administrador</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <ul>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkCadProd" runat="server"
                                   Text="Cadastrar Produtos" NavigateUrl="~/UI/formCadProduto.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkeralProd" runat="server"
                                   Text="Consulta, Edição e Exclusão de Produtos"
                                   NavigateUrl="~/UI/formTableProdutos.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkGeralCli" runat="server"
                                   Text="Consultar e Excluir Clientes"
                                   NavigateUrl="~/UI/formTableCliente.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkCadForn" runat="server"
                                   Text="Cadastrar Fornecedor" NavigateUrl="~/UI/formCadFornecedor.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkGeralForn" runat="server"
                                   Text="Consulta, Edição e Exclusão de Fornecedores"
                                   NavigateUrl="~/UI/formTableFornecedor.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkCadCateg" runat="server"
                                   Text="Cadastrar Categorias" NavigateUrl="~/UI/formCadCategoria.aspx"></asp:HyperLink>
                </li>
                <li class="list-group-item">
                    <asp:HyperLink ID="HyperLinkGeralCateg" runat="server"
                                   Text="Consulta, Edição e Exclusão de Categorias"
                                   NavigateUrl="~/UI/formTableCategoria.aspx"></asp:HyperLink>
                </li>
            </ul>
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
        </div>
    </form>
</body>
</html>
