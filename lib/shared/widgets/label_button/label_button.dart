import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;
  const LabelButton(
      {Key? key, required this.label, required this.onPressed, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: style ?? TextStyles.buttonHeading,
        ),
      ),
    );
  }
}
