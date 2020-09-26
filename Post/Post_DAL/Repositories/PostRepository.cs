using Post_DAL.Base;
using Post_Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Post_DAL.Repositories
{
    public class PostRepository : Repository<tbl_Post>
    {
        public PostRepository() : base(new PostDBEntities())
        {
        }
    }
}
