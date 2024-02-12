//
//  Person.h
//  tap2place
//
//  Created by yyx on 2024/02/12.
//

/// hpp
#include <stdio.h>
#include <string>

struct Person {
  std::string name;
  int age;
};
// 関数'createPerson'の宣言
std::vector<Person> allPerson();
