using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using HouseBLL;
using HouseModel;

namespace MVCHouse.Controllers
{
    public class HouseController : Controller
    {
        //
        // GET: /House/
        HouseManager houseManager = new HouseManager();

        [HttpGet]
        public ActionResult Edit(int id)
        {
            House house = houseManager.GetHouseById(id);
            return View(house);
        }

        [HttpPost]
        public ActionResult Edit(House house)
        {
            if (houseManager.UpdateHouse(house,house.HouseId))
            {
                return Content("<script>alert('更新成功！');location.href='" + Url.Content("~/House/Index") + "'</script>'");
            }
            return View(house);
        }

        [HttpGet]
        public ActionResult Delete(int id)
        {
            House house = houseManager.GetHouseById(id);
            return View(house);
        }

        [HttpPost]
        public ActionResult Delete(House house,int id)
        {
            if (houseManager.DeleteHouse(id))
            {
                return Content("<script>alert('删除成功！');location.href='" + Url.Content("~/House/Index") + "'</script>'");
            }
            return View(house);
        }
        public ActionResult Index()
        {
            return View();
        }

    }
}
