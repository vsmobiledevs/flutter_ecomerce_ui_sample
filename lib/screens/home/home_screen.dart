import 'package:flutter/material.dart';
import 'package:flutter_fireabsecrud/constants.dart';
import 'package:flutter_fireabsecrud/screens/home/components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget buildAppBar() {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg'),
          onPressed: () {},
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: kTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/cart.svg',
                color: kTextColor,
              )),
          const SizedBox(width: kDefaultPadding / 2)
        ],
      );
    }

    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );

  }
}
