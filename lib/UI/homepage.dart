import 'package:flutter/material.dart';
import 'package:soft_drink_ui/UI/detail_page.dart';

class HomePage extends StatelessWidget {
  final WineCards wineCards;
  HomePage({this.wineCards});

  final List<WineCards> wines = [
    WineCards(
        image: 'images/wine_2.jpg',
        title: 'Italian Sangiovese',
        price: 600,
        color: Color(0xfff7b020)),
    WineCards(
        image: 'images/wine_4.jpg',
        title: 'Grape flavor',
        price: 800,
        color: Colors.red),
    WineCards(
        image: 'images/wine_1.jpg',
        title: 'La Crema',
        price: 300,
        color: Color(0xff57eb00).withOpacity(0.8)),
    WineCards(
        image: 'images/wine_3.jpg',
        title: 'Red Latre',
        price: 500,
        color: Colors.redAccent),
    WineCards(
        image: 'images/wine_5.jpg',
        title: 'Dark wine',
        price: 400,
        color: Colors.black26),
    WineCards(
        image: 'images/wine_7.jpg',
        title: 'Tasty flavor',
        price: 600,
        color: Colors.pinkAccent),
    WineCards(
        image: 'images/wine_6.jpg',
        title: 'Italian Bogle',
        price: 600,
        color: Colors.yellow[800]),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0c42),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {},
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Color(0xff0060e3), offset: Offset(0, 5.0)),
                        ], borderRadius: BorderRadius.circular(5.0)),
                        child: TextField(
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              fillColor: Colors.black26,
                              hintText: 'Search',
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 20),
                              suffixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Hello',
                  style: TextStyle(color: Colors.white54, fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Augustine Victor',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/person_1.jpeg'),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Most Popular',
                  style: TextStyle(color: Colors.white60, fontSize: 25),
                ),
              ),
              Container(
                height: 280,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: wines.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                        wineCards: wines[index],
                                      )));
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      wines[index].color, BlendMode.darken),
                                  fit: BoxFit.cover,
                                  image: AssetImage(wines[index].image))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                wines[index].title,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Text(
                                '\$' + wines[index].price.toString(),
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Category',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child: ListView(
                  padding: EdgeInsets.only(bottom: 50, left: 20),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    buildCategory(
                        image: 'images/wine_5.jpg', text: 'WaterMelon'),
                    buildCategory(
                        image: 'images/wine_5.jpg', text: 'WaterMelon'),
                    buildCategory(
                        image: 'images/wine_5.jpg', text: 'WaterMelon'),
                    buildCategory(
                        image: 'images/wine_5.jpg', text: 'WaterMelon')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory({String text, String image}) {
    return GestureDetector(
      onTap: () {},
      child: AspectRatio(
        aspectRatio: 4 / 5,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 65,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image)),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black),
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class WineCards {
  final int price;
  final String title;
  final String image;
  final Color color;
  WineCards({this.image, this.price, this.title, this.color});
}
