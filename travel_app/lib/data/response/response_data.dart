import 'package:travel_app/domain/model/data_model.dart';

class DataReponse extends DataModel {
  DataReponse(
      {required super.name,
      required super.img,
      required super.price,
      required super.people,
      required super.stars,
      required super.description,
      required super.location});
  factory DataReponse.fromJson(Map<String, dynamic> json) {
    return DataReponse(
        name: json["name"],
        img: json["img"],
        price: json["price"],
        people: json["people"],
        stars: json["stars"],
        description: json["description"],
        location: json["location"]);
  }
}
