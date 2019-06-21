import 'dart:async';

import 'package:flutter/material.dart';
import '../widgets/products/price_tag.dart';
import '../widgets/ui_elements/title_default.dart';

class ProductPage extends StatelessWidget {
  final Map<String, dynamic> _product;
  final String imageUrl;

  ProductPage(this._product, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('Back button pressed');
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(_product['title']),
          ),
          body: Column(
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TitleDefault(_product['title'],),
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(5)),
                          child: PriceTag(_product['priceValue'].toString()),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text('Описание: ${_product['description']}'),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
