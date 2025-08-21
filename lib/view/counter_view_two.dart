import 'package:flutter/material.dart';

class CounterViewTwo extends StatefulWidget {
  const CounterViewTwo({super.key});

  @override
  State<CounterViewTwo> createState() => _CounterViewTwoState();
}

class _CounterViewTwoState extends State<CounterViewTwo> {
  int counter = 0;
  void increment() {
    setState(() {
      counter++;
    });
  }

  void decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter View 2")),
      body: Center(
        child: Text(
          "Contador 2: $counter",
          style: const TextStyle(fontSize: 28),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "btn3",
            onPressed: increment,
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 12),
          FloatingActionButton(
            heroTag: "btn4",
            onPressed: decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
