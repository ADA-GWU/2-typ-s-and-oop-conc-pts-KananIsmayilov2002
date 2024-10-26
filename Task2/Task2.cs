using System;

class Animal
{
    
    public void Speak()
    {
        Console.WriteLine("Animal speaks.");
    }

    
    public virtual void Eat()
    {
        Console.WriteLine("Animal eats.");
    }
}

class Dog : Animal
{
    
    public new void Speak()
    {
        Console.WriteLine("Dog barks.");
    }

    
    public override void Eat()
    {
        Console.WriteLine("Dog eats.");
    }
}

class Program
{
    static void Main(string[] args)
    {
        
        Animal animal = new Animal();
        animal.Speak();  
        animal.Move();   

        Dog dog = new Dog();
        dog.Speak();    
        dog.Move();     

        
        Animal animalDog = new Dog();
        animalDog.Speak(); 
        animalDog.Move();   
    }
}
