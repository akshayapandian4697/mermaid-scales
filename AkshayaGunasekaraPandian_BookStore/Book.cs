using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AkshayaGunasekaraPandian_BookStore
{
    public class Book
    {
        public int bookId { get; set; }
        public string bookName { get; set; }
        public string author { get; set; }
        public double price { get; set; }
        public int quantity { get; set; }
        public string imagePath { get; set; }

     }
}