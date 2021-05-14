<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formPagCliente.aspx.cs" Inherits="LojaOnline.UI.formPagCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Página do Cliente</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Label ID="LabelTitle" runat="server" Text="Meu Perfil" CssClass="form-control"></asp:Label>
        </div>

        <div>
             <asp:GridView ID="GridViewClientes" AutoGenerateColumns="false" OnRowEditing="GridClientes_RowEditing"
                           OnRowCancelingEdit="GridClientes_RowCancelingEdit" OnRowUpdated="GridClientes_RowUpdate"
                           DataKeyNames="id" OnRowDeleting="GridClientes_RowDeleting" runat="server">
            </asp:GridView>

            <Columns class="container"> <!--ALTERAR DADOS DO CLIENTE-->
                    <!--id, nome, cpf, endereço, telefone, email, senha-->
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbNome" Text='<%#Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbCPF" Text='<%#Bind("cpf") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbTelefone" Text='<%#Bind ("telefone") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox  runat="server" ID="txbEmail" Text='<%#Bind ("email") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox  runat="server" ID="txbSenha" Text='<%#Bind ("senha") %>'></asp:TextBox>
                    </EditItemTemplate>
                   <!--BOTÃO PARA ATUALIZAR/ALTERAR-->
                   <asp:Button ID="btnUpdate" runat="server" Text="Atualizar" OnClick="Atualizar_Click" CssClass="btn btn-success"/>
            </Columns>

            <!--VISUALIZAR PRODUTOS-->
            <Columns class="container">
                <asp:Button ID="btnMostrarProdutos" runat="server" Text="Mostrar Produtos" OnClick="MostrarProd_Click" CssClass="btn btn-info"/>

                <asp:TemplateField>
                    <ItemTemplate HeaderText="Código">
                        <asp:Label ID="LabelCod" runat="server" Text='<%#Eval("id") %>'</asp:Label>
                    </ItemTemplate>
                <asp:TemplateField>
                    
                <asp:TemplateField HeaderText="Nome">
                    <ItemTemplate>
                        <asp:Label ID="LabelNome" runat="server" Text='<%#Eval("nome") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   
                <asp:TemplateField HeaderText="Descrição">
                    <ItemTemplate>
                        <asp:Label ID="LabelDescricao" runat="server" Text='<%#Eval("descricao") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Valor">
                    <ItemTemplate>
                        <asp:Label ID="LabelValor" runat="server" Text='<%#Eval ("valor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Fornecedor">
                    <ItemTemplate>
                        <asp:Label ID="LabelFornecedor" runat="server" Text='<%#Eval ("fornecedor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Categoria">
                    <ItemTemplate>
                        <asp:Label ID="LabelCategoria" runat="server" Text='<%#Eval ("categoria") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Foto">
                    <ItemTemplate>
                        <asp:Image ID="LabelFoto" runat="server" ImageUrl='<%# "~/IMG/Produtos/" + Eval("foto")%>' Width="240" Height="160"></asp:Image>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Quantidade">
                        <ItemTemplate>
                            <asp:Label ID="LabelQuant" runat="server" Text='<%#Eval("quantidadeEstoque") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <!--VISUALIZAR FORNECEDORES-->
            <Columns class="container">
                <asp:Button ID="btnMostrarFornecedores" runat="server" Text="Mostrar Fornecedores" OnClick="MostrarFornec_Click" CssClass="btn btn-info"/>

                 <asp:TemplateField>
                    <ItemTemplate HeaderText="Código">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("id") %>'</asp:Label>
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
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval ("nome") %>'></asp:Label>
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
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
    </form>
</body>
</html>
