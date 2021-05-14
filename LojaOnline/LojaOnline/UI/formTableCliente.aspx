<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTableCliente.aspx.cs" Inherits="LojaOnline.UI.formTableCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <title>Tabela de Clientes</title>
</head>
<body>
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Button ID="BtnNovo" runat="server" Text="Novo Cliente" OnClick="BtnNovo_Click" class="btn btn-danger"/>
            <asp:TextBox ID="txb1" placeholder="Pesquisar por parte do nome" runat="server" CssClass="form-control"></asp:TextBox> 
            <asp:Button ID="BtnPesquisar" runat="server" Text="Pesquisar" OnClick="BtnPesquisar_Click" CssClass="btn btn-info"/>
        </div>

        <div>
            <asp:GridView ID="GridViewClientes" AutoGenerateColumns="false" OnRowEditing="GridClientes_RowEditing"
                            OnRowCancelingEdit="GridClientes_RowCancelingEdit" OnRowUpdated="GridClientes_RowUpdate"
                            DataKeyNames="id" OnRowDeleting="GridClientes_RowDeleting" runat="server">
            </asp:GridView>
                <a href="formCadCliente.aspx">Fazer cadastro de Cliente</a>
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
                   
                <asp:TemplateField HeaderText="CPF">
                    <ItemTemplate>
                        <asp:Label ID="LabelCPF" runat="server" Text='<%#Eval("cpf") %>'</asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Endereço">
                    <ItemTemplate>
                        <asp:Label ID="LabelEnd" runat="server" Text='<%#Eval ("endereço") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Telefone">
                    <ItemTemplate>
                        <asp:Label ID="LabelTel" runat="server" Text='<%#Eval ("telefone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email"
                    <ItemTemplate>
                        <asp:Label ID="LabelEmail" runat="server" Text='<%#Eval ("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Senha">
                    <ItemTemplate>
                        <asp:Label ID="LabelSenha" runat="server" Text='<%#Eval ("senha")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                    <!--CAMPOS QUE PERITEM EDIÇÃO-->
                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbNome" Text='<%#Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbPF" Text='<%#Bind("cpf") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox runat="server" ID="txbTelefone" Text='<%#Bind ("telefone") %>'></asp:TextBox>
                    </EditItemTemplate>

                    <EditItemTemplate>
                        <asp:TextBox  runat="server" ID="txbEmail" Text='<%#Bind ("email") %>'></asp:TextBox>
                    </EditItemTemplate>
          </Columns>

                 <!--Botões UPDATE e CANCELAR-->
                   <asp:CommandField ShowEditButton="true" ButtonType="Image" HeaderText="Editar"
                         EditImageUrl="~/IMG/editar.png" CancelImageUrl="~/IMG/cancelar.png"
                         UpdateImageUrl="~/IMG/atualizar.png" runat="server">
                   </asp:CommandField>

                <asp:CommandField ShowDeleteButton="true" ButtonType="Image"
                                  DeleteText="Excluir" DeleteImageUrl="~/IMG/deletar.png" class="btn btn-danger">
                </asp:CommandField> 
        </div>
    </form>
      <footer>
            Copyright &copy Desenvolvido por Diana Alves. Todos os Direitos reservados.
      </footer>
</body>
</html>
