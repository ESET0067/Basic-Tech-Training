using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace SchoolManagementSystem
{
    class Learner
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Grade { get; set; }

        public Learner(int Id, string Name, int Grade)
        {
            this.Id = Id;
            this.Name = Name;
            this.Grade = Grade;
        }
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            //List Example
            List<Learner> learners = new List<Learner>();

            // Add Learner objects to the list
            Learner firstLearner = new Learner(1, "Alice", 95);
            Learner secondLearner = new Learner(2, "Bob", 88);
            Learner thirdLearner = new Learner(3, "charlie", 72);
            learners.Add(firstLearner);
            learners.Add(secondLearner);
            learners.Add(thirdLearner);

            // Access and display each student using foreach
            Console.WriteLine("Learner List:");
            foreach (Learner s in learners)
            {
                Console.WriteLine($"ID: {s.Id}, Name: {s.Name}, Grade: {s.Grade}");
            }

            // Access a specific object by index
            Console.WriteLine($"\nSecond learner is: {learners[1].Name}");

            //Dictionary Example
            Dictionary<string, Learner> learners_dict = new Dictionary<string, Learner>();
            learners_dict.Add("firstLearner", firstLearner);
            learners_dict.Add("secondLearner", secondLearner);
            learners_dict.Add("thirdLearner", thirdLearner);

            Console.WriteLine("\nLearner Dictionary:");
            foreach (KeyValuePair<string, Learner> learner in learners_dict)
            {
                Console.WriteLine($"ID: {learner.Value.Id}, Name: {learner.Value.Name}, Grade: {learner.Value.Grade}");
            }

            //Hashset Example
            Console.WriteLine("\nHashset demo");
            HashSet<Learner> learners_hashset = new HashSet<Learner>();
            learners_hashset.Add(firstLearner);
            learners_hashset.Add(secondLearner);
            learners_hashset.Add(firstLearner);
            learners_hashset.Add(thirdLearner);

            foreach (Learner s in learners_hashset)
            {
                Console.WriteLine($"ID: {s.Id}, Name: {s.Name}, Grade: {s.Grade}");
            }


            //StackDemo
            Console.WriteLine("\nStack demo");
            Stack<Learner> learners_stack = new Stack<Learner>();
            learners_stack.Push(firstLearner);
            learners_stack.Push(secondLearner);
            learners_stack.Push(thirdLearner);

            Learner pop_stack = learners_stack.Pop();
            Console.WriteLine($"Popped Learner: {pop_stack.Name}");

            //Queue demo
            Console.WriteLine("\nQueue demo");
            Queue<Learner> learners_queue = new Queue<Learner>();
            learners_queue.Enqueue(firstLearner);
            learners_queue.Enqueue(secondLearner);
            learners_queue.Enqueue(thirdLearner);

            Console.WriteLine($"Dequeued Learner: {learners_queue.Dequeue().Name}");

            //Linked list 
            Console.WriteLine("\nLinked List");
            LinkedList<Learner> learners_linked_list = new LinkedList<Learner>();
            learners_linked_list.AddFirst(firstLearner);
            learners_linked_list.AddAfter(learners_linked_list.First, secondLearner);
            learners_linked_list.AddLast(thirdLearner);

            foreach (Learner s in learners_linked_list)
            {
                Console.WriteLine($"Id:{s.Id},Name: {s.Name}, Grade: {s.Grade}");
            }

            //Tuple
            Console.WriteLine("\nTuple");
            List<Tuple<int, string, int>> learner_tuple = new List<Tuple<int, string, int>>();

            Tuple<int, string, int> st1 = new Tuple<int, string, int>(1, "Alice", 95);
            Tuple<int, string, int> st2 = new Tuple<int, string, int>(2, "Bob", 88);
            Tuple<int, string, int> st3 = new Tuple<int, string, int>(3, "charlie", 72);

            learner_tuple.Add(st1);
            learner_tuple.Add(st2);
            learner_tuple.Add(st3);

            foreach (Tuple<int, string, int> s in learner_tuple)
            {
                Console.WriteLine($"ID: {s.Item1}, Name: {s.Item2}, Grade: {s.Item3}");
            }
        }
    }
}
