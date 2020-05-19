import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/material.dart';
import 'package:shop/model/productModel.dart';

class Watches extends StatefulWidget {
  static const routeName = '/watches';
  @override
  _WatchesState createState() => _WatchesState();
}

class _WatchesState extends State<Watches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Image.asset('assets/display.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: AnalogClock(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            // width: 2.0,

                            color: Colors.transparent,
                          ),
                        ),

                        width: 150.0,

                        isLive: true,

                        hourHandColor: Colors.black,

                        minuteHandColor: Colors.black,

                        showSecondHand: true,

                        numberColor: Colors.black87,

                        showNumbers: true,

                        textScaleFactor: 1.4,

                        showTicks: true,

                        tickColor: Colors.purple,

                        // height: MediaQuery.of(context).size.height * 0.35,

                        showDigitalClock: false,

                        showAllNumbers: true,

                        datetime: DateTime.now(),

                        //digitalClockColor: Colors.purple,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              itemCount: watchesProduct.length,
              itemBuilder: (context, i) => new ShoeProductItem(
                id: watchesProduct[i].id,
                imageUrl: watchesProduct[i].imageUrl,
                price: watchesProduct[i].price,
                title: watchesProduct[i].title,
                contactPhone: watchesProduct[i].contactPhone,
                description: watchesProduct[i].description,
              ),

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2.5 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 10,
              // childAspectRatio: 2.5 / 3,
              // scrollDirection: Axis.horizontal,
              // crossAxisCount: 3,
              physics: ScrollPhysics(), // to disable GridView's scrolling
              shrinkWrap: true,
              // children: <Widget>[
              //   shoeGridProductCard('assets/11.jpg', 'NIKE AIR 190', 25000),
              //   shoeGridProductCard('assets/33.jpg', 'NIKE AIR 190', 15000),
              //   shoeGridProductCard('assets/44.jpg', 'NIKE AIR 190', 35000),
              //   shoeGridProductCard('assets/55.jpg', 'NIKE AIR 190', 30000),
              //   shoeGridProductCard('assets/66.jpg', 'NIKE AIR 190', 20000),
              //   shoeGridProductCard('assets/11.jpg', 'NIKE AIR 190', 12000),
              // ],
            ),
          ],
        ));
  }
}
