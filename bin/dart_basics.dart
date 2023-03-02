import 'package:dart_basics/task1.dart';
import 'package:dart_basics/task2.dart';
import 'package:dart_basics/task3.dart';
import 'package:dart_basics/task4.dart';
import 'package:dart_basics/task5.dart';
import 'package:dart_basics/task6.dart';
import 'package:dart_basics/task7.dart';
import 'package:dart_basics/task8.dart';

void main(List<String> arguments) {
  print('Task 1');
  print(findNOD(3, 18));
  print(findNOD(12, 30));
  print(findNOK(3, 9));
  print(findNOK(24, 72));

  print('Task 2');
  print(decimalToBinary(35));
  print(binaryToDecimal('100011'));

  print('Task 3');
  print(findNumbersInString('dog cat 1 me you 2 -3.4 hello +1.3'));

  print('Task 4');
  print(countWords(['Hello', 'Hello', 'Hello', 'World', 'Hello', 'World']));

  print('Task 5');
  print(getUniqueNumbers(
    'one, two, three, cat, dog, four',
  ));

  print(Point.origin().x);
  print(Point.unit().x);
  print(Point(1, 2, 3).distanceTo(Point(2, 3, 4)));
  print(
    Point.calculateTriangleArea(
      Point(1, 2, 3),
      Point(42, 55, 66),
      Point(74, 81, 9),
    ),
  );

  print('Task 7');
  num cubeRoot = 27.nthRoot(3);
  print('The cube root of 27 is $cubeRoot');

  print('Task 8');
  var adminUser = AdminUser('admin@example.com');
  var generalUser1 = GeneralUser('user1@example.com');
  var generalUser2 = GeneralUser('user2@example.com');

  var userManager = UserManager<User>();
  userManager.addUser(adminUser);
  userManager.addUser(generalUser1);
  userManager.addUser(generalUser2);

  userManager.printEmails();
}
