import 'dart:io';
import 'dart:math';

void main() {
  // List<int> myList = [10, 20, 30, 5, 3, 2];
  // print(addFunction2(myList));
  // priN(10);
  ///////////////////////////////////////////////////////////
  // funcAB();
  // stepen();
  // nard();


}

// Рекурсия
// 1) Создать функцию, которая запрашивает у пользователя ответ на пример a
// + b = ?
// Нужно создать две переменные a и b, которые генерируются с помощью
// рандома.
// Также нужна переменная которая записывает результат(сложение
// переменных a и b).
// Затем вы вводите ответ с клавиатуры.
// Компьютер сравнивает ответы.
// Если вы ответили правильно, то вывести на экран «Правильно!».
// Если вы ответили неправильно, то заново вызвать функцию.
funcAB() {
  int a = Random().nextInt(10);
  int b = Random().nextInt(10);
  int c = a + b;
  stdout.write('Сколько будет $a + $b: ');
  int userNum = int.parse(stdin.readLineSync()!);

  if (userNum == c) {
    print('Правильно!');
    print('Ваше число $c');
  } else {
    print('Неправильно попробуйте еще раз');
    funcAB();
  }
}

// 2) Создать функцию, которая бросает игральную кость(нарды).
// Затем вы вводите ответ с клавиатуры: 1- бросить еще раз, 2 - закончить.
// Если вы введете 1, то функция вызывается заново,
// Если вы введете 2, то вывести на экран «wasted»

nard() {
  int cost = Random().nextInt(6) + 1;
  print('Результат! Кость выпала $cost\n');
  print('Если хотите бросить еще раз нажмите 1');
  print('Если хотите закончить нажмите 2');
  int userNum = int.parse(stdin.readLineSync()!);
  if (userNum == 1) {
    nard();
  } else {
    print('wasted');
  }
}

// 3) Создать функцию, которая возводит введенное вами число в введенную
// вами степенью,
// т.е. Ваша функция принимает два параметра a и b. сделать с помощью рекурсии
stepen() {
  stdout.write('Введите число которое хотите возвести в степень: ');
  int userNum = int.parse(stdin.readLineSync()!);
  if (userNum.runtimeType == int) {
    userNum = userNum * userNum;
    print('Степень $userNum');
  } else {
    print('Ошибка! Попробуйте еще раз');
    stepen();
  }
}

// 4) Дано натуральное число N. Вычислите сумму его цифр.



// 5) Последовательность чисел Фибоначи определяется
// формулой Fn = Fn-1 + Fn-2
// .

// То есть, следующее число получается как сумма двух предыдущих.
// Первые два числа равны 1, затем 2(1+1), затем 3(1+2), 5(2+3) и так
// далее: 1, 1, 2, 3, 5, 8, 13, 21....
// Напишите функцию fib(n) которая возвращает n-е число Фибоначчи.
// Пример работы:

// fib(n) { /* ваш код */ }

// print(fib(3)); // 2
// print(fib(7)); // 13

















// Дано натуральное число n. Выведите все числа от 1 до n.
priN(int n) {
  if (n > 1) {
    priN(n - 1);
  }
  print(n);
} ////true нужно улучшить

int addFunction(List<int> myList) {
  ///Прямая рекурсия
  print(myList);
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return myList[0] + addFunction(myList.sublist(1));
  }
}

int addFunction2(List<int> myList) {
  ///Косвенная рекурсия
  print(myList);
  if (myList.length <= 1) {
    return myList[0];
  } else {
    return anotherFunction(myList);
  }
}

int anotherFunction(List<int> myList) {
  return myList[0] + addFunction(myList.sublist(1));
}

//   int n = 4444;
//   int sum = sumOfN(n);
//   print('Сумма цифр числа $n равна $sum');
// int sumOfN(int number) {
//   if (number < 10) {
//     return number;
//   } else {
//     return number % 10 + sumOfN(number ~/ 10);
//   }
// }