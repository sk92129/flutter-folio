import 'package:flutter/material.dart';

// Alternative to [AnimatedBuilder], same functionality but it reads better and follows the other builders (ValueListenableBuilder).
class ListenBuild extends AnimatedWidget {
  const ListenBuild({super.key, this.child, required super.listenable, required this.builder});

  final Widget Function(BuildContext context, Widget? child) builder;
  final Widget? child; 

  @override
  Widget build(BuildContext context) {
    return builder(context, child);
  }
}
