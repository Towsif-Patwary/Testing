using Post_BLL.Managers;
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

        public ActionResult Index()
        {
            return View(_postManager.GetAll());
        }

    }
}