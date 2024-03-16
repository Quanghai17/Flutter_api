class Place {
  int id;
  String title;
  String slug;
  String desc;
  String image;
  String content;
  DateTime createdAt;
  DateTime updatedAt;

  Place({
    required this.id,
    required this.title,
    required this.slug,
    required this.desc,
    required this.image,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'] as int,
      title: json['title'] as String,
      slug: json['slug'] as String,
      desc: json['desc'] as String,
      image: json['image'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
