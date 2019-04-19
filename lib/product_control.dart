import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Eater');
              });
            },
            child: Text('Add product'),
          ),
  }
}