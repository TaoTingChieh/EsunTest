using App.BLL;
using App.EF.Models; // �� �T�O�o�O�A�� DbContext �Ҧb�R�W�Ŷ�
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

// �[�J DbContext ���U�]�ϥ� SQL Server �ñq appsettings.json Ū���s�u�r��^
builder.Services.AddDbContext<esunbankContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

// ���U BLL ���̿�`�J
builder.Services.AddScoped<IProduct, App.BLL.Product>();
builder.Services.AddScoped<ILikeList, App.BLL.LikeList>();


builder.Services.AddControllers();

// Swagger ���U
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Swagger UI �]�w
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();