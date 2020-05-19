import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  static const routeName = '/cart';
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cart'),
        centerTitle: true,
      ),
      body: Card(
          child: Column(
        children: <Widget>[
          ListTile(
              title: Text('Nike Air 209'),
              trailing: IconButton(icon: Icon(Icons.delete), onPressed: () {})),
          Divider(
            height: 0.1,
          ),
          Row(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: Image.asset('assets/nike/n1.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Text('Price'),
                        Text('K 12000'),
                      ],
                    ),
                  ),
                  Expanded(
                                      child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                   
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('Quantity'),
                          Row(
                            children: <Widget>[
                              Text('K 12000'),
                              Text('K 12000'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Total price'),
                        Text('K 12000'),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      )),
    );
  }
}
