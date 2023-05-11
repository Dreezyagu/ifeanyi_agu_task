import 'package:flutter/material.dart';
import 'package:ifeanyi_agu_moniepoint_task/utils/extensions.dart';

class IconWidget extends StatelessWidget {
  final String name;
  final Color? color;

  const IconWidget({super.key, required this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      color: color,
      height: context.width(.055),
      width: context.width(.055),
    );
  }
}
