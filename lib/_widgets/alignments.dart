import 'package:flutter/material.dart';

// TODO: Make this a package
Widget _build(Alignment value, Widget child) => Align(alignment: value, child: child);

/// TOPS
class TopLeft extends StatelessWidget {
  const TopLeft({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.topLeft, child);
}

class TopRight extends StatelessWidget {
  const TopRight({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.topRight, child);
}

class TopCenter extends StatelessWidget {
  const TopCenter({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.topCenter, child);
}

/// CENTERS
class CenterLeft extends StatelessWidget {
  const CenterLeft({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.centerLeft, child);
}

class CenterRight extends StatelessWidget {
  const CenterRight({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.centerRight, child);
}

/// BOTTOMS
class BottomLeft extends StatelessWidget {
  const BottomLeft({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.bottomLeft, child);
}

class BottomRight extends StatelessWidget {
  const BottomRight({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.bottomRight, child);
}

class BottomCenter extends StatelessWidget {
  const BottomCenter({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => _build(Alignment.bottomCenter, child);
}
