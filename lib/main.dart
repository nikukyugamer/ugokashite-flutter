import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "偶数";
  void incrementCounter() {
    print('hello');
    print(_counter);
    print(_type);

    setState(() {
      _counter++;
      _type = _counter % 2 == 0 ? "偶数" : "奇数";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Row(
              children: [
                Icon(Icons.create),
                Text('初めてのタイトル'),
              ],
            )),
        body: Column(children: [
          const Text('Hello, world!!'),
          const Text('ハロー、ワールド！！'),
          if (_counter % 2 == 0)
            Text(_type,
                style: const TextStyle(fontSize: 20, color: Colors.red)),
          TextButton(
            onPressed: () => {print("ボタンが押されました！")},
            child: const Text('テキストボタン'),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
              ),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
              Icon(
                Icons.beach_access,
                color: Colors.blue,
                size: 36.0,
              ),
            ],
          )
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: () => incrementCounter(),
            child: const Icon(Icons.timer)),
        drawer: const Drawer(child: Center(child: Text("Drawerです。"))),
        endDrawer: const Drawer(child: Center(child: Text("エンドドロワーです。"))));
  }
}
