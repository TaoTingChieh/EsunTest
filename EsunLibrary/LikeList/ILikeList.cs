using App.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.BLL
{
    public interface ILikeList
    {
        List<LikeListViewModel> GetByUserID(int userId);
        bool Create(LikeListCreateRequest data);
        bool Update(LikeListEditRequest data);
        bool Delete(int likeListNo);
    }
}
