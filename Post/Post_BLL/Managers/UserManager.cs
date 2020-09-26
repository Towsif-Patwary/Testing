using Post_BLL.BaseManager;
using Post_DAL.Repositories;
using Post_Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Post_BLL.Managers
{
    public class UserManager : BaseManager<tbl_User>
    {
        public UserManager() : base(new UserRepository())
        {
        }
    }
}
