import 'package:flutter/material.dart';
import '../resources/app_colors.dart';
import '../resources/size_config.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    Key? key,
    required this.onTap,
    this.height = 60,
    required this.text,
    this.padding,
    this.disabled = false,
    this.isLoading = false
  }) : super(key: key);
  final VoidCallback onTap;
  final double height;
  final Widget text;
  final EdgeInsets? padding;
  final bool disabled;
  final bool isLoading;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
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
        child: ElevatedButton(
          onPressed: () {
            if (!widget.disabled) {
              widget.onTap();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: widget.disabled
                ? AppColors.disabledColor
                : AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            // padding: (width <= 550)
            //     ? const EdgeInsets.symmetric(horizontal: 130, vertical: 20)
            //     : EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 25),
            textStyle: Theme.of(context).textTheme.bodyMedium,
          ),
          child: widget.isLoading ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              widget.text,
              const SizedBox(width: 10,),
              const CircularProgressIndicator(color: Colors.white,)
            ],
          ) : widget.text,
        ),
      );
  }
}
