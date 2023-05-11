import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/image_util.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/icon_widget.dart';

class BottomFixedWidget extends StatelessWidget {
  const BottomFixedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
          vertical: context.height(.04), horizontal: context.width(.06)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                        fontSize: context.width(.04),
                        color: AppColors.textGrey),
                  ),
                  SizedBox(
                    height: context.height(.01),
                  ),
                  Text(
                    "\$18.00",
                    style: TextStyle(
                        fontSize: context.width(.07),
                        color: const Color(0xff2A977D),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    height: context.height(.07),
                    width: context.width(.2),
                    decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const IconWidget(
                          name: ImageUtil.purse,
                          color: Colors.white,
                        ),
                        Text(
                          "1",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: context.width(.05)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: context.height(.07),
                    width: context.width(.3),
                    decoration: const BoxDecoration(
                        color: AppColors.dark,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: context.width(.05)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
