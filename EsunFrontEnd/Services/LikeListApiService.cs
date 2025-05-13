using System.Net.Http;
using System.Net.Http.Json;
using App.Model;

namespace EsunFrontEnd.Services
{
    /// <summary>
    /// 呼叫 API 的喜好清單服務
    /// </summary>
    public class LikeListApiService
    {
        private readonly HttpClient _http;

        public LikeListApiService(IHttpClientFactory factory)
        {
            _http = factory.CreateClient("EsunbankAPI");
        }

        public async Task<List<LikeListViewModel>> GetByUserAsync(int userId)
        {
            var response = await _http.GetAsync($"LikeListApi/{userId}");
            response.EnsureSuccessStatusCode();
            return await response.Content.ReadFromJsonAsync<List<LikeListViewModel>>();
        }

        public async Task<bool> CreateAsync(LikeListCreateRequest vm)
        {
            var response = await _http.PostAsJsonAsync("LikeListApi", vm);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> UpdateAsync(LikeListEditRequest vm)
        {
            var response = await _http.PutAsJsonAsync("LikeListApi", vm);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> DeleteAsync(int id)
        {
            var response = await _http.DeleteAsync($"LikeListApi/{id}");
            return response.IsSuccessStatusCode;
        }
    }
}