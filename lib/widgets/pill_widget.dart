import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';

class PillWidget extends StatelessWidget {
  final int? position;

  const PillWidget({super.key, this.position});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: context.width(.0025)),
      height: context.height(.005),
      width: position == 0 ? context.width(.03) : context.width(.015),
      decoration: BoxDecoration(
        color: position == 0 ? AppColors.dark : const Color(0xffC2C7C4),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

class ScrollPillWidget extends StatelessWidget {
  const ScrollPillWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        PillWidget(
          position: 0,
        ),
        PillWidget(),
        PillWidget()
      ],
    );
  }
}

class BulletWidget extends StatelessWidget {
  const BulletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.width(.01),
      width: context.width(.01),
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: Color(0xff868992)),
    );
  }
}
