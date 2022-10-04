void main(List<String> args) {
  numbers();
  strings();
  booleans();
  lists();
  sets();
  maps();
  runes_and_grapheme_clusters();
  symbols();
}

void numbers() {
  var x = 1;
  var hex = 0xDEADBEEF;

  num y = 1; // x can have both int and double values
  y += 2.5;
  double z = 1; // Equivalent to double z = 1.0.

//下面是字符串和数字之间转换的方式：
// String -> int
  var one = int.parse('1');
  assert(one == 1);

// String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

// int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

// double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');

//整型支持传统的位移操作，比如移位（<<、>>和>>>）、补码 (~)、按位与 (&)、按位或 (|) 以及按位异或 (^)，例如：
  assert((3 << 1) == 6); // 0011 << 1 == 0110
  assert((3 | 4) == 7); // 0011 | 0100 == 0111
  assert((3 & 4) == 0); // 0011 & 0100 == 0000
}

void strings() {
  var s_1 = '使用单引号创建字符串字面量。';
  var s_2 = "双引号也可以用于创建字符串字面量。";
  var s_3 = '使用单引号创建字符串时可以使用斜杠来转义那些与单引号冲突的字符串：\'。';
  var s_4 = "而在双引号中则不需要使用转义与单引号冲突的字符串：'";

//在字符串中，请以${表达式}的形式使用表达式，如果表达式是一个标识符，可以省略掉 {}。
//如果表达式的结果为一个对象，则 Dart 会调用该对象的toString方法来获取一个字符串。
  var s = '字符串插值';

  assert('Dart 有$s，使用起来非常方便。' == 'Dart 有字符串插值，使用起来非常方便。');
  assert('使用${s.substring(3, 5)}表达式也非常方便' == '使用插值表达式也非常方便。');

//你可以使用+运算符或并列放置多个字符串来连接字符串：
  var s1 = '可以拼接'
      '字符串'
      "即便它们不在同一行。";
  assert(s1 == '可以拼接字符串即便它们不在同一行。');

  var s2 = '使用加号 + 运算符' + '也可以达到相同的效果。';
  assert(s2 == '使用加号 + 运算符也可以达到相同的效果。');
}

void booleans() {
//Dart 使用bool关键字表示布尔类型，布尔类型只有两个对象true和false，两者都是编译时常量。

//Dart 的类型安全不允许你使用类似if (nonbooleanValue)或者assert (nonbooleanValue)这样的代码检查布尔值。
//相反，你应该总是显示地检查布尔值，比如像下面的代码这样：
// Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

void lists() {
  //数组 (Array) 是几乎所有编程语言中最常见的集合类型，在 Dart 中数组由List对象表示。通常称之为List。
  var list = [1, 2, 3];
}

void sets() {
//在 Dart 中，set 是一组特定元素的无序集合。Dart 支持的集合由集合的字面量和Set类提供。
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

//使用add()方法或addAll()方法向已存在的 Set 中添加项目
//使用.length可以获取 Set 中元素的数量
}

void maps() {
  //通常来说，Map 是用来关联 keys 和 values 的对象。其中键和值都可以是任何类型的对象。
  //每个键只能出现一次但是值可以重复出现多次。Dart 中 Map 提供了 Map 字面量以及Map类型两种形式的 Map。
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings'
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };
}

void runes_and_grapheme_clusters() {
  print('\u{1f600}');
}

void symbols() {
  //Symbol 表示 Dart 中声明的操作符或者标识符。你几乎不会需要 Symbol，
  //但是它们对于那些通过名称引用标识符的 API 很有用因为代码压缩后，尽管标识符的名称会改变，但是它们的 Symbol 会保持不变。
  //可以使用在标识符前加 # 前缀来获取 Symbol
  #radix;
  #bar;
}
