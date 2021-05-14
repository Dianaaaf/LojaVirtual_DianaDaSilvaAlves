using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LojaOnline.DTO
{
    public class ProdutoDTO
    {
        ///atributos
        private int id, quantEstoque, categoriaId, fornecedorId;
        private string nome, descricao, foto;
        private double valor;

        ///metódos padrões
        public int Id { get => Id; set => Id = value; }
        public int FornecedorId { get => fornecedorId; set => fornecedorId = value; }
        public string Foto { get => foto; set => foto = value; }
        public double Valor { get => valor; set => valor = value; }


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
        public string Descricao
        {
            set
            {
                if(value!= string.Empty)
                {
                    this.descricao = value;
                }
                else
                {
                    throw new Exception("Campo descrição é obrigatório!");
                }
            }
            get { return this.descricao; }
        }
        public int QuantEstoque
        {
            set
            {
                if(value != 0)
                {
                    this.quantEstoque = value;
                }
                else
                {
                    throw new Exception("Campo quantidade é obrigatório!");
                }
            }
            get { return this.quantEstoque; }
        }
        public int CategoriaID
        {
            set
            {
                if (value != 0)
                {
                    this.categoriaId = value;
                }
                else
                {
                    throw new Exception("Campo categoria é obrigatório!");
                }
            }
            get
            { return this.categoriaId; }
        }
    }
}