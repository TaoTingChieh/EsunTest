using App.EF.Models;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.Model;
using Microsoft.EntityFrameworkCore.Metadata;


namespace App.BLL

{
    public class LikeList : ILikeList
    {
        private readonly esunbankContext _context;

        public LikeList(esunbankContext context)
        {
            _context = context;
        }

        public List<LikeListViewModel> GetByUserID(int userId)
        {
            var all = _context.LikeLists
                .Where(x => x.UserID == userId)
                .Select(like => new LikeListViewModel
                {
                    LikeListNo = like.LikeListNo,
                    ProductNo = like.ProductNo,
                    ProductName = like.ProductName,
                    ProductCount = like.ProductCount,
                    Price = like.Price,             
                    FeeRate = like.FeeRate,         
                    TotalPrice = like.TotalPrice,   
                    TotalFee = like.TotalFee,
                    TotalAmount = like.TotalAmount,
                    Account = like.Account,
                    UserID = like.UserID,
                    Email = like.Email
                })
                .ToList();

            return all;
        }

        public bool Create(LikeListCreateRequest data)
        {
            // 計算欄位
            var totalPrice = data.Price * data.ProductCount;
            var totalFee = totalPrice * data.FeeRate;
            var totalAmount = totalPrice + totalFee;

            var entity = new EF.Models.LikeList
            {
                ProductNo = data.ProductNo,
                ProductName = data.ProductName,
                ProductCount = data.ProductCount,
                Price = data.Price,
                FeeRate = data.FeeRate,
                TotalPrice = totalPrice,
                TotalFee = totalFee,
                TotalAmount = totalAmount,
                Account = data.Account,
                UserID = 1,        // TODO: 改為登入使用者
                CreateId = 1,
                CreateTime = DateTime.Now,
                Email = data.Email,
            };

            _context.LikeLists.Add(entity);
            _context.SaveChanges();
            return true;
        }

        public bool Update(LikeListEditRequest data)
        {
            var entity = _context.LikeLists.FirstOrDefault(x => x.LikeListNo == data.LikeListNo);
            if (entity == null) return false;

            // 後端重新計算避免被竄改
            var totalPrice = data.Price * data.ProductCount;
            var totalFee = totalPrice * data.FeeRate;
            var totalAmount = totalPrice + totalFee;

            entity.ProductCount = data.ProductCount;
            entity.Account = data.Account;

            entity.Price = data.Price;
            entity.FeeRate = data.FeeRate;
            entity.TotalPrice = totalPrice;
            entity.TotalFee = totalFee;
            entity.TotalAmount = totalAmount;

            entity.UpdateId = 1; // TODO: 實際使用登入者 ID
            entity.UpdateTime = DateTime.Now;
            entity.Email = data.Email;
            _context.SaveChanges();
            return true;
        }

        public bool Delete(int likeListNo)
        {
            var entity = _context.LikeLists.FirstOrDefault(x => x.LikeListNo == likeListNo);
            if (entity == null) return false;

            _context.LikeLists.Remove(entity);
            _context.SaveChanges();
            return true;
        }
    }
}