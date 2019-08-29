class Listing {
  String _id;
  String alias;
  String excerpt;

  Listing(String _id, String name, String excerpt) {
    this._id = _id;
    this.alias = alias;
    this.excerpt = excerpt;
  }

  Listing.fromJson(Map json)
      : _id = json['_id'],
        alias = json['alias'],
        excerpt = json['excerpt'];
  Map toJson() {
    return {'_id': _id, 'alias': alias, 'excerpt': excerpt};
  }
}
