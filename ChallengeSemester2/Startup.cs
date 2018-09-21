using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ChallengeSemester2.Startup))]
namespace ChallengeSemester2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
