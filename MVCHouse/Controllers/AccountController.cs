using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using HouseBLL;
using HouseModel;

namespace MVCHouse.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        UserManager userManager = new UserManager();

        public ActionResult LogIn(string username, string password)
        {            
            if (userManager.LogIn(username, password))
            {
                return View("Index");
            }
            else
            {
                return View("Login");
            }
        }

        [HttpGet]
        public ActionResult Register()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Register(User user)
        {
            if (ModelState.IsValid)
            {
                if (userManager.Register(user))
                {
                    return Content("<script>alert('注册成功！');window.location='" + Url.Content("~/Account/Login") + "'</script>");
                }
                else
                {
                    ModelState.AddModelError("RegisterError", "注册失败！");
                }
            }
            return View("Register", user);
        }

        public ActionResult Index()
        {
            return View();
        }

    }
}
