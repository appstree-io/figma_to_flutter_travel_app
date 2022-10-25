// ignore_for_file: public_member_api_docs, sort_constructors_first
class Place {
  Place({
    required this.name,
    required this.country,
    required this.rating,
    required this.isFavourite,
    required this.description,
    required this.price,
    required this.image,
    required this.id,
  });

  final String id;
  final String name;
  final String country;
  final double rating;
  final bool isFavourite;
  final String description;
  final double price;
  final String image;

  Place copyWith({
    String? name,
    String? country,
    double? rating,
    bool? isFavourite,
    String? description,
    double? price,
    String? image,
    String? id,
  }) {
    return Place(
      name: name ?? this.name,
      country: country ?? this.country,
      rating: rating ?? this.rating,
      isFavourite: isFavourite ?? this.isFavourite,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
      id: id ?? this.id,
    );
  }

  @override
  String toString() {
    return 'Place(name: $name, country: $country, rating: $rating, isFavourite: $isFavourite, description: $description, price: $price, image: $image)';
  }

  @override
  bool operator ==(covariant Place other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.country == country &&
        other.rating == rating &&
        other.isFavourite == isFavourite &&
        other.description == description &&
        other.price == price &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        country.hashCode ^
        rating.hashCode ^
        isFavourite.hashCode ^
        description.hashCode ^
        price.hashCode ^
        image.hashCode;
  }
}
