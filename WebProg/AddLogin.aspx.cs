using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProg
{
    public partial class AddLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Secure Connection
            if (!Request.IsSecureConnection)
            {
               // string url = ConfigurationManager.AppSettings["SecurePath"] + "AddLogin.aspx";
               // Response.Redirect(url);
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {

            string currentUser = User.Identity.Name;

            int webid = Convert.ToInt32(ddlWebsite.SelectedItem.Value);
            string user = username.Text;
            string _email = email.Text;
            string pass = password.Text;
            string Ainfo = info.Text;
            string loguser = User.Identity.Name;
            
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            string query = "Insert into Logins(WebsiteID,Username,Password,AdditionalInfo,[User],Email) Values ( @webid,@user,@pass,@Ainfo,@loguser,@_email)";
            SqlCommand insertQuery = new SqlCommand(query,connection);
            insertQuery.Parameters.AddWithValue("@webid", webid);
            insertQuery.Parameters.AddWithValue("@user" ,user);
            insertQuery.Parameters.AddWithValue("@pass", pass);
            insertQuery.Parameters.AddWithValue("@Ainfo", Ainfo);
            insertQuery.Parameters.AddWithValue("@loguser", User.Identity.Name);  
            insertQuery.Parameters.AddWithValue("@_email", _email);
                      
            connection.Open();
            insertQuery.ExecuteNonQuery();
            connection.Close();
        }

        protected void AddWebsite_Click(object sender, EventArgs e)
        {
            string name = Wname.Text;
            string address = link.Text;
            
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString());
            
            string query = "Insert into WebsiteList(Name,Link) Values (@name,@address)";
            SqlCommand insertQuery = new SqlCommand(query, connection);
            insertQuery.Parameters.AddWithValue("@name", name);
            insertQuery.Parameters.AddWithValue("@address", address);
            connection.Open();
            insertQuery.ExecuteNonQuery();
            connection.Close();
            

            
        }
    }
}