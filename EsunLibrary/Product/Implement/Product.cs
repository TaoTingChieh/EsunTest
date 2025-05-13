using App.EF.Models;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using App.Model;


namespace App.BLL

{
    public class Product: IProduct
    {
        private readonly esunbankContext _context;
        public Product(esunbankContext context)
        {
            _context = context;


        }
        public List<GetProductRes> GetProduct()
        {
            var result = _context.Products.Select(x => new GetProductRes
            {
                ProductNo = x.ProductNo,
                ProductName = x.ProductName,
                Price = x.Price,
                FeeRate = x.FeeRate,
            }).ToList();

            return result;
        }



    }
}
