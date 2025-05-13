using App.BLL;
using App.EF.Models; // ← 確保這是你的 DbContext 所在命名空間
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// 加入 DbContext 註冊（使用 SQL Server 並從 appsettings.json 讀取連線字串）
builder.Services.AddDbContext<esunbankContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// 註冊 BLL 的依賴注入
builder.Services.AddScoped<IProduct, App.BLL.Product>();
builder.Services.AddScoped<ILikeList, App.BLL.LikeList>();


builder.Services.AddControllers();

// Swagger 註冊
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Swagger UI 設定
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();