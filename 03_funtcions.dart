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

  void functions_as_first_class_objects() {}
}
