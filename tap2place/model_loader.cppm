//  cpp
#include "Person.h"

Person createPerson(std::string name, int age) {
  Person person;
  person.name = name;
  person.age = age;
  return person;
}

std::vector<Person> allPerson() {
  std::vector<Person> people;
  Person person1 = createPerson("yyx1", 26);
  Person person2 = createPerson("yyx2", 27);
  Person person3 = createPerson("yyx3", 28);
  people.push_back(person1);
  people.push_back(person2);
  people.push_back(person3);
  return people;
}
