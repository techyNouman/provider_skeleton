import 'package:flutter/material.dart';
import '../resources/app_colors.dart';
import '../resources/size_config.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.controller,
    this.height = 60,
    required this.text,
    this.disabled = false,
  }) : super(key: key);
  final double height;
  final String text;
  final bool disabled;
  final TextEditingController controller ;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;
    return
      SizedBox(
        width: double.infinity,
        height: widget.height,
        child: TextFormField(
          style: Theme.of(context).textTheme.labelLarge,
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(18),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.veryLightGrey,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.primaryColor,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            hintText: widget.text,
            floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: widget.text
          ),
        ),
      );
  }
}
