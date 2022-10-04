void main(List<String> args) {
  default_value();
  late_variables();
  final_and_const();
}

void default_value() {
  int lineCount = 0;
  assert(lineCount == 0);
  assert(lineCount != 1);

  //在 Dart 中，未初始化以及可空类型的变量拥有一个默认的初始值 null。（如果你未迁移至 空安全，所有变量都为可空类型。）即便数字也是如此，因为在 Dart 中一切皆为对象，数字也不例外。
}

void late_variables() {
  late String temperature = readThermometer(); // Lazily initialized.
//如果将变量标记为late，但在声明时对其进行初始化，那么初始化器将在首次使用该变量时运行。这种惰性初始化在以下几种情况下很方便：
//变量可能不需要，初始化它的成本很高。
//您正在初始化一个实例变量，它的初始值设定项需要访问该变量。
}

String readThermometer() {
  return 'null';
}

void final_and_const() {
  final name = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  //name = 'Alice';(x)

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere

  //bar = 42;(x)

  //如果你不想更改一个变量，可以使用关键字final或者const修饰变量，这两个关键字可以替代var关键字或者加在一个具体的类型前。
  //一个 final 变量只可以被赋值一次；一个 const 变量是一个编译时常量（const 变量同时也是 final 的）。
  //顶层的 final 变量或者类的 final 变量在其第一次使用的时候被初始化。
}
