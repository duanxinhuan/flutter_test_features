import 'package:faker/faker.dart';

class RandomContactGenerator{
  static RandomContactGenerator instance = RandomContactGenerator();


  Contact generateRandomContact(){
    return new Contact(
      faker.person.name(),
      faker.job.title(),
      faker.address.streetAddress(),
      '${faker.person.name()}@gmail.com',

    );
  }



}

class Contact{
  final String name;
  final String title;
  final String streetAddress;
  String email;

  Contact(this.name, this.title, this.streetAddress, this.email);

  void changeEmail(){
    this.email =  '${faker.person.name()}@gmail.com';
  }






}