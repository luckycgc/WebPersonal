using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public  class bookBll
    {
        public static List<Model.bookModel> Getbook()
        {
            return DAL.bookDal.Getbook();
        }
    }
}
