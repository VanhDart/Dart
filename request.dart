import 'myobj.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState(); 
  }
}

class _CounterPageState extends State<CounterPage> {
  int n =0;
  final MyObject _myObject = MyObject(value: 0);

  void _incremenObject() {
    setState(() {
      _myObject.increment();
    });
  }

  void _decremenObject() {
    setState(() {
      _myObject.decrement();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
            'Làm quen với giao diện nhập liệu và hướng đối tượng'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: 'Nhập Số Nguyên n'),
              onChanged: (value) {
                setState(() {
                n = int.parse(value);
                });
              },
            ),
            const Text(
              'Count',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
            Text(
              '${_myObject.value}',
              style: const TextStyle(
                fontSize: 32,
              )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () {
                    _decremenObject();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                  label: const Text('giảm')),
                const SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    _incremenObject();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                  label: const Text('tăng')),
                const SizedBox(width: 10),
                OutlinedButton.icon(
                  onPressed: () {
                    _myObject.power(n);
                    setState(() {});
                  },
                  icon: const Icon(Icons.update),
                  label: const Text('Cập Nhật')),
              ],
            ),
            Text(
              'Lũy thừa bậc $n của ${_myObject.value}'
              ': ${_myObject.result}',
              style: const TextStyle(
                fontSize: 32,
              )
            ),
          ],
        ),
      ),
    );
  }
}
