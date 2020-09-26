using PagedList;
using Post_BLL.Managers;
using Post_Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Post.Controllers
{
    public class HomeController : Controller
    {
        private PostManager _postManager = new PostManager();
        private PostDBEntities db = new PostDBEntities();

        //public ActionResult Index()
        //{
        //      DateTime.Now
        //    return View(_postManager.GetAll());
        //}

        public ActionResult Index(string search, int? page)
        {
            return View(db.tbl_Post.Where(x => x.PostName.Contains(search) || search == null).ToList().ToPagedList(page ?? 1, 2));
        }

    }
}