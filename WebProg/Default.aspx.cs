using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProg
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*if (!Request.IsSecureConnection)
            {
                string url = ConfigurationManager.AppSettings["SecurePath"] + "Default.aspx";
                Response.Redirect(url);
            }*/
            //string currentuser = (string)(Session["CurUser"]);
            Response.Cookies["CurUser"].Value = User.Identity.Name;
            Response.Cookies["CurUser"].Expires = DateTime.Now.AddDays(1);

            //Response.Redirect("../Default.aspx");
            // Response.Redirect(Request.Url.AbsoluteUri);
            Response.Write("<script>window.opener.location.href = window.opener.location.href </script>");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            //string query = "SELECT link FROM ";
            //SqlCommand insertQuery = new SqlCommand(query, connection);
            //insertQuery.Parameters.AddWithValue("@webid", webid);
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            //GridViewRow row = GridView1.SelectedRow;
            //string selected = row.Cells[2].Text;

            int rowIndex = Convert.ToInt32(e.CommandArgument);
            int selected = Convert.ToInt32( GridView1.Rows[rowIndex].Cells[0].Text);
            var dataset = new DataSet();
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            string query = "SELECT [WebsiteList].[Link] FROM [WebsiteList] INNER JOIN [Logins] on [Logins].[WebsiteID] = [WebsiteList].[Id] WHERE [Logins].[Id] = @sel ";
            SqlCommand selectQuery = new SqlCommand(query, connection);
            selectQuery.Parameters.AddWithValue("@sel", selected);

            connection.Open();
            /*selectQuery.ExecuteNonQuery();
            SqlDataReader reader = selectQuery.ExecuteReader();
            string answer = reader.GetValue(1).ToString();

            var dataAdapter = new SqlDataAdapter { SelectCommand = selectQuery };
            dataAdapter.Fill(dataset);
            string answer = dataset.Tables[0].Rows[0].ToString();*/

            string answer = Convert.ToString(selectQuery.ExecuteScalar());

            
            connection.Close();

            Response.Redirect(answer);
        }
    }
}