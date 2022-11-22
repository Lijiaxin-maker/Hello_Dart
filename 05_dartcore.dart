import 'dart:core';

void main(List<String> args) {
  Object? anObject;
  print(anObject);
  var tea;
  print('I drink $tea.');

  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  assert(123.456.toStringAsFixed(2) == '123.46');
  assert('Never odd or even'.contains('odd'));

  for (final char in 'hello'.split('')) {
    print(char);
  }

  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();
  print(fullString);

  // Create a list using a list literal.
  var fruits = ['apples', 'oranges'];

// Add to a list.
  fruits.add('kiwis');

// Add multiple items to a list.
  fruits.addAll(['grapes', 'bananas']);
  print(fruits);

  var appleIndex = fruits.indexOf('apples');
  fruits.removeAt(appleIndex);
  print(fruits);

  var uri = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  print(uri);
}

class FooException implements Exception {
  final String? msg;

  const FooException([this.msg]);

  @override
  String toString() => msg ?? 'FooException';
}
