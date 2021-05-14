using LojaOnline.DAL;
using LojaOnline.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaOnline.BLL
{
    public class ProdutoBLL
    {
        private MySqlDAL con = new MySqlDAL();

        //metódos CRUD
        public void inserir(ProdutoDTO produto)
        {
            string sql = string.Format($@"INSERT INTO produto VALUES (NULL, '{produto.Nome}', '{produto.Descricao}', 
                                                                            '{produto.Valor}', '{produto.FornecedorId}',
                                                                            '{produto.CategoriaID}', '{produto.Foto}', 
                                                                            '{produto.QuantEstoque}');");
            con.executarSql(sql);
        }

        public void excluir(ProdutoDTO produto)
        {
            string sql = string.Format($@"DELETE FROM produto WHERE id = '{produto.Id}'");
            con.executarSql(sql);
        }
       
        public void alterar(ProdutoDTO produto)
        {
            string sql = string.Format($@"UPDATE produto SET nome = '{produto.Nome}', 
                                                            descrição = '{produto.Descricao}', 
                                                            valor = '{produto.Valor}', 
                                                            fornecedorID = '{produto.FornecedorId}', 
                                                            categoriaID = '{produto.CategoriaID}', 
                                                            foto = '{produto.Foto}', 
                                                            quantidadeEstoque = '{produto.QuantEstoque}');");
            con.executarSql(sql);
        }

        public DataTable consultarID(int Id)
        {
            string sql = string.Format($@"SELECT * FROM produto WHERE id = {Id};");
            return con.ExecutarConsulta(sql);
        }

        public DataTable pesquisar(string condicao)
        {
            string sql = string.Format($@"SELECT p.nd, p.nome, 
                                                p.descricao, p.valor,
                                                c.nome, f.nome, p.foto, 
                                                p,quantidade, FROM produto as p, 
                                                categoria as c, fornecedor as f
                                                WHERE p.categoriaID = c.id and
                                                p.fornecedorID = f.id and
                                                {condicao} ORDER BY p.id;");
            return con.ExecutarConsulta(sql);
        }
    }
}