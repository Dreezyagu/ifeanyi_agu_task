import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/image_util.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/bottom_fixed_widget.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/icon_widget.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/pill_widget.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/product_card.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/text_row.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFCFCFD),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.dark,
            )),
        actions: [
          const IconWidget(name: ImageUtil.heartFill),
          SizedBox(width: context.width(.07)),
          const IconWidget(name: ImageUtil.share),
          SizedBox(width: context.width(.07)),
          const IconWidget(name: ImageUtil.purse),
          SizedBox(width: context.width(.07)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: context.width(.06), vertical: context.height(.02)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: context.height(.35),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xffEEEEEF),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/images/shirt1.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: context.height(.03)),
              Text(
                "Essentials Men's Long-Sleeve Crewneck T-Shirt",
                style: TextStyle(
                    fontSize: context.width(.055), fontWeight: FontWeight.w700),
              ),
              SizedBox(height: context.height(.03)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageUtil.star,
                    color: AppColors.starRatingColor,
                    width: context.width(.05),
                  ),
                  Text(
                    "4.9 Ratings",
                    style: TextStyle(
                        fontSize: context.width(.04),
                        color: AppColors.textGrey),
                  ),
                  const BulletWidget(),
                  Text(
                    "2.3k+ Reviews",
                    style: TextStyle(
                        fontSize: context.width(.04),
                        color: AppColors.textGrey),
                  ),
                  const BulletWidget(),
                  Text(
                    "2.9k+ Sold",
                    style: TextStyle(
                        fontSize: context.width(.04),
                        color: AppColors.textGrey),
                  ),
                ],
              ),
              SizedBox(height: context.height(.03)),
              TabBar(
                controller: _controller,
                tabs: const [
                  Tab(
                    text: "About Item",
                  ),
                  Tab(
                    text: "Reviews",
                  )
                ],
                indicatorColor: AppColors.primary,
                labelStyle: TextStyle(
                    color: AppColors.primary,
                    fontFamily: "Ysabeau",
                    fontWeight: FontWeight.w700,
                    fontSize: context.width(.05)),
                unselectedLabelStyle: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Ysabeau",
                    fontSize: context.width(.05)),
                labelColor: AppColors.primary,
                unselectedLabelColor: AppColors.textGrey,
              ),
              SizedBox(height: context.height(.02)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextRow(
                        title: "Brand",
                        value: "ChAmkpR",
                      ),
                      TextRow(
                        title: "Category",
                        value: "Casual Shirt",
                      ),
                      TextRow(
                        title: "Condition",
                        value: "New",
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      TextRow(
                        title: "Color",
                        value: "Aprikot",
                      ),
                      TextRow(
                        title: "Material",
                        value: "Polyester",
                      ),
                      TextRow(
                        title: "Heavy",
                        value: "200 g",
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: context.height(.07),
                child: const Divider(
                  color: AppColors.textGrey,
                ),
              ),
              Text(
                "Description: ",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: context.width(.055)),
              ),
              SizedBox(height: context.height(.01)),
              const DescriptionTexts(
                text:
                    "Long-sleeve dress shirt in classicfit featuring button-down collar",
              ),
              const DescriptionTexts(text: "Patch Pocket on Left Chest"),
              const DescriptionTexts(text: "Durable Combination Cotton Fabric"),
              const DescriptionTexts(
                  text: "Comfortable and quality dress shirt"),
              const DescriptionTexts(
                  text: "Go to Classic button down shirt for all occasions"),
              SizedBox(height: context.height(.03)),
              Text(
                "Chat us if there is anything you want to ask about the product.",
                style: TextStyle(
                    color: AppColors.textGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: context.width(.04)),
              ),
              SizedBox(
                height: context.height(.07),
                child: const Divider(
                  color: AppColors.textGrey,
                ),
              ),
              Text(
                "Shipping Information: ",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: context.width(.055)),
              ),
              SizedBox(height: context.height(.01)),
              const TextRow(
                  title: "Delivery", value: "Shipping from Jakarta, Indonesia"),
              const TextRow(
                  title: "Shipping", value: "FREE International Shipping"),
              const TextRow(
                  title: "Arrival",
                  value: "Estimated arrival on 25 -27 Oct 2022"),
              SizedBox(
                height: context.height(.07),
                child: const Divider(
                  color: AppColors.textGrey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendation",
                    style: TextStyle(
                        fontSize: context.width(.055),
                        color: AppColors.dark,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontSize: context.width(.04),
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: context.height(.015)),
              GridView.builder(
                itemCount: 20,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: context.height(.3),
                    mainAxisSpacing: context.width(.04),
                    crossAxisSpacing: context.width(.04)),
                itemBuilder: (context, index) {
                  final double randomRating =
                      Random().nextDouble() * (5.0 - 4.5) + 4.5;
                  final int randomSales = Random().nextInt(5000 - 3000) + 3000;
                  final int randomPrice = Random().nextInt(50 - 10) + 10;
                  return ProductCard(
                      randomRating: randomRating,
                      randomSales: randomSales,
                      randomPrice: randomPrice,
                      index: index);
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomFixedWidget(),
    );
  }
}
