import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';
import 'package:flutter_fireabsecrud/models/product_model.dart';
import 'package:flutter_fireabsecrud/screens/details/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key,required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PreferredSizeWidget buildAppBar() {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg',color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: Colors.white,
              )),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      );
    }



    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(),
      body: Body(product: product,),
    );
  }
}
