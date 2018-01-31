using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class typeSecondBll
    {
        public static List<Model.typeSecondModel> GetSecond()
        {
            return DAL.typeSecondDal.GetSecond();
        }
    }
}
