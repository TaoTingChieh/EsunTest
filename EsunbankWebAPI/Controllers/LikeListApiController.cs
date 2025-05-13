using App.BLL;
using App.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;


namespace EsunbankWebAPI.Controllers
{
    /// <summary>
    /// 喜好清單 API 控制器
    /// </summary>
    [ApiController]
    [Route("api/[controller]")]
    public class LikeListApiController : ControllerBase
    {
        private readonly ILikeList _likeListService;

        public LikeListApiController(ILikeList likeListService)
        {
            _likeListService = likeListService;
        }

        /// <summary>
        /// 取得指定使用者的喜好金融商品清單
        /// </summary>
        /// <param name="userId">使用者 ID</param>
        /// <returns>喜好清單資料</returns>
        [HttpGet("{userId}")]
        public ActionResult<List<LikeListViewModel>> GetByUserID(int userId)
        {
            var data = _likeListService.GetByUserID(userId);
            return Ok(data);
        }

        /// <summary>
        /// 新增喜好金融商品
        /// </summary>
        [HttpPost]
        public IActionResult Create([FromBody] LikeListCreateRequest request)
        {
            var success = _likeListService.Create(request);
            if (!success)
                return BadRequest("新增失敗");

            return Ok(); // ← 確保這有寫
        }
        /// <summary>
        /// 更新喜好金融商品資訊
        /// </summary>
        [HttpPut]
        public IActionResult Update([FromBody] LikeListEditRequest request)
        {
            var success = _likeListService.Update(request);
            if (!success) return NotFound("找不到指定資料");
            return Ok();
        }

        /// <summary>
        /// 刪除喜好金融商品
        /// </summary>
        /// <param name="id">喜好清單流水號</param>
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var success = _likeListService.Delete(id);
            if (!success) return NotFound("找不到指定資料");
            return Ok();
        }
    }
}
