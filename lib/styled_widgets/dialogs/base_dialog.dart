import 'package:flutter/material.dart';
import 'package:flutter_folio/core_packages.dart';

class BaseStyledDialog extends StatelessWidget {
  final Color? bgColor;
  final EdgeInsets? padding;
  final Widget child;

  const BaseStyledDialog({super.key, required this.child, this.bgColor, this.padding});
  @override
  Widget build(BuildContext context) {
    var theme = context.watch<AppTheme>();
    return Dialog(
      backgroundColor: bgColor ?? theme.bg1,
      elevation: 0,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 280),
        child: Padding(
          padding: padding ?? EdgeInsets.symmetric(vertical: Insets.lg),
          child: IntrinsicWidth(child: child),
        ),
      ),
    );
  }
}
