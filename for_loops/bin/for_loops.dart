import 'dart:io';
import 'dart:math';

void main() {
  print('Введите номер задачи: ');
  var solv = int.parse(stdin.readLineSync() ?? '0');
  switch (solv) {
    case 1:
      /*
      Задача №333. Четные числа
      Входные данные
      Вводятся целые числа a и b. Гарантируется, что a не превосходит b

      Выходные данные
      Выведите (через пробел) все четные числа от a до b (включительно).

      Примеры
      входные данные
      2
      5
      выходные данные
      2 4 
      */
      print('Введите a: ');
      var a = int.parse(stdin.readLineSync() ?? '0');
      print('Введите b: ');
      var b = int.parse(stdin.readLineSync() ?? '0');
      for (var i = a; i <= b; i++) {
        if (i % 2 == 0) {
          print(i);
        }
      }
      break;

    case 2:
      /*
      Задача №340. Делители числа
      Выведите все натуральные делители числа x в порядке возрастания (включая 1 и само число).

      Входные данные
      Вводится натуральное число x

      Выходные данные
      Выведите все делители числа x

      Примеры
      входные данные
      32
      выходные данные
      1 2 4 8 16 32 
      */
      print('Введите число: ');
      var a = double.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i <= a; i++) {
        if (a % i == 0) {
          print(i);
        }
      }
      break;

    case 3:
      /*
      Задача №343. Сумма чисел
      Вычислите сумму данных N натуральных чисел.

      Входные данные
      Вводится число N, а затем N чисел, сумму которых необходимо вычислить.

      Выходные данные
      Выведите единственное число - сумму введенных чисел.

      Примеры
      входные данные
      3
      9
      5
      1
      выходные данные
      15
      */
      var sum = 0;
      print('Введите число N: ');
      var n = int.parse(stdin.readLineSync() ?? '0');
      var numbers = 0;
      for (var i = 0; i < n; i++) {
        print('Введите число ${i + 1}: ');
        numbers = int.parse(stdin.readLineSync() ?? '0');
        sum += numbers;
      }
      print(sum);
      break;

    case 4:
      /*
      Задача №347. Ноль или не ноль
      Проверьте, есть ли среди данных N чисел нули.

      Входные данные
      Вводится число N, а затем N чисел.

      Выходные данные
      Выведите YES, если среди введенных чисел есть хотя бы один нуль, или NO в противном случае.
      */
      var checkN = 0;
      var numbers = 0;
      print('Введите число N: ');
      var n = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < n; i++) {
        print('Введите число ${i + 1}: ');
        numbers = int.parse(stdin.readLineSync() ?? '0');
        if (numbers == 0) {
          checkN += 1;
        }
      }
      if (checkN == 0) {
        print('NO');
      } else {
        print('YES');
      }
      break;

    case 5:
      /*
      Задача №345. Нули
      Входные данные
      Вводится число N, а затем N чисел.

      Выходные данные
      Подсчитайте и выведите, сколько среди данных N чисел нулей.

      Примеры
      входные данные
      3
      1
      2
      3
      выходные данные
      0
      */
      var sumNull = 0;
      var checkN = 0;
      var numbers = 0;
      print('Введите число N: ');
      var n = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < n; i++) {
        print('Введите число ${i + 1}: ');
        numbers = int.parse(stdin.readLineSync() ?? '0');
        if (numbers == 0) {
          checkN += 1;
        }
      }
      if (checkN >= 0) {
        print(checkN);
      }
      break;
  }
}
