using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FiboWeb.Startup))]
namespace FiboWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app)
        {
            string fiboConnection = System.Configuration.ConfigurationManager.ConnectionStrings["FiboConnection"].ConnectionString;
            ConfigureAuth(app);
        }
    }
}
