void main(List<String> args) {}

void parameters() {
  //函数可以有两种形式的参数：必要参数 和 可选参数。必要参数定义在参数列表前面，可选参数则定义在必要参数后面。可选参数可以是 命名的 或 位置的。

  //命名参数默认为可选参数，除非他们被特别标记为 required。
  /// Sets the [bold] and [hidden] flags ...
  void enableFlags({bool? bold, bool? hidden}) {}
  ;

  //当调用函数时，你可以使用 参数名: 参数值 指定一个命名参数的值。例如：
  enableFlags(bold: true, hidden: false);

  void the_main_function() {
    //每个 Dart 程序都必须有一个 main() 顶级函数作为程序的入口， main() 函数返回值为 void 并且有一个 List<String> 类型的可选参数。
    void main() {
      print('Hello, World!');
    }
  }

  void functions_as_first_class_objects() {
    //可以将函数作为参数传递给另一个函数。
    void printElement(int element) {
      print(element);
    }

    var list = [1, 2, 3];

    // Pass printElement as a parameter.
    list.forEach(printElement);
  }
}

void anonymous_functions() {
  //大多数方法都是有名字的，比如 main() 或 printElement()。你可以创建一个没有名字的方法，称之为 匿名函数、 Lambda 表达式 或 Closure 闭包。你可以将匿名方法赋值给一个变量然后使用它，比如将该变量添加到集合或从中删除。
  //匿名方法看起来与命名方法类似，在括号之间可以定义参数，参数之间用逗号分割。
  //后面大括号中的内容则为函数体：
  const list = ['apples', 'bananas', 'oranges'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}

void lexical_scope() {
  //Dart 是词法有作用域语言，变量的作用域在写代码的时候就确定了，大括号内定义的变量只能在大括号内访问，与 Java 类似。
  bool topLevel = true;

  void main() {
    var insideMain = true;

    void myFunction() {
      var insideFunction = true;

      void nestedFunction() {
        var insideNestedFunction = true;

        assert(topLevel);
        assert(insideMain);
        assert(insideFunction);
        assert(insideNestedFunction);
      }
    }
  }
}

void lexical_closures() {
  //闭包 即一个函数对象，即使函数对象的调用在它原始作用域之外，依然能够访问在它词法作用域内的变量。
  /// Returns a function that adds [addBy] to the
  /// function's argument.
  Function makeAdder(int addBy) {
    return (int i) => addBy + i;
  }

  void main() {
    // Create a function that adds 2.
    var add2 = makeAdder(2);

    // Create a function that adds 4.
    var add4 = makeAdder(4);

    assert(add2(3) == 5);
    assert(add4(3) == 7);
  }
}

void testing_functions_for_equality() {}

void return_values() {
//所有的函数都有返回值。没有显示返回语句的函数最后一行默认为执行 return null;
  foo() {}

  assert(foo() == null);
}
