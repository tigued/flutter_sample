import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

///////////////////////////////
void main() => runApp(MyApp());

///////////////////////////////
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(), home: MyHomePage());
  }
}

///////////////////////////////
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// ⑧ MyHomePageの状態
class _MyHomePageState extends State<MyHomePage> {
  String data = "";
  String label = "";
  var color = Colors.white;

  @override
  void initState() {
    super.initState();
    // ① initState()を上書きし、userAccelerometerセンサのイベントをモニタリングする
    userAccelerometerEvents.listen((event) {
      setState(() {
        // ② センサデータの生データを可視化する
        data = "X:${event.x.toStringAsFixed(3)}\n"
            "Y:${event.y.toStringAsFixed(3)}\n"
            "Z:${event.z.toStringAsFixed(3)}";

        // ③ 加速度データの値に応じて、labelとcolor(背景色)を変更する
        if (event.x.abs() > 15) {
          label = "X-Axis Event";
          color = Colors.blueAccent;
        }
        if (event.y.abs() > 15) {
          label = "Y-Axis Event";
          color = Colors.redAccent;
        }
        if (event.z.abs() > 15) {
          label = "Z-Axis Event";
          color = Colors.greenAccent;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Bar"),
      ),
      body: Container(
        color: color,
        child: Center(
          child: Column(
            children: [
              Text(data),
              Text(label, style: const TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
