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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: const MyHomePage(title: '레이아웃 실습'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(child: createBody()),
    );
  }
}

// 아래는 기존 선언 유지
Widget createBody() {
  //return Container(child: createS1());
  /*
  return Column(
    children: [
      Text('MainAxisAlignment.start'),
      createS2(MainAxisAlignment.start),
      Text('MainAxisAlignment.center'),
      createS2(MainAxisAlignment.center),
      Text('MainAxisAlignment.end'),
      createS2(MainAxisAlignment.end),
      Text('MainAxisAlignment.spaceEvenly'),
      createS2(MainAxisAlignment.spaceEvenly),
      Text('MainAxisAlignment.spaceBetween'),
      createS2(MainAxisAlignment.spaceBetween),
      Text('MainAxisAlignment.spaceAround'),
      createS2(MainAxisAlignment.spaceAround),
    ],
  );
  */
  //return createBox(11);

  /*
  return Column(
    children: [
      Expanded(child: Container(color: Colors.blue)),
      Container(height: 200, color: Colors.red),
    ],
  );
  */

  //return createS4();
  return createS6();
}

Widget createS1() {
  return Container(
    padding: const EdgeInsets.only(left: 20, right: 20),
    width: 200,
    height: 50,
    color: Colors.red,
    child: const Center(child: Text('Container')),
  );
}

Widget createS2(MainAxisAlignment alignment) {
  return Row(
    mainAxisAlignment: alignment,
    children: List.generate(
      5,
      (index) => Container(
        width: 40,
        height: 40,
        color: Colors.red,
        margin: const EdgeInsets.all(5),
      ),
    ),
  );
}

Widget createS3(CrossAxisAlignment alignment) {
  return Container(
    color: Colors.blue[100],
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: alignment,
      children: List.generate(
        5,
        (index) => Container(
          width: 40,
          height: 40,
          color: Colors.red,
          margin: const EdgeInsets.all(5),
        ),
      ),
    ),
  );
}

Widget addBox(bool isShowable) {
  return Container(
    width: 40,
    height: 40,
    color: isShowable ? Colors.blue : Colors.transparent,
    margin: const EdgeInsets.all(5),
  );
}

Widget addBox2(int flex) {
  return Expanded(
    flex: flex,
    child: Container(
      height: 40,
      color: Colors.red,
      margin: const EdgeInsets.all(5),
    ),
  );
}

Widget createBox(int size) {
  List<Widget> result = [];

  for (var y = 0; y < size; y++) {
    List<Widget> line = [];
    for (var x = 0; x < size; x++) {
      var condition = x == y || (size - 1 - x) == y;

      line.add(addBox(condition));
    }
    result.add(Row(children: line));
  }

  return Column(children: result);
}

Widget createS4() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Expanded(
        child: Container(
          height: 40,
          color: Colors.red,
          margin: const EdgeInsets.all(5),
        ),
      ),
      ...List.generate(
        4,
        (index) => Container(
          width: 40,
          height: 40,
          color: Colors.red,
          margin: const EdgeInsets.all(5),
        ),
      ),
    ],
  );
}

Widget createS5() {
  return Row(children: [addBox2(1), addBox2(3), addBox2(2)]);
}

Widget createS6() {
  return Center(
    child: SizedBox(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.red)),
                Expanded(child: Container(color: Colors.yellow)),
              ],
            ),
          ),
          Expanded(child: Container(color: Colors.blue)),
        ],
      ),
    ),
  );
}
