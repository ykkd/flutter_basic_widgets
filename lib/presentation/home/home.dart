import 'package:flutter/material.dart';
import '../parts/card/card1.dart';
import '../parts/card/card2.dart';
import '../parts/card/card3.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fooderlich', style: Theme.of(context).textTheme.headline6),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:
              Theme.of(context).textSelectionTheme.selectionColor,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            // ignore: lines_longer_than_80_chars
            const BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card'),
            // ignore: lines_longer_than_80_chars
            const BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card2'),
            // ignore: lines_longer_than_80_chars
            const BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard), label: 'Card3'),
          ]),
    );
  }
}
