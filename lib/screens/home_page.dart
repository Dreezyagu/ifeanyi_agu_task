import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/screens/product_details.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/homepage_header.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/product_card.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/product_header.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            floating: true,
            pinned: true,
            delegate: HomepageHeader(
                minExtent: context.height(.16), maxExtent: context.height(.57)),
          ),
          SliverPersistentHeader(
              floating: true,
              pinned: true,
              delegate: ProductHeader(
                  minExtent: context.height(.08),
                  maxExtent: context.height(.08))),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: context.width(.06)),
            sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: context.height(.3),
                    mainAxisSpacing: context.width(.04),
                    crossAxisSpacing: context.width(.04)),
                itemCount: 20,
                itemBuilder: (
                  context,
                  index,
                ) {
                  final double randomRating =
                      Random().nextDouble() * (5.0 - 4.5) + 4.5;
                  final int randomSales = Random().nextInt(5000 - 3000) + 3000;
                  final int randomPrice = Random().nextInt(50 - 10) + 10;

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProductDetails(),
                          ));
                    },
                    child: ProductCard(
                        randomRating: randomRating,
                        randomSales: randomSales,
                        index: index,
                        randomPrice: randomPrice),
                  );
                }),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => setState(() {
          currentIndex = value;
        }),
        items: ["Home", "Voucher", "Wallet", "Settings"]
            .map((e) => BottomNavigationBarItem(
                label: e,
                icon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Image.asset(
                    "assets/icons/${e.toLowerCase()}.png",
                    width: context.width(.07),
                  ),
                )))
            .toList(),
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(fontSize: context.width(.034)),
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: context.width(.038)),
        unselectedItemColor: AppColors.textGrey,
      ),
    );
  }
}
