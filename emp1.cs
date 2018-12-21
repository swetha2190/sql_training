using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;



namespace PROJECT2

{
    class emp1
    {
        int EmpId, radius;
        string Name;
        string Designation;
        string Department;
        float Salary;


        public void GetEmployeeDetails()
        {
            Console.WriteLine("Enter id, name, desigination, department, salary");

            EmpId = Convert.ToInt32(Console.ReadLine());
            Name = Console.ReadLine();
            Designation = Console.ReadLine();
            Department = Console.ReadLine();
            Salary = Convert.ToSingle(Console.ReadLine());
        }
        public void DisplayDetails()
        {
            Console.WriteLine("Enter id = {0} \n Name = {1} \n Designation = {2} Department = {3} \n Salary = {4} \n",EmpId,Name,Designation,Department,Salary);
        }

      
    }
}