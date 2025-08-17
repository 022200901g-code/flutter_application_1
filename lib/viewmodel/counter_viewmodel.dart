import 'package:flutter/widgets.dart';
import '../models/counter_model.dart';

class CounterViewModel extends ChangeNotifier {
  // guardar el estado actual
  CounterModel model = CounterModel(0);

  // exponer los datos a la vista
  int get counter => model.count;

  // creamos las funciones de incrementar, decrementar y reset
  void increment() {
    model.incrementar();
    notifyListeners();
  }

  void decrement() {
    model.decrementar();
    notifyListeners();
  }

  void reset() {
    model.count = 0;
    notifyListeners();
  }
}
