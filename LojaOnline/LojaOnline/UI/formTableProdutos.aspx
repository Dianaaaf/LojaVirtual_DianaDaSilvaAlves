<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTableProdutos.aspx.cs" Inherits="LojaOnline.UI.formTableProdutos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Tabela de Produtos</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Button ID="BtnNovo" runat="server" Text="Novo Produto" OnClick="BtnNovo_Click" class="btn btn-danger"/>
            <asp:TextBox ID="txb1" placeholder="Pesquisar por parte do nome" runat="server" CssClass="form-control"></asp:TextBox> 
            <asp:Button ID="BtnPesquisar" runat="server" Text="Pesquisar" OnClick="BtnPesquisar_Click" CssClass="btn btn-info"/>
        </div>

        <div>
            <asp:GridView ID="GridViewProdutos" AutoGenerateColumns="false" OnRowEditing="GridProdutos_RowEditing"
                            OnRowCancelingEdit="GridProdutos_RowCancelingEdit" OnRowUpdated="GridProdutos_RowUpdate"
                            DataKeyNames="id" OnRowDeleting="GridProdutos_RowDeleting" runat="server">
            </asp:GridView>
            <Columns class="container">
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


                    <!--Campos que permitem edição-->
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbNome" Text='<%#Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbDescricao" Text='<%#Bind("descricao") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbValor" Text='<%#Bind ("valor") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:FileUpload ID="fileupFoto" runat="server"></asp:FileUpload>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbQuant" Text='<%#Bind("quantidadeEstoque") %>'></asp:TextBox>
                    </EditItemTemplate>


                    <!--Botões UPDATE e CANCELAR-->
                     <asp:CommandField ShowEditButton="true" ButtonType="Image" HeaderText="Editar"
                         EditImageUrl="~/IMG/editar.png" CancelImageUrl="~/IMG/cancelar.png"
                         UpdateImageUrl="~/IMG/atualizar.png" runat="server">
                   </asp:CommandField>

                <asp:CommandField ShowDeleteButton="true" ButtonType="Image"
                                    DeleteText="Excluir" DeleteImageUrl="~/IMG/deletar.png" class="btn btn-danger">
                </asp:CommandField> 
            </Columns>
        </div>
    </form>
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
</body>
</html>
