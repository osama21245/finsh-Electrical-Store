import 'package:electonic_app/screens/productdetails.dart';
import 'package:electonic_app/widget/prodactcard.dart';
import 'package:flutter/material.dart';
import '../models/products.dart';

class Programbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Expanded(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            ListView.builder(
              itemBuilder: ((context, index) => prodactcard(
                    productprice: products[index].price,
                    producttitle: products[index].title,
                    productimage: products[index].image,
                    productsubtitle: products[index].subTitle,
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => productdetails(
                                    product: products[index],
                                  )));
                    },
                  )),
              itemCount: products.length,
            )
          ],
        ))
      ],
    ));
  }
}
