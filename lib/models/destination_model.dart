import 'package:flutter/material.dart';
import 'package:travel_app1/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/stmarksbasilica.jpg?raw=true',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/gondola.jpg?raw=true',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/murano.jpg?raw=true',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/venice.jpg?raw=true',
    city: 'Venice',
    country: 'Italy',
    description: 'Visit Venice for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/paris.jpg?raw=true',
    city: 'Paris',
    country: 'France',
    description: 'Visit Paris for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/newdelhi.jpg?raw=true',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/saopaulo.jpg?raw=true',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'https://github.com/MarcusNg/flutter_travel_ui/blob/master/assets/images/newyork.jpg?raw=true',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
