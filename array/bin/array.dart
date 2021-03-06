import 'dart:io';
import 'dart:math';

void main() {
  print('Введите номер задания: ');
  var solv = int.parse(stdin.readLineSync() ?? '0');
  switch (solv) {
    case 1:
      /*
      Задача №63. A[0], A[2], A[4], ...
      Дан массив, состоящий из целых чисел. Нумерация элементов начинается с 0. Напишите программу, которая выведет элементы массива, номера которых четны (0, 2, 4...).

      Входные данные
      Сначала задано число N — количество элементов в массиве (1≤N≤100). Далее через пробел записаны N чисел — элементы массива. Массив состоит из целых чисел.

      Выходные данные
      Необходимо вывести все элементы массива с чётными номерами.

      Примеры
      входные данные
      6
      4 5 3 4 2 3
      выходные данные
      4 3 2 
      */
      var myList = <int>[];
      print('Введите количество чисел в массиве: ');
      var amountList = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < amountList; i++) {
        print('Введите число №${i + 1}');
        var numList = int.parse(stdin.readLineSync() ?? '0');
        if (i % 2 == 0) {
          myList.add(numList);
        }
      }
      print(myList.join(' '));
      break;

    case 2:
      /*
      Задача №64. Вывести четные элементы
      Дан массив, состоящий из целых чисел. Напишите программу, которая выводит те элементы массива, которые являются чётными числами.

      Входные данные
      Сначала задано число N — количество элементов в массиве (1≤N≤100). Далее через пробел записаны N чисел — элементы массива. Массив состоит из целых чисел.

      Выходные данные
      Необходимо вывести все четные элементы массива (то есть те элементы, которые являются четными числами).

      Примеры
      входные данные
      5
      1 2 3 4 5

      выходные данные
      2 4 
      */
      var myList = <int>[];
      print('Введите количество чисел в массиве: ');
      var amountList = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < amountList; i++) {
        print('Введите число №${i + 1}');
        var numList = int.parse(stdin.readLineSync() ?? '0');
        if (numList % 2 == 0) {
          myList.add(numList);
        }
      }
      print(myList.join(' '));
      break;

    case 3:
      /*
      Задача №65. Количество положительных элементов
      Дан массив, состоящий из целых чисел. Напишите программу, которая подсчитывает количество положительных чисел среди элементов массива.

      Входные данные
      Сначала задано число N — количество элементов в массиве (1≤N≤10000). Далее через пробел записаны N чисел — элементы массива. Массив состоит из целых чисел.

      Выходные данные
      Необходимо единственное число - количество положительных элементов в массиве.

      Примеры
      входные данные
      5
      1 2 3 -1 -4

      выходные данные
      3
      */
      var myList = <int>[];
      print('Введите количество чисел в массиве: ');
      var amountList = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < amountList; i++) {
        print('Введите число №${i + 1}');
        var numList = int.parse(stdin.readLineSync() ?? '0');
        if (numList > 0) {
          myList.add(numList);
        }
      }
      print(myList.length);
      break;

    case 4:
      /*
      Задача №69. Переставить элементы в обратном порядке
      Напишите программу, которая переставляет элементы массива в обратном порядке без использования дополнительного массива. Программа должна считать массив, поменять порядок его элементов, затем вывести результат (просто вывести элементы массива в обратном порядке – недостаточно!)

      Входные данные
      Сначала задано число N — количество элементов в массиве (1≤N≤35). Далее через пробел записаны N чисел — элементы массива. Массив состоит из целых чисел.

      Выходные данные
      Необходимо вывести массив, полученный после перестановки элементов.

      Примеры
      входные данные
      6
      4 5 3 4 2 3

      выходные данные
      3 2 4 3 5 4
      */
      var myList = <int>[];
      print('Введите количество чисел в массиве: ');
      var amountList = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < amountList; i++) {
        print('Введите число №${i + 1}');
        var numList = int.parse(stdin.readLineSync() ?? '0');
        myList.add(numList);
      }
      print(myList.reversed.join(' '));
      break;

    case 5:
      /*
      Задача №72. Максимум в массиве
      Вводится массив, состоящий из целых чисел. Найти наибольшее среди них.

      Входные данные
      Сначала задано число N — количество элементов в массиве (1≤N≤35). Далее через пробел записаны N чисел — элементы массива. Массив состоит из целых чисел.

      Выходные данные
      Необходимо вывести значение наибольшего элемента в массиве.

      Примеры
      входные данные
      3
      1 2 3

      выходные данные
      3
      */
      var myList = <int>[];
      print('Введите количество чисел в массиве: ');
      var amountList = int.parse(stdin.readLineSync() ?? '0');
      for (var i = 0; i < amountList; i++) {
        print('Введите число №${i + 1}');
        var numList = int.parse(stdin.readLineSync() ?? '0');
        myList.add(numList);
      }
      print(myList.reduce(max));
  }
}
