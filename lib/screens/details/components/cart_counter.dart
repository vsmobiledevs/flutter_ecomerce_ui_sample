import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';


class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int number_of_items = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
            icon: Icons.remove,
            onpress: () {

              setState(() {
                if(number_of_items >1){
                  number_of_items--;
                }
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            number_of_items.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            onpress: () {
              setState(() {
                number_of_items++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton(
      {required IconData icon, required Function onpress}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        onPressed: () {
          onpress();
        },
        child: Icon(icon),
      ),
    );
  }
}
