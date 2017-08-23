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
            //Tryed to implement Security but was not successful
            /*if (!Request.IsSecureConnection)
            {
                string url = ConfigurationManager.AppSettings["SecurePath"] + "Default.aspx";
                Response.Redirect(url);
            }*/
            Response.Cookies["CurUser"].Value = User.Identity.Name;
            Response.Cookies["CurUser"].Expires = DateTime.Now.AddDays(1);

            Response.Write("<script>window.opener.location.href = window.opener.location.href </script>");
            GridView1.DataBind();
        }



        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            int selected = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[0].Text);
            string link = "";
            string Name = "";
            string pass = "";
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            connection.Open();
            try
            {
                string query = "SELECT [WebsiteList].[Link],[Logins].[Username], [Logins].[password] FROM [WebsiteList] INNER JOIN [Logins] on [Logins].[WebsiteID] = [WebsiteList].[Id] WHERE [Logins].[Id] = @sel ";
                SqlCommand selectQuery = new SqlCommand(query, connection);
                selectQuery.Parameters.AddWithValue("@sel", selected);
                //string answer = Convert.ToString(selectQuery.ExecuteScalar());
                using (SqlDataReader reader = selectQuery.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        link = string.Format("{0}", reader["Link"]);
                        Name = string.Format("{0}", reader["Username"]);
                        pass = string.Format("{0}", reader["password"]);
                    }
                }


                connection.Close();

                //Response.Redirect(link);
                //Response.Write("<script>alert('Username: " + Name + "   || Password: " + pass + " ');</script>");

                //tried to get the alert box containing the username and password to display on the login page of whichever site you get directed to. 
                Page.ClientScript.RegisterStartupScript(typeof(Page), "MessagePopUp", "alert('Username: " + Name + "   || Password: " + pass + " '); window.location.href = '" + link + "';", true);

            }
            catch (Exception exc)
            {
                exc.ToString();
            }
        }
    }
}