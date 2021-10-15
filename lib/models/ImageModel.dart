class ImageModel {
  int id;
 
  String url;

  ImageModel(this.id, this.url);

  ImageModel.fromJSON(Map<String, dynamic> parsedJSON) {
    id = parsedJSON["id"];
    url = parsedJSON["url"];
  }
}
