using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL
{
    public class bookDal
    {
        public static List<Model.bookModel> Getbook()
        {
            List<Model.bookModel> modelList = new List<Model.bookModel>();
            string sql = "";
            SqlDataReader dr=DbHepler.ExecuteReader(sql);
            while (dr.Read())
            {
                modelList.Add(new Model.bookModel()
                {
                    ID = (int)dr["ID"],
                    bookName = dr["bookName"].ToString(),
                    author = dr["author"].ToString(),
                    publisher = dr["publisher"].ToString(),
                    publisherDate = (DateTime)dr["publisherDate"],
                    price = (decimal)dr["price"],
                    ISBN = dr["ISBN"].ToString(),
                    pages = (int)dr["pages"],
                    context = dr["context"].ToString()
                });
            }

            DbHepler.Close();
            return modelList;
        }
    }
}
