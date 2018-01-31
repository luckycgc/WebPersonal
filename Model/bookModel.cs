using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class bookModel
    {
        public bookModel() { }
        public int ID { get; set; }
        public string bookName { get; set; }
        public string author { get; set; }
        public string publisher { get; set; }
        public DateTime publisherDate { get; set; }
        public int pages { get; set; }
        public decimal price { get;set; }
        public string ISBN {get;set;}
        public string context { get; set; }
    }
}
