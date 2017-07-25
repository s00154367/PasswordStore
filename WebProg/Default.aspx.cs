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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}