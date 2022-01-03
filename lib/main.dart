import 'package:flutter/material.dart';

///////////////////////////////
// ① Main：Flutterアプリもmain()からコードが実行されます。
// `void main() => runApp(MyApp());` でも意味は同じです。
void main() {
  return runApp(MyApp());
}

///////////////////////////////
// ② アプリの基盤：アプリのテーマやスタイルを設定する。その上のページを追加していく。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialAppという形式のアプリを作成
    return MaterialApp(
      theme: ThemeData(), // アプリのテーマカラーなど詳細を入力
      home: MyHomePage(), // メインページを作成
    );
  }
}

///////////////////////////////
// ③ アプリのメインページ（固定）
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Bar"),
      ),
      body: Center(
        child: ListView(children: [
          TodoCardWidget(label: "TODO 1"),
          TodoCardWidget(label: "TODO 2"),
          TodoCardWidget(label: "TODO 3"),
          TodoCardWidget(label: "TODO 4"),
        ]),
      ),
    );
  }
}

////////////////////
/// ⑤ StatefulWidget本体
class TodoCardWidget extends StatefulWidget {
  
  final String label;
  var state = false;
  
  TodoCardWidget({Key? key, required this.label}) : super(key: key);

  @override
  _TodoCardWidgetState createState() => _TodoCardWidgetState();
}

/// ⑥ TodoCardWidgetの状態
class _TodoCardWidgetState extends State<TodoCardWidget> {
  
  void _changeState(value) {
    setState(() {
      widget.state = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(onChanged: _changeState, value: widget.state),
            Text(widget.label),
          ],
        ),
      ),
    );
  }
}
