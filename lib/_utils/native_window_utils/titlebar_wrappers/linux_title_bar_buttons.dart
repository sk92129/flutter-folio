import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import 'linux_title_bar_icons.dart';

class _LinuxWindowButton extends WindowButton {
  _LinuxWindowButton(
      {super.key,
      required WindowButtonColors super.colors,
      required WindowButtonIconBuilder super.iconBuilder,
      required VoidCallback super.onPressed})
      : super(
          builder: _linuxWindowButtonBuilder,
        );
}

class LinuxMinimizeButton extends _LinuxWindowButton {
  LinuxMinimizeButton({super.key, required super.colors, VoidCallback? onPressed})
      : super(
            iconBuilder: (buttonContext) => LinuxMinimizeIcon(color: buttonContext.iconColor),
            onPressed: onPressed ?? () => appWindow.minimize());
}

class LinuxMaximizeButton extends _LinuxWindowButton {
  LinuxMaximizeButton({super.key, required super.colors, VoidCallback? onPressed})
      : super(
            iconBuilder: (buttonContext) => LinuxMaximizeIcon(color: buttonContext.iconColor),
            onPressed: onPressed ?? () => appWindow.maximizeOrRestore());
}

class LinuxUnmaximizeButton extends _LinuxWindowButton {
  LinuxUnmaximizeButton({super.key, required super.colors, VoidCallback? onPressed})
      : super(
            iconBuilder: (buttonContext) => LinuxUnmaximizeIcon(color: buttonContext.iconColor),
            onPressed: onPressed ?? () => appWindow.maximizeOrRestore());
}

class LinuxCloseButton extends _LinuxWindowButton {
  LinuxCloseButton({super.key, required super.colors, VoidCallback? onPressed})
      : super(
            iconBuilder: (buttonContext) => LinuxCloseIcon(color: buttonContext.iconColor),
            onPressed: onPressed ?? () => appWindow.close());
}

Widget _linuxWindowButtonBuilder(WindowButtonContext context, Widget icon) {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: ShapeDecoration(
      shape: const CircleBorder(),
      color: context.backgroundColor,
    ),
    child: icon,
  );
}
