using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FastFood.Models;

namespace FastFood.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        QuanLyThucAnEntities db = new QuanLyThucAnEntities();
        public ActionResult Index(int? page)
        {
            //Tạo biến số sản phẩm trên trang
        
            //Tạo biến số trang
            int pageNumber = (page ?? 1);
            return View(db.ThucAns.Where(n => n.Moi == 1).OrderBy(n => n.GiaBan).ToList());
        }
    
    }
}