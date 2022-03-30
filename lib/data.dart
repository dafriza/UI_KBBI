class Data {
  final String? title;
  final String? head;
  final String? description;
  final String? genre;
  final String? caption;
  final String type;
  Data({
    this.title,
    this.head,
    this.description,
    this.genre,
    this.caption,
    required this.type,
  });
  String getTitle() {
    return title!;
  }

  String getHead() {
    return head!;
  }

  String getDescription() {
    return description!;
  }

  String getGenre() {
    return genre!;
  }

  String getCaption() {
    return caption!;
  }
}
