import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shop/model/productModel.dart';

class Apparel extends StatefulWidget {
  static const routeName = '/apparel';
  @override
  _ApparelState createState() => _ApparelState();
}

enum Page {
  suits,
  nike,
  adidas,
  vans,
}
Page selectedPage = Page.suits;
enum Gender { male, female }
Gender selectedGender = Gender.male;

class _ApparelState extends State<Apparel> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: <Widget>[
            _genderSelected(),
            Positioned(
              right: 0,
              bottom: 20,
              child: Column(
                //mainAxisSize: MainAxisSize.min,

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        //! CONRI==TINU
                        setState(() => selectedGender = Gender.male);
                      },
                      child: selectedGender == Gender.male
                          ?
                          //! use MATERIAL_BUTTON HERE
                          Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[600],
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                ],

                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.purple[200],
                                    Colors.purple[300],
                                    Colors.purple[400],
                                    Colors.purple[500],
                                  ],
                                  stops: [0.1, 0.3, 0.8, 1],
                                ),

                                shape: BoxShape.circle,

                                color: Colors.red,

                                //borderRadius: BorderRadius.circular(10.0),
                              ),
                              //  heroTag: null,
                              child: FaIcon(
                                FontAwesomeIcons.male,
                                color: Colors.white,
                                // size: 50,
                              ),

                              // color: Color(0xffF5F5F5),
                            )
                          : Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[600],
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                ],

                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.purple[200],
                                    Colors.purple[300],
                                    Colors.purple[400],
                                    Colors.purple[500],
                                  ],
                                  stops: [0.1, 0.3, 0.8, 1],
                                ),

                                shape: BoxShape.circle,

                                color: Colors.red,

                                //borderRadius: BorderRadius.circular(10.0),
                              ),
                              //  heroTag: null,
                              child: FaIcon(
                                FontAwesomeIcons.male,
                                color: Colors.white,
                                // size: 50,
                              ),

                              // color: Color(0xffF5F5F5),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        //! CONRI==TINU
                        setState(() => selectedGender = Gender.female);
                      },
                      child: selectedGender == Gender.female
                          ? Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[600],
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                ],

                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.purple[200],
                                    Colors.purple[300],
                                    Colors.purple[400],
                                    Colors.purple[500],
                                  ],
                                  stops: [0.1, 0.3, 0.8, 1],
                                ),

                                shape: BoxShape.circle,

                                color: Colors.red,

                                //borderRadius: BorderRadius.circular(10.0),
                              ),
                              //  heroTag: null,
                              child: FaIcon(
                                FontAwesomeIcons.female,
                                color: Colors.white,
                                // size: 50,
                              ),

                              // color: Color(0xffF5F5F5),
                            )
                          : Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[600],
                                      offset: Offset(4.0, 4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                  BoxShadow(
                                      color: Colors.white,
                                      offset: Offset(-4.0, -4.0),
                                      blurRadius: 15.0,
                                      spreadRadius: 1.0),
                                ],

                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.purple[200],
                                    Colors.purple[300],
                                    Colors.purple[400],
                                    Colors.purple[500],
                                  ],
                                  stops: [0.1, 0.3, 0.8, 1],
                                ),

                                shape: BoxShape.circle,

                                color: Colors.red,

                                //borderRadius: BorderRadius.circular(10.0),
                              ),
                              //  heroTag: null,
                              child: FaIcon(
                                FontAwesomeIcons.female,
                                color: Colors.white,
                                // size: 50,
                              ),

                              // color: Color(0xffF5F5F5),
                            ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _genderSelected() {
  switch (selectedGender) {
    case Gender.female:
      return Female();
      break;
    case Gender.male:
      return Male();
      break;
    default:
      return Container();
  }
}

class Male extends StatefulWidget {
  @override
  _MaleState createState() => _MaleState();
}

class _MaleState extends State<Male> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GridView.count(
          //crossAxisSpacing: 5,
          //mainAxisSpacing: 5,
          childAspectRatio: 1 / 0.3,
          // scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          physics: ScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,

          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.suits);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Suits',
                    style: selectedPage == Page.suits
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.nike);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Nike',
                    style: selectedPage == Page.nike
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.adidas);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Adidas',
                    style: selectedPage == Page.adidas
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.vans);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Vans',
                    style: selectedPage == Page.vans
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
        malelistOfShoes(),
      ],
    );
  }
}

Widget malelistOfShoes() {
  switch (selectedPage) {
    case Page.suits:
      return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        itemCount: suitsProduct.length,
        itemBuilder: (context, i) => new ShoeProductItem(
          id: suitsProduct[i].id,
          imageUrl: suitsProduct[i].imageUrl,
          price: suitsProduct[i].price,
          title: suitsProduct[i].title,
          contactPhone: suitsProduct[i].contactPhone,
          description: suitsProduct[i].description,
        ),

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // childAspectRatio: 2.5 / 3,
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
      );
      break;
    case Page.adidas:
      return Container();
      break;
    case Page.vans:
      return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        itemCount: vansShoeProduct.length,
        itemBuilder: (context, i) => new ShoeProductItem(
          id: vansShoeProduct[i].id,
          imageUrl: vansShoeProduct[i].imageUrl,
          price: vansShoeProduct[i].price,
          title: vansShoeProduct[i].title,
          contactPhone: vansShoeProduct[i].contactPhone,
          description: vansShoeProduct[i].description,
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
      );
      break;

    default:
      return Container();
  }
}

class Female extends StatefulWidget {
  @override
  _FemaleState createState() => _FemaleState();
}

class _FemaleState extends State<Female> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GridView.count(
          //crossAxisSpacing: 5,
          //mainAxisSpacing: 5,
          childAspectRatio: 1 / 0.3,
          // scrollDirection: Axis.horizontal,
          crossAxisCount: 4,
          physics: ScrollPhysics(), // to disable GridView's scrolling
          shrinkWrap: true,

          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.suits);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Suits',
                    style: selectedPage == Page.suits
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.nike);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Nike',
                    style: selectedPage == Page.nike
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.adidas);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Adidas',
                    style: selectedPage == Page.adidas
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() => selectedPage = Page.vans);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text('Vans',
                    style: selectedPage == Page.vans
                        ? TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700)
                        : TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
              ),
            ),
          ],
        ),
        femalelistOfShoes(),
      ],
    );
  }
}

Widget femalelistOfShoes() {
  switch (selectedPage) {
    case Page.suits:
      return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        itemCount: nikeShoeProduct.length,
        itemBuilder: (context, i) => new ShoeProductItem(
          id: nikeShoeProduct[i].id,
          imageUrl: nikeShoeProduct[i].imageUrl,
          price: nikeShoeProduct[i].price,
          title: nikeShoeProduct[i].title,
          contactPhone: nikeShoeProduct[i].contactPhone,
          description: nikeShoeProduct[i].description,
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
      );
      break;
    case Page.adidas:
      return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        itemCount: nikeShoeProduct.length,
        itemBuilder: (context, i) => new ShoeProductItem(
          id: nikeShoeProduct[i].id,
          imageUrl: nikeShoeProduct[i].imageUrl,
          price: nikeShoeProduct[i].price,
          title: nikeShoeProduct[i].title,
          contactPhone: nikeShoeProduct[i].contactPhone,
          description: nikeShoeProduct[i].description,
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
      );
      break;
    case Page.vans:
      return GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 2.5 / 3,
        // scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        physics: ScrollPhysics(), // to disable GridView's scrolling
        shrinkWrap: true,
      );
      break;

    default:
      return Container();
  }
}
