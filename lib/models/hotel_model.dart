class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/hotel0.jpg?raw=true',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Hotel(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/hotel1.jpg?raw=true',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Hotel(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/hotel2.jpg?raw=true',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];
