using App.Model;
using System.Net.Http;
using System.Net.Http.Json;

namespace EsunFrontEnd.Services
{
    public class ProductApiService
    {
        private readonly HttpClient _http;

        public ProductApiService(IHttpClientFactory factory)
        {
            _http = factory.CreateClient("EsunbankAPI");
        }

        public async Task<List<GetProductRes>> GetAllAsync()
        {
            return await _http.GetFromJsonAsync<List<GetProductRes>>("ProductApi");
        }
    }
}