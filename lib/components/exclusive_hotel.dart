import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app1/models/destination_model.dart';
import 'package:travel_app1/models/hotel_model.dart';

class HotelCards extends StatelessWidget {
  const HotelCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: hotels.length,
          itemBuilder: (BuildContext context, int index) {
            Hotel hotel = hotels[index];
            Destination destination = destinations[index];
            return Container(
              margin: EdgeInsets.all(10.0),
              width: 250.0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    bottom: 15.0,
                    child: Container(
                      height: 120.0,
                      width: 240.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              hotel.name,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              hotel.address,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '\$${hotel.price} / night',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        height: 180.0,
                        width: 220.0,
                        image: NetworkImage(hotel.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
