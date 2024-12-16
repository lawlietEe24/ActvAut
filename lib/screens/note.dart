class Note {
  String id;
  String title;
  String description;
  double price;

  Note({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
  });

  factory Note.fromMap(Map<dynamic, dynamic> data, String id) {
    return Note(
      id: id,
      title: data['title'],
      description: data['description'],
      price: data['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'price': price,
    };
  }
}
