using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Model
{
    public class LikeListEditRequest
    {
        public int LikeListNo { get; set; }
        public int ProductCount { get; set; }
        public string Account { get; set; }
        public decimal TotalFee { get; set; }
        public decimal TotalAmount { get; set; }
        public int UpdateId { get; set; }

        public string Email { get; set; }
        
        public string ProductName { get; set; }
        
        public decimal Price { get; set; }
        public decimal FeeRate { get; set; }

        public int ProductNo { get; set; }

        public decimal TotalPrice { get; set; }

    }
}
