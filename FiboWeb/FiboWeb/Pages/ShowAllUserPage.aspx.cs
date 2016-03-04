using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FiboWeb.Models;

namespace FiboWeb.Pages
{
    public partial class ShowAllUserPage : Page
    {
        public List<User> AllUser { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            AllUser = Models.User.GetAllUser();
            repUser.DataSource = AllUser;
            repUser.DataBind();
        }
    }
}