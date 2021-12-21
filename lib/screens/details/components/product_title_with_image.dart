import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';
import 'package:flutter_fireabsecrud/models/product_model.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Aristocrotic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Platform.isAndroid ? 0 : kDefaultPadding,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                    const TextSpan(text: 'Price\n'),
                    TextSpan(
                        text: "\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ])),
              const SizedBox(
                width: kDefaultPadding,
              ),
              Expanded(child: Hero(
                tag: "${product.id}",
                  child: Image.asset(product.image,fit: BoxFit.fill,)))
            ],
          ),
        ],
      ),
    );
  }
}
