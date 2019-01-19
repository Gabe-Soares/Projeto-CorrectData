using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CorrectData_Contatos.Startup))]
namespace CorrectData_Contatos
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
