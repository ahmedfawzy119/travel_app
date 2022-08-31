import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app1/components/exclusive_hotel.dart';
import 'package:travel_app1/components/top_destination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;
int _currentTap = 0;

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: selectedIndex == index
                ? Theme.of(context).accentColor
                : Color(0xFFE7EBEE),
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(
          icons[index],
          size: 25.0,
          color: selectedIndex == index
              ? Theme.of(context).primaryColor
              : Color.fromARGB(255, 188, 193, 196),
        ),
      ),
    );
  }

  void _selectedItem(int value) {
    setState(() {
      _currentTap = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 50,
              ),
              child: Text(
                'What would you like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(icons.length, (index) => _buildIcon(index))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TitlePart(
                    starting: 'Top Destination',
                    ending: 'See more',
                    press: () {},
                  ),
                ),
                Cards(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TitlePart(
                      starting: 'Exclusive Hotel',
                      ending: 'See more',
                      press: () {}),
                ),
                HotelCards(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTap,
        onTap: _selectedItem,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
              size: 30.0,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
