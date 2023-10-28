import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const Toolbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4,
      shadowColor: Theme.of(context).shadowColor,
      title: Text(title)
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
