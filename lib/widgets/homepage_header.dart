import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/image_util.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/icon_widget.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/pill_widget.dart';

class HomepageHeader implements SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  HomepageHeader({required this.minExtent, required this.maxExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          if (shrinkOffset < 100)
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      color: AppColors.greyBg,
                      padding:
                          EdgeInsets.symmetric(horizontal: context.width(.06)),
                      height: context.height(.42),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: context.height(.17)),
                          Text(
                            "#FASHION DAY",
                            style: TextStyle(
                                fontSize: context.width(.035),
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: context.height(.005)),
                          Text(
                            "80% OFF",
                            style: TextStyle(
                                fontSize: context.width(.075),
                                fontWeight: FontWeight.w800),
                          ),
                          SizedBox(height: context.height(.0075)),
                          Text(
                            "Discover fashion that\nsuits to your style",
                            style: TextStyle(fontSize: context.width(.035)),
                          ),
                          SizedBox(height: context.height(.023)),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                padding: EdgeInsets.symmetric(
                                    vertical: context.height(.015),
                                    horizontal: context.width(.04)),
                                backgroundColor: AppColors.dark),
                            child: Text(
                              "Check this out",
                              style: TextStyle(fontSize: context.width(.035)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        right: context.width(.05),
                        bottom: context.height(.22),
                        child: const ScrollPillWidget()),
                    Positioned(
                      right: -context.width(.2),
                      bottom: -context.height(.19),
                      child: Image.asset(
                        ImageUtil.homeShirt,
                        height: context.height(.4),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: context.height(.025),
                ),
                if (shrinkOffset < 10)
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: context.width(.06)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            "Category",
                            "Flight",
                            "Bill",
                            "Data plan",
                            "Top up"
                          ]
                              .map((e) => Column(
                                    children: [
                                      Container(
                                        padding:
                                            EdgeInsets.all(context.width(.025)),
                                        decoration: BoxDecoration(
                                            color: AppColors.greyLight,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: IconWidget(
                                            name:
                                                "assets/icons/${e.toLowerCase().replaceFirst(" ", "_")}.png"),
                                      ),
                                      SizedBox(
                                        height: context.height(.01),
                                      ),
                                      Text(
                                        e,
                                        style: TextStyle(
                                            fontSize: context.width(.036),
                                            color: AppColors.grey),
                                      )
                                    ],
                                  ))
                              .toList(),
                        ),
                      ),
                      SizedBox(
                        height: context.height(.03),
                      ),
                      const ScrollPillWidget()
                    ],
                  ),
              ],
            ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width(.06)),
            child: Column(
              children: [
                SizedBox(height: context.height(.08)),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: context.height(.015)),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 0),
                              child: IconWidget(
                                name: ImageUtil.search,
                                color: AppColors.grey,
                              ),
                            ),
                            hintText: " Search..",
                            hintStyle: TextStyle(
                                color: AppColors.grey,
                                fontSize: context.width(.043)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: AppColors.grey),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: AppColors.grey),
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(width: context.width(.07)),
                    const IconWidget(name: ImageUtil.purse),
                    SizedBox(width: context.width(.07)),
                    const IconWidget(name: ImageUtil.message),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration =>
      null;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;
}
