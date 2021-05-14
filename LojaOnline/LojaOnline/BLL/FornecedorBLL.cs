using LojaOnline.DTO;
using LojaOnline.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace LojaOnline.BLL
{
    public class FornecedorBLL
    {
        private MySqlDAL con = new MySqlDAL();

        //inserir, excluir, alterar, pesquisar
        //id, cnpj, telefone, telefoneRepresentante, nome, email, nomeRepresentante

        public void inserir(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"INSERT INTO fornecedor VALUES (NULL,
                                                                        '{fornecedor.Cnpj}',
                                                                        '{fornecedor.Telefone}',
                                                                        '{fornecedor.TelefoneRepresentante}',
                                                                        '{fornecedor.Nome}',
                                                                        '{fornecedor.Email}',
                                                                        '{fornecedor.NomeRepresentante}')");
            con.executarSql(sql);
        }

        internal object pesquisar(string pesquisa)
        {
            throw new NotImplementedException();
        }

        public void excluir(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"DELETE FROM fornecedor WHERE id = '{fornecedor.Id}'");
            con.executarSql(sql);
        }

        public void alterar(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"UPDATE fornecedor SET cnpj = '{fornecedor.Cnpj}',
                                                                telefone = '{fornecedor.Telefone}',
                                                                telefoneRepresentante = '{fornecedor.TelefoneRepresentante}',
                                                                nome = '{fornecedor.Nome}',
                                                                email = '{fornecedor.Email}',
                                                                nomeRepresentante = '{fornecedor.NomeRepresentante}'");
            con.executarSql(sql);
        }

        public void pesquisar(FornecedorDTO fornecedor)
        {
            string sql = string.Format($@"SELECT f.cnpj, f.telefone, f.telefoneRepresentante,
                                                 f.nome, f.email, f.nomeRepresentante");
            con.executarSql(sql);
        }
    }
}