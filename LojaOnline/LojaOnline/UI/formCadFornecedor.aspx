<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formCadFornecedor.aspx.cs" Inherits="LojaOnline.UI.formCadFornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Cadastro de Fornecedor</title>
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
                    <asp:HyperLink ID="HyperLinkCadCategoria" NavigateUrl="~/UI/formCadCategoria.aspx" Text="Cadastro de Categoria" runat="server"></asp:HyperLink>
                </li>
            </ul>
        </div>
    </nav>

          <div>
           <asp:HiddenField ID="id" runat="server" />
                  <!--id, cnpj, telefone, nome, email, telefoneRepresentante, nomeRepresentante-->

                <div>
                    <asp:Label for="cnpj" Text="CNPJ" runat="server"></asp:Label>
                    <asp:TextBox ID="cnpj" runat="server"></asp:TextBox>
                </div>
                
                <div>
                    <asp:Label for="telefone" Text="Telefone" runat="server"></asp:Label>
                    <asp:TextBox ID="telefone" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label for="nome" Text="Nome" runat="server"></asp:Label>
                    <asp:TextBox ID="nome" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label for="email" Text="Email" runat="server"></asp:Label>
                    <asp:TextBox ID="email" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label for="telefoneRepresentante" Text="Telefone do Representante" runat="server"></asp:Label>
                    <asp:TextBox ID="telefoneRepresentante" runat="server"></asp:TextBox>
                </div>
                <div>
                    <asp:Label for="nomeRepresentante" Text="Nome Representante" runat="server"></asp:Label>
                    <asp:TextBox ID="nomeRepresentante" runat="server"></asp:TextBox>
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
