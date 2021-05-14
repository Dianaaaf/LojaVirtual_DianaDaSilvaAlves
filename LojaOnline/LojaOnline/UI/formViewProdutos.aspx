<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formViewProdutos.aspx.cs" Inherits="LojaOnline.UI.formViewProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Listar Produtos</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div class="text-center" class="custom-control-inline">
            <asp:Label ID="lblListar" Text="Clique aqui para listar todos os produtos" runat="server" class="form-control"></asp:Label>
            <asp:Button ID="btnListar" Text="Listar" runat="server" OnClick="BtnListar_Click" class="btn btn-success"/>
        </div>

        <div>
            <!--id, quantEstoque, categoriaId, fornecedorId, nome, descricao, foto, valor-->
            <asp:GridView ID="GridListarProdutos"
                            AutoGenerateColumns="false"
                            DataKeyNames="Prod"
                            runat="server">
            </asp:GridView>

            <Columns class="container">
                <asp:TemplateField>
                    <ItemTemplate HeaderText="Código">
                        <asp:Label ID="LabelCod" runat="server" Text='<%#Eval("id") %>'</asp:Label>
                    </ItemTemplate>
                <asp:TemplateField>
                    
                <asp:TemplateField HeaderText="QuantEstoque">
                    <ItemTemplate>
                        <asp:Label ID="LabelEstoque" runat="server" Text='<%#Eval("quantidadeEstoque") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
                <asp:TemplateField HeaderText="Categoria">
                    <ItemTemplate>
                        <asp:Label ID="LabelCategoria" runat="server" Text='<%#Eval("categoriaID") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Fornecedor">
                    <ItemTemplate>
                        <asp:Label ID="LabelFornecedor" runat="server" Text='<%#Eval ("fornecedorID") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label ID="LabelNome" runat="server" Text='<%#Eval ("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Descrição">
                    <ItemTemplate>
                        <asp:Label ID="LabelDesc" runat="server" Text='<%#Eval ("descrição") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Foto">
                    <ItemTemplate>
                        <asp:Image ID="LabelFoto" runat="server" ImageUrl='<%# "~/IMG/Produtos/produto.png" + Eval("foto")%>' Width="240" Height="160"></asp:Image>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Valor">
                        <ItemTemplate>
                            <asp:Label ID="LabelValor" runat="server" Text='<%#Eval("valor") %>'></asp:Label>
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
