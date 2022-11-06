using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(wonderzoo_web.Startup))]
namespace wonderzoo_web
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
