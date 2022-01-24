import 'package:flutter/material.dart';
import '../../Theme/fooderlich_theme.dart';
import '../../stub/chip_stub.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  final Radius edgeRadius = const Radius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(edgeRadius),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: BorderRadius.all(edgeRadius)),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.book, color: Colors.white, size: 40),
                  const SizedBox(height: 8),
                  Text('Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 12,
                children: chipStubs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
