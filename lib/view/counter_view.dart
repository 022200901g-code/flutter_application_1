import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterViewModel = Provider.of<CounterViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Contador MVVM')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Contador: ${counterViewModel.counter}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counterViewModel.decrement,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counterViewModel.reset,
                  child: const Icon(Icons.refresh),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counterViewModel.increment,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
