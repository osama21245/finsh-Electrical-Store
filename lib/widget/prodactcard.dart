import 'package:flutter/material.dart';

class prodactcard extends StatelessWidget {
  prodactcard(
      {Key? key,
      required this.productimage,
      required this.producttitle,
      required this.productprice,
      required this.productsubtitle,
      required this.press})
      : super(key: key);
  String producttitle;
  String productimage;
  int productprice;
  String productsubtitle;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 190,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          InkWell(
            onTap: press,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 25,
                        offset: Offset(0, 15),
                        color: Colors.black12)
                  ]),
              height: 166,
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 160,
                width: 200,
                child: Image.asset(
                  productimage,
                  fit: BoxFit.cover,
                ),
              )),
          Positioned(
              right: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        producttitle,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        productsubtitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Theme.of(context).secondaryHeaderColor),
                        child: Text('السعر:/${productprice}'),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
