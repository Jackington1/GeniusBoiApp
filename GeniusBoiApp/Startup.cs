using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GeniusBoiApp.Startup))]
namespace GeniusBoiApp
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
