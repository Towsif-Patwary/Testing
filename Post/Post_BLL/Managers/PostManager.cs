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
    public class PostManager : BaseManager<tbl_Post>
    {
        public PostManager() : base(new PostRepository())
        {
        }
    }
}
