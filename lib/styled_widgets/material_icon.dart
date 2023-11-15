import 'package:flutter/material.dart';
import 'package:flutter_folio/core_packages.dart';

class MaterialIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Color? color;

  const MaterialIcon(this.icon, {super.key, this.size = 20, this.color});
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Icon(icon, size: size, color: color ?? theme.greyStrong);
  }
}
