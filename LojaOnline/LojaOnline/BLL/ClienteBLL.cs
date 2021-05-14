using LojaOnline.DAL;
using LojaOnline.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace LojaOnline.BLL
{
    public class ClienteBLL
    {
        //id, nome, cpf, endereço, telefone, email, senha
        //inserir, excluir, alterar, pesquisar, recuperar senha, consultar pelo email, autenticar

        private MySqlDAL con = new MySqlDAL();

        public void inserir(ClienteDTO cliente)
        {
            string sql = string.Format($@"INSERT INTO ciente VALUES (NULL,
                                                                     '{cliente.Nome}',
                                                                     '{cliente.CPF}',
                                                                     '{cliente.Endereço}',
                                                                     '{cliente.Telefone}',
                                                                     '{cliente.Email}',
                                                                     '{cliente.Senha}')");
            con.executarSql(sql);
        }

        internal object pesquisar(string pesquisa)
        {
            throw new NotImplementedException();
        }

        public void excluir(ClienteDTO cliente)
        {
            string sql = string.Format($@"DELETE FROM cliente WHERE id = '{cliente.Id}'");
            con.executarSql(sql);
        }

        public void alterar(ClienteDTO cliente)
        {
            string sql = string.Format($@"UPDATE cliente SET nome = '{cliente.Nome}',
                                                             cpf = '{cliente.CPF}',
                                                             endereço = '{cliente.Endereço}',
                                                             telefone = '{cliente.Telefone}',
                                                             email = '{cliente.Email}',
                                                             senha = '{cliente.Senha}'");
            con.executarSql(sql);
        }

        public void pesquisar(ClienteDTO cliente)
        {
            string sql = string.Format($@"SELECT c.nome, c.cpf, c.endereço, c.telefone,
                                                 c.email, c.senha");
            con.executarSql(sql);
        }

        public string RecuperarSenha(string email)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE email '{email}'");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return dt.Rows[0]["senha"].ToString();
            }
            else
            {
                return "Usuário não encontrado!";
            }
        }

        

        public Boolean Autenticar(string email, string senha)
        {
            string sql = string.Format($@"SELECT * FROM cliente WHERE email '{email}'
                                        and senha= '{senha}'");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}