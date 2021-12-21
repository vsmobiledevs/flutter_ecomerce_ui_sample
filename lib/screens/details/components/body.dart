import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';
import 'package:flutter_fireabsecrud/models/product_model.dart';
import 'package:flutter_fireabsecrud/screens/details/components/cart_counter.dart';
import 'package:flutter_fireabsecrud/screens/details/components/color_and_size.dart';
import 'package:flutter_fireabsecrud/screens/details/components/description.dart';
import 'package:flutter_fireabsecrud/screens/details/components/product_title_with_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'add_to_cart.dart';
import 'counter_with_fav_btn.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  //  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      const CounterWithFavBtn(),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
