/*
Introduction to the Dart inheritance

Inheritance allows you to define a class that extends the functionality of another class.

Dart supports single inheritance. It means that a class can inherit from a single class. Dart doesn’t support multiple inheritances. In other words, a class cannot inherit from two or more classes.
*/
class Animal {
  String _name;

  Animal(this._name);

  String get name => _name;

  void eat() {
    print("${this._name} eats");
  }

  void makeSound() {
    print("Animal makes a sound");
  }

  void canJump(int? height) {
    print("Animal can jump ${height} m");
  }
}

class Dog extends Animal {
  String _breed;

  //this is the constructor of the Dog class and super is used to call the constructor of the Animal class where the animal name is passed is the parent class
  Dog(String name, this._breed) : super(name);

  String get breed => _breed;

  void fetch() {
    print("Dog fetches a ball");
  }

  //this is the method overriding where the makeSound method of the Animal class is overridden in the Dog class
  @override
  void makeSound() {
    print("Dog barks");
  }

  @override
  void canJump(int? height) {
    if (height == null) {
      print("Dog can jump 2 m");
    } else {
      //calling the sleep method of the Animal class using the super keyword
      super.canJump(5);
    }
  }
}

void main() {
  var dog = Dog("Buddy", "Golden Retriever");

  print("Dog Name: ${dog.name}");
  print("Dog Breed: ${dog.breed}");

  dog.eat();
  dog.fetch();
  //calling the makeSound method of the Dog class
  dog.makeSound();
  dog.canJump(null);
}
