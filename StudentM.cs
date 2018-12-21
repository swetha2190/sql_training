using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MyProject
{
    class StudentM
    {

        public void Grades()
        {
            Console.WriteLine("enter no of subjects::");

            int N = Convert.ToInt32(Console.ReadLine());

            int[] marks = new int[N];
            Console.WriteLine("enter marks");
            for (int i = 0; i < N; i++)
            {
                marks[i] = Convert.ToInt32(Console.ReadLine());

            }

            Console.WriteLine("marks entered are::");
            for (int i = 0; i < N; i++)
            {
                Console.WriteLine(marks[i]);

                if (marks[i] > 90)
                {
                    Console.WriteLine("distinction");
                }

                else
                {
                    Console.WriteLine("you are fail");
                }
            }

            {
                Console.WriteLine("");
            }
        }
    }
}
