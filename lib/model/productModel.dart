import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop/Widgets/splash.dart';

class ProductModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final String contactPhone;

  ProductModel({
    @required this.id,
    @required this.contactPhone,
    @required this.description,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
  });
}

class ShoeProductItem extends StatelessWidget {
  final String id;
  final String title;
  final double price;
  final String imageUrl;
  final String description;
  final String contactPhone;

  ShoeProductItem({
    this.id,
    this.imageUrl,
    this.price,
    this.title,
    this.contactPhone,
    this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        color: Color(0xffF5F5F5),
        //margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Text(status,
            //     style: TextStyle(
            //         backgroundColor: Colors.red,
            //         color: Colors.white,
            //         fontSize: 16,
            //         fontWeight: FontWeight.w700)),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShoeProductDetail(
                            detailTitle: title,
                            detailDescription: description,
                            detailPrice: price,
                            detailId: id,
                            detailImageUrl: imageUrl,
                            detailContactPhone: contactPhone,
                          )));
                },
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title),
                  Text('K $price'),
                ],
              ),
            ),
            Splash(
              onTap: () {},
              child: Container(
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
                      Colors.red[200],
                      Colors.red[300],
                      Colors.red[400],
                      Colors.red[500],
                    ],
                    stops: [0.1, 0.3, 0.8, 1],
                  ),

                  shape: BoxShape.circle,

                  color: Colors.red,

                  //borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.all(10),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoeProductDetail extends StatelessWidget {
  final String detailId;
  final String detailTitle;
  final String detailDescription;
  final double detailPrice;
  final String detailImageUrl;
  final String detailContactPhone;
  final String detailFood;

  ShoeProductDetail(
      {this.detailId,
      this.detailContactPhone,
      this.detailDescription,
      this.detailTitle,
      this.detailImageUrl,
      this.detailPrice,
      this.detailFood});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(detailTitle),
      ),
      //  body:  Text(description) ,
      body: Column(
        children: <Widget>[
          Text(detailTitle),
          Text('$detailPrice'),
          Text(detailId),
          Image.asset(detailImageUrl),

          Text(detailContactPhone),
          Text(detailDescription)
          // Text(description)
          //   Text(description, softWrap: true,),
          //Text(description),
        ],
      ),
    );
  }
}

final List<ProductModel> nikeShoeProduct = [
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Aire',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n1.png',
      id: 'p1'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n2.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n3.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n4.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n1.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n2.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n3.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/nike/n4.png',
      id: 'p2'),
];

final List<ProductModel> vansShoeProduct = [
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Aire',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v1.png',
      id: 'p1'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v2.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v3.png',
      id: 'p3'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v4.png',
      id: 'p4'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v5.png',
      id: 'p5'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v6.png',
      id: 'p6'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v7.png',
      id: 'p7'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/vans/v8.png',
      id: 'p8'),
];

final List<ProductModel> suitsProduct = [
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Aire',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s9.jpg',
      id: 'p1'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s2.jpg',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s3.jpg',
      id: 'p3'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s4.jpg',
      id: 'p4'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s5.jpg',
      id: 'p5'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s6.jpg',
      id: 'p6'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s7.jpg',
      id: 'p7'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/suits/s8.jpg',
      id: 'p8'),
];

final List<ProductModel> watchesProduct = [
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Aire',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w1.png',
      id: 'p1'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w2.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w3.png',
      id: 'p3'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w4.png',
      id: 'p4'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w5.png',
      id: 'p5'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/watches/w6.png',
      id: 'p6'),
];

final List<ProductModel> bootsProduct = [
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Aire',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b1.png',
      id: 'p1'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b2.png',
      id: 'p2'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b3.png',
      id: 'p3'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b4.png',
      id: 'p4'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b5.png',
      id: 'p5'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b6.png',
      id: 'p6'),
  ProductModel(
      contactPhone: '+265884114041',
      title: 'Nike Air',
      description: 'A red shoe is best than everything',
      price: 35000.00,
      imageUrl: 'assets/boots/b7.png',
      id: 'p7'),
];
