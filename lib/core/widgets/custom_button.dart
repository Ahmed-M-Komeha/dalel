import 'package:dalel_app/core/utils/app_colors.dart';
import 'package:dalel_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color, this.txtcolor,
  });
  final String text;
  final Color? color;
  final Color? txtcolor;


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      height: 56,
      color: color ?? AppColors.primaryColor,
      onPressed: () {},
      child: Text(
        text,
        style: CustomTextStyles.poppins500style18.copyWith(color:txtcolor?? Colors.white),
      ),
    );
  }
}
