using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


//CALL BY VALUE CREATES MULTIPLE COPIES AND ALSO CHANGES R NOT REFLECTED BACK SO ITS NOT RECOMENDED...

//CALL BY REF IS GOOD AND CHANGES R REFLECTED BACK.....SO NO WASTAGE OF MEMORY

namespace CALL_BY_REF_AND_NUM
{
    class Program
    {

        int num;
        public void GetDetails()
        {
            Console.WriteLine("enter a value");
            num = Convert.ToInt32(Console.ReadLine());

        }

        public void Square(int num)
        {
            num = num * num;
           
        }

        public void Display()
        {
            Console.WriteLine("before square num={0}", num);

             Square(num);
            Console.WriteLine("After square num={0}", num);

        }

        static void Main(string[] args)
        {

            Program p = new Program();
            p.GetDetails();
            p.Display();
            Console.ReadLine();

        }
    }

}
