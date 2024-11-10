using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Template_Desafio_Ods_Comunidades.Models
{
    public class Indicador
    {
        public int IdCodigoArquivo { get; set; }
        public int IdCodigoValor { get; set; }

        public double ValorIndicador { get; set; }
        public double Mediana { get; set; }
        public double DesvioPadrao { get; set; }
        public double LimiteSuperior { get; set; }
        public double LimiteInferior { get; set; }
        [ForeignKey("Secretaria")]
        public string SiglaSecretaria { get; set; }
        public string NomeIndicador { get; set; }
        public string IdIndicador { get; set;}
    }
}

