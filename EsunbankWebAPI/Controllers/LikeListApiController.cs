using App.BLL;
using App.Model;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;


namespace EsunbankWebAPI.Controllers
{
    /// <summary>
    /// �ߦn�M�� API ���
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
        /// ���o���w�ϥΪ̪��ߦn���İӫ~�M��
        /// </summary>
        /// <param name="userId">�ϥΪ� ID</param>
        /// <returns>�ߦn�M����</returns>
        [HttpGet("{userId}")]
        public ActionResult<List<LikeListViewModel>> GetByUserID(int userId)
        {
            var data = _likeListService.GetByUserID(userId);
            return Ok(data);
        }

        /// <summary>
        /// �s�W�ߦn���İӫ~
        /// </summary>
        [HttpPost]
        public IActionResult Create([FromBody] LikeListCreateRequest request)
        {
            var success = _likeListService.Create(request);
            if (!success)
                return BadRequest("�s�W����");

            return Ok(); // �� �T�O�o���g
        }
        /// <summary>
        /// ��s�ߦn���İӫ~��T
        /// </summary>
        [HttpPut]
        public IActionResult Update([FromBody] LikeListEditRequest request)
        {
            var success = _likeListService.Update(request);
            if (!success) return NotFound("�䤣����w���");
            return Ok();
        }

        /// <summary>
        /// �R���ߦn���İӫ~
        /// </summary>
        /// <param name="id">�ߦn�M��y����</param>
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var success = _likeListService.Delete(id);
            if (!success) return NotFound("�䤣����w���");
            return Ok();
        }
    }
}
