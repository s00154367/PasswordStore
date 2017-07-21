using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
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
            int id = Convert.ToInt32(User.Identity);
            int webid = Convert.ToInt32(ddlWebsite.SelectedItem.Value);            
            string user = username.Text;
            string _email = email.Text;
            string pass = password.Text;
            string Ainfo = info.Text;

            SqlConnection connection = new SqlConnection("DefaultConnection");
            string query = "Insert into Websites(WebsiteID,Username,Password,AdditionalInfo,email) Values (" + webid + "," + user + "," + pass + "," + Ainfo + "," + _email + " )";
            SqlCommand insertQuery = new SqlCommand(query,connection);
            insertQuery.ExecuteNonQuery();

            
        
        }
    }
}