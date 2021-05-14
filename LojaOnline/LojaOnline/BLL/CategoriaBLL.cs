using LojaOnline.DAL;
using LojaOnline.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaOnline.BLL
{
    public class CategoriaBLL
    {
        private MySqlDAL con = new MySqlDAL(); 

        //Métodos mínimos: inserir, excluir, alterar, pesquisar
        //id, nome, descrição

        public void inserir(CategoriaDTO categoria)
        {
            string sql = string.Format($@"INSERT INTO categoria VALUES(NULL, '{categoria.Nome}',
                                                                             '{categoria.Descrição}')");
            con.executarSql(sql);
        }

        public void excluir(CategoriaDTO categoria)
        {
            string sql = string.Format($@"DELETE FROM categoria WHERE id = '{categoria.Id}'");
            con.executarSql(sql);
        }

        internal object pesquisar(string pesquisa)
        {
            throw new NotImplementedException();
        }

        public void alterar(CategoriaDTO categoria)
        {
            string sql = string.Format($@"UPDATE categoria SET nome = '{categoria.Nome}',
                                                               descrição = '{categoria.Descrição}'");
            con.executarSql(sql);
        }

        public void pesquisar(CategoriaDTO categoria)
        {
            string sql = string.Format($@"SELECT c.id, c.nome, c.descrição");
            con.ExecutarConsulta(sql);
        }
    }
}