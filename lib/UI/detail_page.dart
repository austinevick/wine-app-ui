import 'package:flutter/material.dart';
import 'package:soft_drink_ui/UI/homepage.dart';

class DetailPage extends StatelessWidget {
  final WineCards wineCards;
  DetailPage({this.wineCards});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c42),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter:
                        ColorFilter.mode(wineCards.color, BlendMode.darken),
                    fit: BoxFit.cover,
                    image: AssetImage(wineCards.image)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        IconButton(
                            icon: (Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                            )),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(15)),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              wineCards.title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '\$' + wineCards.price.toString(),
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              style: TextStyle(fontSize: 20, color: Colors.white60),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Add to cart',
                    style: TextStyle(color: Color(0xff0b0c42), fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
