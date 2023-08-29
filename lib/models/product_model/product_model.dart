import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    required this.image,
    required this.id,
    required this.price,   
    required this.isFavourite,
    required this.name,
    required this.description,
    required this.status,
    
  });

  String image;
  String id;
  String price;
  bool isFavourite;
  String name;
  String description;
  String status;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      image: json["image"],
      id: json["id"],
      price: json["price"],
      isFavourite: json["isFavourite"],
      name: json["name"],
      description: json["description"],
      status: json["status"]
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "id": id,
        "price": price,
        "isFavourite": isFavourite,
        "name": name,
        "description": description,
        "status": status,
      };
}
