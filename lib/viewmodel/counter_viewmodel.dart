import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/models/counter_model.dart';
import '../models/counter_model.dart';

class CounterViewmodel extends ChangeNotifier {
  // guardar el estado actual
  CounterModel model = CounterModel(0);
  //exponer los datos a la vista
  int get counter => model.count;
  // creamos las funciones de incrementar y decrementar
  void increment(){
    model.count++;
    notifyListeners();
  }

   void decrement(){
    model.count--;
    notifyListeners();
  }

}