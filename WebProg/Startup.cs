using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebProg.Startup))]
namespace WebProg
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
