using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnline.DTO
{
    public class CategoriaDTO
    {
        //id, nome, descrição
        //atributos
        private int id;
        private string nome, descrição;

        //metódos padrões
        public int Id { get => id; set => id = value; }

        //metódos GET e SET personalizados
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
                    throw new Exception("Campo nome é obrigatório!");
                }
            }
            get { return this.nome; }
        }
        public string Descrição
        {
            set
            {
                if (value != string.Empty)
                {
                    this.descrição = value;
                }
                else
                {
                    throw new Exception("Campo descrição obrigatório!");
                }
            }
            get { return this.descrição; }
        }
    }
}