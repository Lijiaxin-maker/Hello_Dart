import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future<void> readFileAwaitFor() async {
  var config = File('config.txt');
  var contents = await config.readAsString();
  print(contents);
  Stream<List<int>> inputStream = config.openRead();

  var lines =
      inputStream.transform(utf8.decoder).transform(const LineSplitter());
  try {
    await for (final line in lines) {
      print('Got ${line.length} characters from stream');
    }
    print('file is now closed');
  } catch (e) {
    print(e);
  }
}

void main(List<String> args) {
  readFileAwaitFor();
}
