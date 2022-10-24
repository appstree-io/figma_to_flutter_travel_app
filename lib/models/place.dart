// ignore_for_file: public_member_api_docs, sort_constructors_first
class Place {
  const Place({
    required this.name,
    required this.country,
    required this.rating,
    required this.isFavourite,
    required this.description,
    required this.price,
    required this.image,
  });

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
  }) {
    return Place(
      name: name ?? this.name,
      country: country ?? this.country,
      rating: rating ?? this.rating,
      isFavourite: isFavourite ?? this.isFavourite,
      description: description ?? this.description,
      price: price ?? this.price,
      image: image ?? this.image,
    );
  }
}

const places = [
  Place(
    name: 'Kufa Beach',
    country: 'Bali, Indonesia',
    rating: 4.2,
    isFavourite: true,
    description:
        'A resort is a place used for vacation, relaxation or as a day.',
    price: 20000,
    image:
        'https://images.unsplash.com/photo-1590523278191-995cbcda646b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
  ),
  Place(
    name: 'Baga Beach',
    country: 'Goa, India',
    rating: 4.8,
    isFavourite: false,
    description:
        'A resort is a place used for vacation, relaxation or as a day.',
    price: 15000,
    image:
        'https://unsplash.com/photos/JduZyOCGZKc/download?ixid=MnwxMjA3fDB8MXxzZWFyY2h8Nnx8YmVhY2hlc3xlbnwwfHx8fDE2NjY2MDYxNzM&force=true&w=640',
  ),
];
