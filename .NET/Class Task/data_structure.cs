namespace DataStructure_demo
{
    using System;
    using System.Collections.Generic;

    public class Student
    {
        // Properties of the Student class
        public string Name { get; set; }
        public int Age { get; set; }
        public string Grade { get; set; }

        // Constructor to initialize Student objects
        public Student(string name, int age, string grade)
        {
            Name = name;
            Age = age;
            Grade = grade;
        }

        
        public void DisplayStudentInfo()
        {
            Console.WriteLine($"Name: {Name}, Age: {Age}, Grade: {Grade}");
        }
    }

    public class Program
    {
        public static void Main(string[] args)
        {
            
            List<Student> student_list = new List<Student>();

            
            Student student1 = new Student("Alice", 16, "10th");
            Student student2 = new Student("Bob", 17, "11th");
            Student student3 = new Student("Charlie", 15, "9th");

            // Add Student objects to the list
            student_list.Add(student1);
            student_list.Add(student2);
            student_list.Add(student3);

            // Display the information of each student in the list
            Console.WriteLine("Student List:");
            foreach (Student student in student_list)
            {
                student.DisplayStudentInfo();
            }
        }
    }
}
