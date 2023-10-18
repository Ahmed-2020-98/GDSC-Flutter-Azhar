void main() {
  List<House> houseList = [];

  // Creating three House objects
  House house1 = House(1, 'Cozy Cottage', 150000.00);
  House house2 = House(2, 'Modern Mansion', 1000000.00);
  House house3 = House(3, 'Suburban Starter', 250000.00);

  // Adding them to the list
  houseList.add(house1);
  houseList.add(house2);
  houseList.add(house3);

  // Printing all the details
  for (House house in houseList) {
    print(house);
  }

//example 2
  Cat myCat = Cat(1, "Whiskers", "Gray", "Meow");

  print("Cat Details:");
  print("ID: ${myCat.id}");
  print("Name: ${myCat.name}");
  print("Color: ${myCat.color}");
  print("Sound: ${myCat.sound}");

//exmple 3
  // Using LocalStorage
  Storage localStorage = LocalStorage();
  localStorage.save("This is local data.");
  localStorage.retrieve();

  // Using CloudStorage
  Storage cloudStorage = CloudStorage();
  cloudStorage.save("This is cloud data.");
  cloudStorage.retrieve();

//example 4
  Camera camera1 = Camera(1, 'Canon', 'Black', 699.99);
  Camera camera2 = Camera(2, 'Nikon', 'Silver', 849.99);
  Camera camera3 = Camera(3, 'Sony', 'Red', 499.99);

  print(camera1);
  print(camera2);
  print(camera3);


  //example 5
   List<Question> questions = [
    Question('Is Dart a programming language?', true),
    Question('Is OOP a programming paradigm?', true),
    Question('Is the sky green?', false),
  ];

  Quiz quiz = Quiz(questions);

  print('Welcome to the Quiz!');
  print('Answer questions with true or false.');

  while (!quiz.isFinished()) {
    print('Question: ${quiz.getCurrentQuestionText()}');
    String userAnswer = 'true'; // You can replace this with user input
    bool userBoolAnswer = userAnswer == 'true';
    quiz.answer(userBoolAnswer);
  }

  print('Quiz completed! Your score is: ${quiz.getScore()}');
}

class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  @override
  String toString() {
    return 'House: {ID: $id, Name: $name, Price: \$${price.toStringAsFixed(2)}}';
  }
}

//example 2
class Animal {
  int id;
  String name;
  String color;

  Animal(this.id, this.name, this.color);
}

class Cat extends Animal {
  String sound;

  Cat(int id, String name, String color, this.sound) : super(id, name, color);
}

//example 3
abstract class Storage {
  void save(String data);
  String retrieve();
}

class LocalStorage extends Storage {
  late String data;

  @override
  void save(String data) {
    this.data = data;
    print("Data saved locally: $data");
  }

  @override
  String retrieve() {
    print("Retrieved data from local storage: $data");
    return data;
  }
}

class CloudStorage extends Storage {
  late String data;

  @override
  void save(String data) {
    this.data = data;
    print("Data saved in the cloud: $data");
  }

  @override
  String retrieve() {
    print("Retrieved data from the cloud: $data");
    return data;
  }
}

//example 4
class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  int get id => _id;
  set id(int value) => _id = value;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get color => _color;
  set color(String value) => _color = value;

  double get price => _price;
  set price(double value) => _price = value;

  @override
  String toString() {
    return 'Camera: {ID: $_id, Brand: $_brand, Color: $_color, Price: \$${_price.toStringAsFixed(2)}}';
  }
}



//example 5
class Question {
  final String questionText;
  final bool answer;

  Question(this.questionText, this.answer);
}

class Quiz {
  List<Question> _questions = [];
  int _currentQuestionIndex = 0;
  int _score = 0;

  Quiz(List<Question> questions) {
    _questions = questions;
  }

  bool isFinished() {
    return _currentQuestionIndex >= _questions.length - 1;
  }

  void nextQuestion() {
    if (!isFinished()) {
      _currentQuestionIndex++;
    }
  }

  void answer(bool userAnswer) {
    if (!isFinished()) {
      if (userAnswer == _questions[_currentQuestionIndex].answer) {
        _score++;
      }
      nextQuestion();
    }
  }

  int getScore() {
    return _score;
  }

  void resetQuiz() {
    _currentQuestionIndex = 0;
    _score = 0;
  }

  String getCurrentQuestionText() {
    return _questions[_currentQuestionIndex].questionText;
  }
}

