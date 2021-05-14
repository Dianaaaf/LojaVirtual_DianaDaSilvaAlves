<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="LojaOnline.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="..//assets/css/bootstrap.min.css" />
    <title>Loja Online</title>
</head>
<body>

<form id="form1" runat="server" class="form-group">
     <nav>
         <div>
            <ul>
               <li><asp:HyperLink ID="HyperLinkInicial" NavigateUrl="~/UI/index.aspx" class="list-group-item"
                                  Text="Página Inicial" runat="server"></asp:HyperLink>
               </li>
               <li><asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/formTableProdutos.aspx" class="list-group-item"
                                   text="Página de Produtos" runat="server"></asp:HyperLink>
               </li>
                <li><asp:HyperLink ID="HyperLinkLogin" NavigateUrl="~/UI/formLogin.aspx" class="list-group-item"
                                    text="Página para Login" runat="server"></asp:HyperLink>
                </li>
             </ul>
          </div>
      </nav>
      <main>
          <asp:Image ImageUrl="~/IMG/welcome.png" AlternateText="Imagem não carregada." runat="server" />
      </main>  
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
</form>
</body>
</html>
