import 'dart:convert';

CartModel productModelFromJson(String str) =>
    CartModel.fromJson(json.decode(str));

String cartModelToJson(CartModel data) => json.encode(data.toJson());

class CartModel {
  int? id;
  int userId;
  String date;
  //Map<String, dynamic>? products;

  CartModel({
    this.id,
    this.userId = 0,
    this.date = '',
    //this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        userId: json["userId"],
        date: json["date"],
        // products: json[{'productId', 'quantity'}],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "date": date,
      }; //"products": products};
}
