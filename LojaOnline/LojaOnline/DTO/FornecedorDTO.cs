using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnline.DTO
{
    public class FornecedorDTO
    {
        //atributos
        private int id, cnpj, telefone, telefoneRepresentante;
        private string nome, email, nomeRepresentante;

        //metódos padrões
        public int Id { get => id; set => id = value; }

        //metódos GET e SET personalizados
        public int Cnpj
        {
            set
            {
                if (value != 0)
                {
                    this.cnpj = value;
                }
                else
                {
                    throw new Exception("Campo cnpj é obrigatório.");
                }
            }
            get { return this.cnpj; }
        }
        public int Telefone
        {
            set
            {
                if (value != 0)
                {
                    this.telefone = value;
                }
                else
                {
                    throw new Exception("Campo telefone é obrigatório.");
                }
            }
            get { return this.telefone; }
        }
        public string Nome
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {
                    throw new Exception("Campo nome é obrigatório.");
                }
            }
            get { return this.nome; }
        }
        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {
                    throw new Exception("O campo email é obrigatório.");
                }
            }
            get { return this.email; }
        }
        public int TelefoneRepresentante
        {
            set
            {
                if (value != 0)
                {
                    this.telefoneRepresentante = value;
                }
                else
                {
                    throw new Exception("O campo Telefone do Representante é obrigatório.");
                }
            }
            get { return this.telefoneRepresentante; }
        }
        public string NomeRepresentante
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nomeRepresentante = value;
                }
                else
                {
                    throw new Exception("O campo Nome do Representante é obrigatório.");                
                }
            }
            get { return this.nomeRepresentante; }
        }

    }
}