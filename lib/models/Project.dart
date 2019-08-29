class Project {
  String _id;
  int uid;
  String title;
  String description;
  String url;

  Project(String _id, int int, String title, String description, String url) {
    this._id = _id;
    this.uid = uid;
    this.title = title ?? 'Untitled';
    this.description = description ?? 'No description...';
    this.url = url ??
        'https://icon-library.net/images/about-me-icon-png/about-me-icon-png-16.jpg';
  }

  Project.fromJson(Map json)
      : _id = json['_id'],
        uid = json['uid'],
        title = json['title'],
        description = json['description'],
        url = json['images'][0]['url'];

  Map toJson() {
    return {
      '_id': _id,
      'uid': uid,
      'alias': title,
      'description': description,
      'url': url
    };
  }
}
