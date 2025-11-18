import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String user;
  String name;
  int price;
  String description;
  String thumbnail;
  String category;
  bool isFeatured;
  String id;
  int size;
  int stock;
  int review;
  int reviewCount;
  int userId;

  ProductEntry({
    required this.user,
    required this.name,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.category,
    required this.isFeatured,
    required this.id,
    required this.size,
    required this.stock,
    required this.review,
    required this.reviewCount,
    required this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
    user: json["user"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    thumbnail: json["thumbnail"],
    category: json["category"],
    isFeatured: json["is_featured"],
    id: json["id"],
    size: json["size"],
    stock: json["stock"],
    review: json["review"],
    reviewCount: json["reviewCount"],
    userId: json["user_id"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "price": price,
    "description": description,
    "thumbnail": thumbnail,
    "category": category,
    "is_featured": isFeatured,
    "id": id,
    "size": size,
    "stock": stock,
    "review": review,
    "reviewCount": reviewCount,
    "user_id": userId,
  };
}
