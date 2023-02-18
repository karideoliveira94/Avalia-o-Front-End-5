using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waAvaliacaoFrontEnd
{
    public partial class Formulario : System.Web.UI.Page
    {
        public object GridView2 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            //capturar a string de conexão
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("/MyWebSiteRoot");
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["ConnectionString"];
            //cria um objeto de conexão
            SqlConnection con = new SqlConnection();
            con.ConnectionString = connString.ToString();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into ListaDeDadosCadastrados (nome,cpf,telefone,endereco,email,mensagem) values (@nome,@cpf,@telefone,@endereco,@email,@mensagem)";
            cmd.Parameters.AddWithValue("nome", txbNomeCompleto.Text);
            cmd.Parameters.AddWithValue("cpf", txbCpf.Text);
            cmd.Parameters.AddWithValue("telefone", txbTelefone.Text);
            cmd.Parameters.AddWithValue("endereco", txbEndereco.Text);
            cmd.Parameters.AddWithValue("email", txbEmail.Text);
            cmd.Parameters.AddWithValue("mensagem", txbMensagem.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();            
        }
    }
}