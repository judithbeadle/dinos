class Dino {
  String name;
  String sciName;
  double height;
  double weight;
  // choose from {herbivore, omnivore, carnivore}
  // String dyk;

  Dino(this.name, {this.sciName = '', this.height, this.weight});

  // eigene Methoden
  String dinoDescription() {
    return ('${this.sciName}');
  }

  @override
  String toString() {
    return 'Name: ${this.name}, Scientific Name: ${this.sciName})}';
  }
}
