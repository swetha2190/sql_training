using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PROJECT2
{
    class CircleRunner
    {

        float r = 2.2f, area, circumference;

        public void FindArea()
        {
            area = 3.14f * r * r;
            Console.WriteLine("area is {0}", area);

        }
        public void FindCircumference()
          {

            circumference = 2 * 3.14f * r;
            Console.WriteLine("circumference is {0}", circumference);
        }
        
        
        
    }
}
