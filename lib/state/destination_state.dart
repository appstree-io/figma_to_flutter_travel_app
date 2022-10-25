import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vacation_time/models/place.dart';

final destinationProvider =
    StateNotifierProvider<DestinationState, List<Place>>((ref) {
  return DestinationState();
});

class DestinationState extends StateNotifier<List<Place>> {
  DestinationState() : super(_places);
  void fav(Place place) {
    state = _places.map<Place>((element) {
      if (element == place) {
        return element.copyWith(isFavourite: !element.isFavourite);
      }
      return element;
    }).toList();
  }
}

List<Place> _places = [
  const Place(
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
  const Place(
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
