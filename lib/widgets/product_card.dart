import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/image_util.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.randomRating,
    required this.randomSales,
    required this.randomPrice,
    required this.index,
  });

  final double randomRating;
  final int randomSales;
  final int randomPrice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: context.height(.13),
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffEEEEEF)),
              child: Image.asset(
                "assets/images/shirt${(index % 5) == 0 ? 5 : index % 5}.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                right: context.width(.015),
                top: context.width(.02),
                child: Image.asset(
                  ImageUtil.heart,
                  height: context.width(.05),
                ))
          ],
        ),
        SizedBox(height: context.height(.01)),
        Text(
          "Shirt",
          style:
              TextStyle(fontSize: context.width(.038), color: AppColors.grey),
        ),
        SizedBox(height: context.height(.0075)),
        Text(
          "Essentials Men's Long-Sleeve Crewneck T-Shirt",
          style: TextStyle(
              fontSize: context.width(.038), fontWeight: FontWeight.w600),
        ),
        SizedBox(height: context.height(.02)),
        Row(
          children: [
            Image.asset(
              ImageUtil.star,
              color: AppColors.starRatingColor,
              width: context.width(.03),
            ),
            Text(
              "   ${randomRating.toStringAsFixed(1)} | $randomSales",
              style: TextStyle(
                  fontSize: context.width(.035), color: AppColors.textGrey),
            ),
            const Spacer(),
            Text(
              "\$$randomPrice.00",
              style: TextStyle(
                  fontSize: context.width(.055),
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600),
            ),
          ],
        )
      ],
    );
  }
}
