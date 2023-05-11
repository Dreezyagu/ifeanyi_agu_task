import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/colors.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';
import 'package:ifeanyi_agu_moniepoint_task/widgets/pill_widget.dart';

class TextRow extends StatelessWidget {
  final String title;
  final String value;

  const TextRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height(.01)),
      child: Row(
        children: [
          Text(
            "$title:",
            style: TextStyle(
                color: AppColors.textGrey,
                fontWeight: FontWeight.w500,
                fontSize: context.width(.037)),
          ),
          Text(
            "   $value",
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: context.width(.04)),
          )
        ],
      ),
    );
  }
}

class DescriptionTexts extends StatelessWidget {
  final String text;

  const DescriptionTexts({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.height(.005)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: context.width(.03)),
          const BulletWidget(),
          SizedBox(width: context.width(.03)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                  color: AppColors.textGrey,
                  fontWeight: FontWeight.w500,
                  fontSize: context.width(.038)),
            ),
          ),
        ],
      ),
    );
  }
}
