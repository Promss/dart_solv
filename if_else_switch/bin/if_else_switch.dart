import 'dart:io';
import 'dart:math';

void main() {
  print('Введите номер задачи: ');
  var solv = int.parse(stdin.readLineSync() ?? '0');
  switch (solv) {
    case 1:
      //////Задача №292. Максимум из двух чисел
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=292#1
      /*Входные данные
        Даны два целых числа, каждое число записано в отдельной строке.

        Выходные данные
        Выведите наибольшее из данных чисел.

        Примеры
        входные данные:
        1
        2
        выходные данные:
        2
        */
      print('Введите число a: ');
      var a = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число b: ');
      var b = int.parse(stdin.readLineSync() ?? '0');
      if (a > b) {
        print('Наибольшее число: ${a}');
      } else if (b > a) {
        print('Наибольшее число: ${b}');
      }
      break;

    case 2:
      //////Задача №2959. Знак числа
      /////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=2959#1
      /*В математике функция sign(x) (знак числа) определена так:
        sign(x) = 1,   если x > 0,
        sign(x) = -1, если x < 0,
        sign(x) = 0,   если x = 0.

        Для данного числа x выведите значение sign(x).
        Входные данные
        Вводится число x.

        Выходные данные
        Выведите ответ на задачу.

        Примеры
        входные данные
        179
        выходные данные
        1
        */
      print('Введите число: ');
      var x = int.parse(stdin.readLineSync() ?? '0');
      if (x > 0) {
        print(1);
      } else if (x == 0) {
        print('0');
      } else if (x < 0) {
        print(-1);
      }
      break;

    case 3:
      //////Задача №293. Какое из чисел больше?
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=293#1
      /*
      Входные данные
      Даны два целых числа, каждое записано в отдельной строке.

      Выходные данные
      Программа должна вывести число 1, если первое число больше второго, число 2, если второе больше первого, или число 0, если они равны.

      Примеры
      входные данные
      1
      2
      выходные данные
      2
      */
      print('Введите число а: ');
      var a = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число b: ');
      var b = int.parse(stdin.readLineSync() ?? '0');
      if (a > b) {
        print(1);
      } else if (b > a) {
        print(2);
      } else if (a == b) {
        print(0);
      }
      break;

    case 4:
      //////Задача №294. Максимум из трех
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=294#1
      /*
      Входные данные
      Даны три целых числа, каждое записано в отдельной строке.

      Выходные данные
      Выведите наибольшее из данных чисел (программа должна вывести ровно одно целое число).

      Примеры
      входные данные
      1
      2
      3
      выходные данные
      3
      */
      print('Введите число а: ');
      var a = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число b: ');
      var b = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число c: ');
      var c = int.parse(stdin.readLineSync() ?? '0');
      if (a > b && a > c) {
        print(a);
      } else if (b > a && b > c) {
        print(b);
      } else if (c > b && c > a) {
        print(c);
      }
      break;

    case 5:
      //////Задача №1459. Римская система счисления
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=1459#1
      /*
      Дано число X. Требуется перевести это число в римскую систему счисления.

      Входные данные
      Дано число X в десятичной системе счисления (1  ≤  X  ≤  100).

      Выходные данные
      Выведите X в римской системе счисления.

      Примеры
      входные данные
      4
      выходные данные
      IV
      входные данные
      19
      выходные данные
      XIX
      входные данные
      46
      выходные данные
      XLVI
      */
      print('Введите число X: ');
      var x = int.parse(stdin.readLineSync() ?? '0');
      var n = (x ~/ 10).round();
      if (x == 100) {
        print('C');
      } else {
        switch (n) {
          case 1:
            stdout.write('X');
            break;
          case 2:
            stdout.write('XX');
            break;
          case 3:
            stdout.write('XXX');
            break;
          case 4:
            stdout.write('XL');
            break;
          case 5:
            stdout.write('L');
            break;
          case 6:
            stdout.write('LX');
            break;
          case 7:
            stdout.write('LXX');
            break;
          case 8:
            stdout.write('LXXX');
            break;
          case 9:
            stdout.write('XC');
            break;
        }
        switch (x % 10) {
          case 1:
            stdout.write('I');
            break;
          case 2:
            stdout.write('II');
            break;
          case 3:
            stdout.write('III');
            break;
          case 4:
            stdout.write('IV');
            break;
          case 5:
            stdout.write('V');
            break;
          case 6:
            stdout.write('VI');
            break;
          case 7:
            stdout.write('VII');
            break;
          case 8:
            stdout.write('VIII');
            break;
          case 9:
            stdout.write('IX');
            break;
        }
      }
      break;
    case 6:
      //////Задача №253. Високосный год
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=253#1
      /* 
      Требуется определить, является ли данный год високосным. (Напомним, что год является високосным, если его номер кратен 4, но не кратен 100, а также если он кратен 400.)

      Входные данные
      Вводится единственное число - номер года (целое, положительное, не превышает 30000).

      Выходные данные
      Требуется вывести слово YES, если год является високосным и NO - в противном случае.

      Примеры
      входные данные
      2007
      выходные данные
      NO
      входные данные
      2000
      выходные данные
      YES
      */
      print('Введите год: ');
      var year = int.parse(stdin.readLineSync() ?? '0');
      if (year % 4 == 0 && year % 100 == 0 || year % 400 == 0) {
        print('YES');
      } else {
        print('NO');
      }
      break;

    case 7:
      //////Задача №1451. Четные и нечетные числа
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=1451#1
      /*
      Даны три целых числа A, B, C. Определить, есть ли среди них хотя бы одно четное и хотя бы одно нечетное.

      Входные данные
      Числа A, B, C, не превышающие по модулю 10000.

      Выходные данные
      Одна строка – "YES" или "NO".

      Примеры
      входные данные
      3
      4
      5
      выходные данные
      YES
      входные данные
      7
      7
      7
      выходные данные
      NO
      */
      print('Введите число a: ');
      var a = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число b: ');
      var b = int.parse(stdin.readLineSync() ?? '0');
      print('Введите число c: ');
      var c = int.parse(stdin.readLineSync() ?? '0');
      if ((a + b) % 2 != 0) {
        print('YES');
      } else if ((b + c) % 2 != 0) {
        print('YES');
      } else if ((a + c) % 2 != 0) {
        print('YES');
      } else {
        print('NO');
      }
      break;

    case 8:
      //////Задача №254. Ладья
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=254#1
      /*
      Требуется определить, бьет ли ладья, стоящая на клетке с указанными координатами (номер строки и номер столбца), фигуру, стоящую на другой указанной клетке.

      Входные данные
      Вводятся четыре числа: координаты ладьи (два числа) и координаты другой фигуры (два числа), каждое число вводится в отдельной строке. Координаты - целые числа в интервале от 1 до 8.

      Выходные данные
      Требуется вывести слово YES, если ладья сможет побить фигуру за 1 ход и NO - в противном случае.

      Примеры
      входные данные
      1
      1
      2
      2
      выходные данные
      NO
      входные данные
      1
      1
      2
      1
      выходные данные
      YES
      */
      print('Введите координаты ладьи х1: ');
      var x1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты ладьи у1: ');
      var y1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты другой фигуры x2: ');
      var x2 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты другой фигуры y2: ');
      var y2 = int.parse(stdin.readLineSync() ?? '0');
      if (x1 == x2 || y1 == y2) {
        print('YES');
      } else {
        print('NO');
      }
      break;
    case 9:
      //////Задача №255. Слон
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=255#1
      /*
      Требуется определить, бьет ли слон, стоящий на клетке с указанными координатами (номер строки и номер столбца), фигуру, стоящую на другой указанной клетке.

      Входные данные
      Вводятся четыре числа: координаты слона и координаты другой фигуры. Координаты - целые числа в интервале от 1 до 8.

      Выходные данные
      Требуется вывести слово YES, если слон способен побить фигуру за 1 ход, в противном случае вывести слово NO

      Примеры
      входные данные
      1
      1
      5
      5
      выходные данные
      YES
      входные данные
      3
      2
      2
      2
      выходные данные
      NO
      */
      print('Введите координаты слона х1: ');
      var x1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты слона у1: ');
      var y1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты другой фигуры x2: ');
      var x2 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты другой фигуры y2: ');
      var y2 = int.parse(stdin.readLineSync() ?? '0');
      if (x1 + y1 == x2 + y2 || x1 - y1 == x2 - y2) {
        print('YES');
      } else {
        print('NO');
      }
      break;

    case 10:
      //////Задача №298. Король
      //////https://informatics.msk.ru/mod/statements/view.php?id=276&chapterid=298#1
      /*
      Поле шахматной доски определяется парой чисел (a, b), каждое от 1 до 8, первое число задает номер столбца, второе – номер строки. Заданы две клетки. Определите, может ли шахматный король попасть с первой клетки на вторую за один ход.

      Входные данные
      Даны 4 целых числа от 1 до 8 каждое, первые два задают начальную клетку, вторые два задают конечную клетку. Начальная и конечная клетки не совпадают. Числа записаны в отдельных строках.

      Выходные данные
      Программа должна вывести YES, если из первой клетки ходом короля можно попасть во вторую, или NO в противном случае.

      Примеры
      входные данные
      4
      4
      5
      5
      выходные данные
      YES
      */
      print('Введите координаты король х1: ');
      var x1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты король у1: ');
      var y1 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты куда нужно попасть x2: ');
      var x2 = int.parse(stdin.readLineSync() ?? '0');
      print('Введите координаты куда нужно попасть y2: ');
      var y2 = int.parse(stdin.readLineSync() ?? '0');
      var x3 = (x1 - x2);
      var y3 = (y1 - y2);
      if (x3.abs() <= 1 && y3.abs() <= 1) {
        print('YES');
      } else {
        print('NO');
      }
      break;
  }
}
