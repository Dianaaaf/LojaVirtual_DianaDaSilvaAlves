<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formViewFornecedor.aspx.cs" Inherits="LojaOnline.UI.formViewFornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Listar Fornecedores</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div class="text-center" class="custom-control-inline">
            <asp:Label ID="lblListar" Text="Clique aqui para listar todos os fornecedores" runat="server" CssClass="form-control"></asp:Label>
            <asp:Button ID="btnListar" Text="Listar" runat="server" OnClick="BtnListar_Click" CssClass="btn btn-success"/>
        </div>

        <div>
            <!--id, cnpj, telefone, telefoneRepresentante, nome, email, nomeRepresentante-->
            <asp:GridView ID="GridListarFornecedores"
                            AutoGenerateColumns="false"
                            DataKeyNames="Fornec"
                            runat="server">
            </asp:GridView>

            <Columns class="container">
                <asp:TemplateField>
                    <ItemTemplate HeaderText="Código">
                        <asp:Label ID="LabelCod" runat="server" Text='<%#Eval("id") %>'</asp:Label>
                    </ItemTemplate>
                <asp:TemplateField>
                    
                <asp:TemplateField HeaderText="CNPJ">
                    <ItemTemplate>
                        <asp:Label ID="LabelCNPJ" runat="server" Text='<%#Eval("cnpj") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
                <asp:TemplateField HeaderText="Telefone">
                    <ItemTemplate>
                        <asp:Label ID="LabelTelefone" runat="server" Text='<%#Eval("telefone") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Telefone Rep.">
                    <ItemTemplate>
                        <asp:Label ID="LabelTelRep" runat="server" Text='<%#Eval ("telefoneRepresentante") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label ID="LabelNome" runat="server" Text='<%#Eval ("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email"
                    <ItemTemplate>
                        <asp:Label ID="LabelEmail" runat="server" Text='<%#Eval ("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Nome Rep.">
                    <ItemTemplate>
                        <asp:Label ID="LabelNomeRep" runat="server" ImageUrl='<%#Eval ("nomeRepresentante")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
          </Columns>
        </div>
    </form>
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
</body>
</html>