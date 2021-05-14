using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnline.DTO
{
    public class ClienteDTO
    {
        //id, nome, cpf, endereço, telefone, email, senha
        ///atributos
        private int id, cpf, telefone;
        private string nome, endereço, email, senha;

        ///metódos padrões
        public int Id { get => Id; set => Id = value; }

        ///metódos GET e SET personalizados
        public string Nome
        {
            set
            {
                if
                    (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {
                    throw new Exception("Campo nome é obrigatório!");
                }
            }
            get { return this.nome; }
        }
        public int CPF
        {
            set
            {
                if (value != 0)
                {
                    this.cpf = value;
                }
                else
                {
                    throw new Exception("Campo CPF é obrigatório!");
                }
            }
            get { return this.cpf; }
        }
        public string Endereço
        {
            set
            {
                if (value != string.Empty)
                {
                    this.endereço = value;
                }
                else
                {
                    throw new Exception("Campo endereço é obrigatório!");
                }
            }
            get { return this.endereço; }
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
                    throw new Exception("Campo telefone é obrigatório!");
                }
            }
            get
            { return this.telefone; }
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
                    throw new Exception("Campo email é obrigatório!");
                }
            }
            get { return this.email; }
        }

        public string Senha
        {
            set
            {
                if (value != string.Empty)
                {
                    this.senha = value;
                }
                else
                {
                    throw new Exception("Campo senha é obrigatório!");
                }
            }
            get { return this.senha; }
        }
    }
}