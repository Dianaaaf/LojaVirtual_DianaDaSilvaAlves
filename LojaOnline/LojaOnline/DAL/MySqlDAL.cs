using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace LojaOnline.DAL
{
    /// apostila -> apostila 63 e 64
    public class MySqlDAL
    {
        ///static -> não precisa criar objeto para acessar o valor
        private static string server = "localhost";
        private static string database = "lojaonline";
        private static string user = "root";
        private static string password = " ";

        private string stringConexao = "Server: " + server + "; Database: " + database + 
            "; UID: " + user + "; PWD: " + password;


        public MySqlConnection conexao;
        ///metódo para criar conexão
        public void conectar()
        {
            try 
            { 
                conexao = new MySqlConnection(stringConexao);
                conexao.Open();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível conectar ao banco de dados! Erro: " + e.Message);
            }
            ///try->capta a exceção ; catch->trata ela ; finally->executa algo obrigatório

        }

        ///metódos para manipulação
        ///metódo sem retorno
        public void executarSql(string sql)
        {
            try ///só coloca no banco, não puxa nada de volta
            {
                conectar();
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a instrução! Erro: " + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        ///metódo com retorno
        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conexao);
                dados.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a consulta" + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}