import 'package:flutter/material.dart';
import 'package:flutter_folio/core_packages.dart';

class ContextMenuIcon extends StatelessWidget {
  final AppIcons icon;
  final Color? color;

  const ContextMenuIcon({super.key, required this.icon, this.color});
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return AppIcon(icon, size: 14, color: color ?? theme.greyStrong);
  }
}

class ContextMenuIconHovered extends StatelessWidget {
  const ContextMenuIconHovered({super.key, required this.icon});
  final AppIcons icon;
  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return ContextMenuIcon(icon: icon, color: theme.surface1);
  }
}

class ContextDivider extends StatelessWidget {
  const ContextDivider({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Divider(color: theme.greyWeak, height: .5),
    );
  }
}
