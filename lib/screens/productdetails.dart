import 'package:electonic_app/const.dart';
import 'package:electonic_app/widget/detailsscreenbody.dart';
import 'package:flutter/material.dart';

import '../models/products.dart';

class productdetails extends StatelessWidget {
  productdetails({super.key, required this.product});

  @override
  final Product product;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: detailsScreenAppBar(context),
      body: detailsbodyscreen(
        product: product,
      ),
    );
  }

  AppBar detailsScreenAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyText2,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
        color: Theme.of(context).primaryColor,
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
