import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';

class ProductHeader extends SliverPersistentHeaderDelegate {
  @override
  final double minExtent;
  @override
  final double maxExtent;

  ProductHeader({required this.minExtent, required this.maxExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: context.width(.06)),
      child: Column(
        children: [
          SizedBox(height: context.height(.03)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Sale Product",
                style: TextStyle(
                    fontSize: context.width(.05),
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
        ],
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
