// ### Глава 4: Классы и объекты

void main() {
  var landCruiser300 = Car("TOYOTA", "Land Cruiser 300", "Japan");
  print(landCruiser300);
  landCruiser300.increase(250);
  landCruiser300.reduce(200);
  landCruiser300.stop();

  var teslaS = electriCar("Tesla", "S", "USA", 100);
  print(teslaS);
}

//  1. Создать класс "Машина" с полями (например, марка, модель и скорость) и методами, которые позволяют менять скорость.
class Car {
  Car(
    this.brand,
    this.model,
    this.country,
  );

  String brand;
  String model;
  String country;
//  1.

//  2. Сделать некоторые поля приватными (то есть скрытыми), а доступ к ним только через специальные методы — геттеры и сеттеры.
  double _speed = 0;

  double get speed => _speed;

  void increase(double amount) {
    if (amount > 0) {
      _speed += amount;
      print(
          "speed was increased for $amount km/h. The speed now is: $speed km/h.");
    } else {
      print("value must be positive");
    }
  }

  void reduce(double amount) {
    if (amount > 0) {
      _speed -= amount;
      if (_speed < 0) {
        _speed = 0;
      }
      print(
          "speed was reduced for $amount km/h. The speed now is: $speed km/h.");
    }
  }

  void stop() {
    _speed = 0;
    print("the car has stopped. The speed now is: $speed km/h.");
  }
//  2.

  @override
  String toString() {
    return "Brand: $brand, Model: $model, Country: $country.";
  }
}

//  3. Создать класс "Электромобиль", который будет наследовать все свойства "Машины", но с добавлением нового свойства — уровень заряда батареи.
class electriCar extends Car {
  electriCar(
    super.brand, 
    super.model, 
    super.country,
    this.battery,
  );

  double battery;

  @override
  String toString() {
    return "Brand: $brand, Model: $model, Country: $country, Battery level: $battery.";
  }
}
//  3.
