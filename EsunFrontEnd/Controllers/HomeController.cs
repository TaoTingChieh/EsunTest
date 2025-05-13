using Microsoft.AspNetCore.Mvc;
using EsunFrontEnd.Services;
using App.Model;

namespace EsunFrontEnd.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProductApiService _productApi;

        public HomeController(ProductApiService productApi)
        {
            _productApi = productApi;
        }

        public async Task<IActionResult> Index()
        {
            var productList = await _productApi.GetAllAsync();
            return View(productList);
        }
    }
}