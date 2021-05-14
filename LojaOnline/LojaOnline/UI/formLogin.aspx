<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formLogin.aspx.cs" Inherits="LojaOnline.UI.formLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Image ImageUrl="~/IMG/logo.jpg" AlternateText="Imagem não carregada" runat="server" />
            <h1>Acesso ao Sistema</h1>
        </div>
        <div>
            <asp:Label for="txtEmail" Text="Email" runat="server" CssClass="form-control"></asp:Label>
            <asp:TextBox type="email" ID="textEmail" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <asp:Label for="txtSenha" Text="Senha" runat="server" CssClass="form-control"></asp:Label>
            <asp:TextBox type="password" ID="textSenha" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
            <asp:Button Text="Entrar" ID="btnEntrar" class="btn btn-primary" runat="server" OnClick="btnEntrar_Click" CssClass="btn btn-success"/>
        <div>
            <asp:LinkButton Text="Cadastrar" ID="btnCadastrar" class="btn btn-link mb-a" runat="server" OnClick="btnCadastrar_Click" CssClass="btn btn-info"></asp:LinkButton>
            <asp:LinkButton Text="Esqueci minha Senha" ID="btnEsqueciSenha" class="btn btn-link mb-a" runat="server" OnClick="btnEsqueciSenha_Click" CssClass="btn btn-danger"></asp:LinkButton>
        </div>
        <div class="form-group">
            <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
            <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>    
        </div>
    </form>
    <footer>
        Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
    </footer>
</body>
</html>
