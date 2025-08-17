class CounterModel {
  int count;

  CounterModel(this.count);

  void incrementar() {
    count++;
  }

  void decrementar() {
    if (count > 0) {
      // Evita que el contador sea negativo
      count--;
    }
  }
}
