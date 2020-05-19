import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'Widgets/category.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notifications),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(Icons.shopping_cart)),
          ],
        ),
        drawer: Drawer(),
        body: ListView(
          children: <Widget>[
            CarouselSlider(
              height: MediaQuery.of(context).size.height * 1 / 3,
              items: [
//! this carousel will slide any widget contained

                // Container(child: Text('data'),),
                Image.asset('assets/nike/n1.png'),
                Image.asset('assets/boots/b4.png'),
                Image.asset('assets/nike/n3.png'),
                Image.asset('assets/nike/n4.png'),
              ],
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            Divider(),
            Text(
              'Menu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
              child: GridView.count(
                //crossAxisSpacing: 5,
                //mainAxisSpacing: 5,
                childAspectRatio: 2.5 / 3,
                // scrollDirection: Axis.horizontal,
                crossAxisCount: 4,
                physics: ScrollPhysics(), // to disable GridView's scrolling
                shrinkWrap: true,
                children: <Widget>[
                  HomePageCategory(
                      categoryImageName: 'shoe',
                      categoryName: 'Shoes',
                      navigatorName: '/shoes'),
                  HomePageCategory(
                    categoryImageName: 'clothes',
                    categoryName: 'Apparel',
                    navigatorName: '/apparel',
                  ),
                  HomePageCategory(
                    categoryImageName: 'watch',
                    categoryName: 'Watch',
                    navigatorName: '/watches',
                  ),
                  HomePageCategory(
                    categoryImageName: 'accessory',
                    categoryName: 'Accessory',
                    navigatorName: '/shoes',
                  ),
                  HomePageCategory(
                      categoryImageName: 'belt',
                      categoryName: 'Belts',
                      navigatorName: '/shoes'),
                  HomePageCategory(
                    categoryImageName: 'electronics',
                    categoryName: 'Electronics',
                    navigatorName: '/apparel',
                  ),
                  HomePageCategory(
                    categoryImageName: 'furnitured',
                    categoryName: 'Furniture',
                    navigatorName: '/watches',
                  ),
                  HomePageCategory(
                    categoryImageName: 'dumbbell',
                    categoryName: 'Sports',
                    navigatorName: '/shoes',
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'On Promotion',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // shoeProductCard(
                  //     'assets/vans/v1.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v3.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v2.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v6.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v5.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v4.png', '10% off', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v1.png', '10% off', 'Vans Air', 20000),
                ],
              ),
            ),
            // Placeholder(
            //   color: Colors.purple,
            //   fallbackHeight: 200,
            // ),
            Divider(),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Classics',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 1 / 3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  // shoeProductCard(
                  //     'assets/vans/v2.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/nike/n1.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v3.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/nike/n3.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/nike/n2.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v4.png', '', 'Vans Air', 20000),
                  // shoeProductCard(
                  //     'assets/vans/v1.png', '', 'Vans Air', 20000),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
