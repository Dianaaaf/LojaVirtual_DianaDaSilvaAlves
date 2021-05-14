<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTableCategoria.aspx.cs" Inherits="LojaOnline.UI.formTableCategoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Tabela de Categorias</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Button ID="BtnNovo" runat="server" Text="Nova Categoria" OnClick="BtnNovo_Click" class="btn btn-danger"/>
            <asp:TextBox ID="txb1" placeholder="Pesquisar por parte do nome" runat="server" CssClass="form-control"></asp:TextBox> 
            <asp:Button ID="BtnPesquisar" runat="server" Text="Pesquisar" OnClick="BtnPesquisar_Click" CssClass="btn btn-info"/>
        </div>

        <div>
            <asp:GridView ID="GridViewCategoria" AutoGenerateColumns="false" OnRowEditing="GridCategoria_RowEditing"
                            OnRowCancelingEdit="GridCategoria_RowCancelingEdit" OnRowUpdated="GridCategoria_RowUpdate"
                            DataKeyNames="id" OnRowDeleting="GridCategoria_RowDeleting" runat="server">
            </asp:GridView>
                <a href="formCadCategoria.aspx">Fazer cadastro de nova Categoria</a>
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
                        <asp:Label ID="LabelDesc" runat="server" Text='<%#Eval("descrição") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                    <!--Campos que permitem edição-->
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbNome" Text='<%#Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbDesc" Text='<%#Bind("descrição") %>'></asp:TextBox>
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
