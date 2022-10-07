using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace saglik.DataAccess
{
   public class data
    {

        public string randevu(string ran)
        {
            if (ran == "001")
                return "3-5 gün içerisinde";
            if (ran == "002")
                return "2 veya 3 hafta";
            if (ran == "003")
                return "1 ay içerisinde";
            if (ran == "004")
                return "1 ay içerisinde";
            if (ran == "005")
                return "2 ay içerisinde";
            if (ran == "006")
                return "2-3 hafta içerisinde";
            if (ran == "2121")
                return "2-3 gün içerisinde";
            if (ran == "2233")
                return "7-9 gün içerisinde";
            if (ran == "5256")
                return "5-9 gün içerisinde";
            if (ran == "7895")
                return "1-2 gün içerisinde";
            if (ran == "5623")
                return " 4-7 gün içeriisnde";
            if (ran == "2362")
                return "şu an müsait";
            if (ran == "3535")
                return "5-6 saat sonra";
            if (ran == "7845")
                return "6-7 hafta içerisinde";
            else
                return " lütfen Geçerli kodu giriniz";

        }
            



    }
}
