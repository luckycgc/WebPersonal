using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL
{
    public class typeSecondDal
    {
        public static List<Model.typeSecondModel> GetSecond()
        {
            List<Model.typeSecondModel> modelList = new List<Model.typeSecondModel>();
            string sql="select * from typeSecond";
            SqlDataReader dr = DbHepler.ExecuteReader(sql);
            while (dr.Read())
            {
                modelList.Add(new Model.typeSecondModel()
                {
                    ID = (int)dr["ID"],
                    fsID = (int)dr["fsID"],
                    secondType = dr["secondType"].ToString()
                });
            }
            DbHepler.Close();
            return modelList;
            
        }
    }
}
