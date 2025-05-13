using Microsoft.AspNetCore.Mvc;
using App.Model;
using EsunFrontEnd.Services;

namespace EsunFrontEnd.Controllers
{
    public class LikeListController : Controller
    {
        private readonly LikeListApiService _api;

        public LikeListController(LikeListApiService api)
        {
            _api = api;
        }

        public async Task<IActionResult> Index()
        {
            var result = await _api.GetByUserAsync(1); // 假設 UserID = 1
            return View(result);
        }

        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Create(LikeListCreateRequest request)
        {
            if (!ModelState.IsValid)
            {
                TempData["ErrorMessage"] = "請確認所有欄位皆正確填寫";
                return View(request);
            }

            var result = await _api.CreateAsync(request); // 呼叫 API

            if (!result)
            {
                TempData["ErrorMessage"] = "新增失敗，請稍後再試";
                return View(request);
            }

            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult Create(int productNo, string productName, decimal price, decimal feeRate)
        {
            var vm = new LikeListCreateRequest
            {
                ProductNo = productNo,
                ProductName = productName,
                Price = price,
                FeeRate = feeRate
            };
            return View(vm);
        }

        public async Task<IActionResult> Edit(int id)
        {
            var all = await _api.GetByUserAsync(1); // ← 這裡應視情況改成查單一筆
            var item = all.FirstOrDefault(x => x.LikeListNo == id);

            if (item == null)
                return NotFound();

            var vm = new LikeListEditRequest
            {
                LikeListNo = item.LikeListNo,
                ProductNo = item.ProductNo,
                ProductName = item.ProductName,
                Price = item.Price,
                FeeRate = item.FeeRate,
                ProductCount = item.ProductCount,
                Account = item.Account
            };

            return View(vm);
        }

        [HttpPost]
        public async Task<IActionResult> Edit(LikeListEditRequest vm)
        {
            if (!ModelState.IsValid) return View(vm);
            await _api.UpdateAsync(vm);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Delete(int id)
        {
            await _api.DeleteAsync(id);
            return RedirectToAction("Index");
        }
    }
}