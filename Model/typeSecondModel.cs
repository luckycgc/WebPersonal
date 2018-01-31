using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class typeSecondModel
    {
        public typeSecondModel() { }
        /// <summary>
        /// ID
        /// </summary>
        public int ID { get; set; }
        /// <summary>
        /// typeFirst的外键
        /// </summary>
        public int fsID { get; set; }
        /// <summary>
        /// second分类
        /// </summary>
        public string secondType { get; set; }
    }
}
