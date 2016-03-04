using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FiboWeb.Models;

namespace FiboWeb.Pages
{
    public partial class CreateNewUserPage : System.Web.UI.Page
    {
        private User _newUser;

        protected void Page_Load(object sender, EventArgs e)
        {
            _newUser = new User();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            _newUser.LoginName = txtLoginName.Text;
            _newUser.FirstName = txtFirstName.Text;
            _newUser.LastName = txtLastName.Text;
            _newUser.Password = txtPassword.Text;

            _newUser.RegisterUser();
        }
    }
}