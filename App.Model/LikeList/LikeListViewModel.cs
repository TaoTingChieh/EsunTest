using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Model
{
    public class LikeListViewModel
    {
        /// <summary>
        /// 喜好清單流水號
        /// </summary>
        public int LikeListNo { get; set; }

        /// <summary>
        /// 產品名稱
        /// </summary>
        public string ProductName { get; set; }

        /// <summary>
        /// 產品數量
        /// </summary>
        public int ProductCount { get; set; }

        /// <summary>
        /// 扣款帳號
        /// </summary>
        public string Account { get; set; }

        /// <summary>
        /// 總手續費
        /// </summary>
        public decimal TotalFee { get; set; }

        /// <summary>
        /// 總扣款金額
        /// </summary>
        public decimal TotalAmount { get; set; }

        /// <summary>
        /// 使用者 Email
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// 使用者 ID
        /// </summary>
        public int UserID { get; set; }

        /// <summary>
        /// 產品編號
        /// </summary>
        public int ProductNo { get; set; }

        public decimal Price { get; set; }
        public decimal FeeRate { get; set; }

        public decimal TotalPrice { get; set; }
    }
}
