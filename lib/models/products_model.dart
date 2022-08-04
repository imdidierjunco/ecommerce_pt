// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

ProductModel productModelFromJson(String str) =>
    ProductModel.fromJson(json.decode(str));

String productModelToJson(ProductModel data) => json.encode(data.toJson());

class ProductModel {
  ProductModel({
    this.id,
    this.title = '',
    this.price = 0.0,
    this.category = '',
    this.description = '',
    this.image,
  });

  int? id;
  String title;
  double price;
  String category;
  String description;
  String? image;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      category: json["category"],
      description: json["description"],
      image: json['image']);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "category": category,
        "description": description,
        "image": image
      };
}
