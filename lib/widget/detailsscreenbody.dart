import 'package:electonic_app/widget/productimage.dart';
import 'package:flutter/material.dart';
import '../const.dart';
import 'Productcolor.dart';
import '../models/products.dart';

class detailsbodyscreen extends StatelessWidget {
  detailsbodyscreen({super.key, required this.product});

  @override
  final Product product;
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImg(
                  size: size,
                  image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 5,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Productclo(
                      ischecked: true,
                      color: kTextLightColor,
                    ),
                    Productclo(
                      ischecked: false,
                      color: Colors.red,
                    ),
                    Productclo(
                      ischecked: false,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 29),
                child: Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 17, right: 29),
                child: Text(
                  'السعر:${product.price}',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w300,
                      color: kSecondaryColor),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Text(
            product.description,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ],
    );
  }
}
