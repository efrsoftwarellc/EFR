using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EFRSoftware.com.Startup))]
namespace EFRSoftware.com
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
