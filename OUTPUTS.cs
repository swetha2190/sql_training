using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CALL_BY_REF_AND_NUM
{
    class OUTPUTS
    {

        int a, b, c, d, e, f;

        public void GetDetails()
        {
            Console.WriteLine("enter two numbers");
            a = Convert.ToInt32(Console.ReadLine());
            b = Convert.ToInt32(Console.ReadLine());

        }

        public void Calculate(int a, int b, out int c, out int d, out int f)
        {
            c = a + b;
            d = a - b;
            e = a * b;
            f = a / b;
        }

        public void Display()
        {
            Calculate(a, b, out c, out d, out e, out f);
            Console.WriteLine("add = {0}", c);
            Console.WriteLine("subtract = {0}", d);
            Console.WriteLine("multiply = {0}", e);


        }

        static void Main(string[] args)
        {
            OUTPUTS o = new OUTPUTS();
            o.GetDetails();
            o.Calculate();
            o.Display();


        }
    }
            
}
