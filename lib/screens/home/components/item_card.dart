import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';
import 'package:flutter_fireabsecrud/models/product_model.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        press();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              //For demo we used fixed height and width
              // width: 160,
              // height: 180,
              decoration: BoxDecoration(
                  color: product.color, borderRadius: BorderRadius.circular(20)),
              child: Hero(
                tag: "${product.id}",
                  child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
