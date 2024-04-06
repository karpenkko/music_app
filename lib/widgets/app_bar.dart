import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const MyAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        title,
        // style: TextStyle(
        //   color: Theme.of(context).colorScheme.secondary,
        // ),
      ),
      centerTitle: true,
      // iconTheme: IconThemeData(
      //   color: Theme.of(context).colorScheme.secondary,
      // ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}