using Microsoft.AspNetCore.Mvc;
using App.BLL;
using App.Model;

namespace EsunbankWebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ProductApiController : ControllerBase
    {
        private readonly IProduct _product;

        public ProductApiController(IProduct product)
        {
            _product = product;
        }

        /// <summary>
        /// 取得所有產品資料
        /// </summary>
        [HttpGet]
        public ActionResult<List<GetProductRes>> GetAll()
        {
            var result = _product.GetProduct();
            return Ok(result);
        }
    }
}
