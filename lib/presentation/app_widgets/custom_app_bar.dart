import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/drawables.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.backIconVisible = true});

  final title;
  final backIconVisible;


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: backIconVisible == true ? const EdgeInsets.only(right: 32.0) : const EdgeInsets.only(right: 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(backIconVisible == true)
              Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                backOutline,
                width: 40,
                height: 40,
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
