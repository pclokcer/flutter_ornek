import 'package:flutter/material.dart';
import 'package:prof/constant.dart';
import 'package:prof/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text('sdgsdfhhdh',
                            style: TextStyle(color: Colors.white)),
                      ),
                      Text(
                        "product.title",
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Row(children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(text: 'Erdem'),
                            TextSpan(
                                text: 'Büşra',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold))
                          ]),
                        ),
                        SizedBox(width: kDefaultPadding),
                        Expanded(
                            child: Image.network(products[0].image,
                                fit: BoxFit.fill))
                      ])
                    ]),
              )
            ],
          ),
        )
      ],
    ));
  }
}