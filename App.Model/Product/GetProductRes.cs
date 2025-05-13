using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Model
{
    public class GetProductRes
    {
        /// <summary>
        /// Primary Key 產品流水號
        /// </summary>
        public int ProductNo { get; set; }

        /// <summary>
        /// 產品名稱
        /// </summary>
        public string ProductName { get; set; }

        /// <summary>
        /// 產品價格
        /// </summary>
        public decimal Price { get; set; }

        /// <summary>
        /// 手續費率
        /// </summary>
        public decimal FeeRate { get; set; }

        /// <summary>
        /// 建立者ID
        /// </summary>
        public int CreatId { get; set; }

        /// <summary>
        /// 建立時間
        /// </summary>
        public DateTime CreatTime { get; set; }

        /// <summary>
        /// 更新者ID
        /// </summary>
        public int? UpdateId { get; set; }

        /// <summary>
        /// 更新時間
        /// </summary>
        public DateTime? UpdateTime { get; set; }
    }
}
