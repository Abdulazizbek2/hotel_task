import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_task/src/presentation/util/styles/style.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent(
      {super.key, required this.title, this.automaticallyImplyLeading = true});
  final String? title;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Style.white,
      surfaceTintColor: Style.white,
      title: Text(
        title ?? "",
        style: Style.medium16(
          color: Style.black,
          size: 18.sp,
        ),
      ),
      automaticallyImplyLeading: automaticallyImplyLeading,
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
