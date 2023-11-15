import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, this.stops,
      {super.key, this.child, this.width, this.height, this.alignment, this.begin, this.end});
  final double? width;
  final double? height;
  final Widget? child;
  final List<Color> colors;
  final List<double> stops;
  final Alignment? begin;
  final Alignment? end;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) => IgnorePointer(
        child: Container(
          width: width,
          height: height,
          alignment: alignment,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: begin ?? Alignment.centerLeft,
              end: end ?? Alignment.centerRight,
              colors: colors,
              stops: stops,
            ),
          ),
          child: child,
        ),
      );
}

class HzGradient extends StatelessWidget {
  const HzGradient(this.colors, this.stops, {super.key, this.child, this.width, this.height, this.alignment});
  final List<Color> colors;
  final List<double> stops;
  final Widget? child;
  final double? width;
  final double? height;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) =>
      GradientContainer(colors, stops, width: width, height: height, alignment: alignment, child: child);
}

class VtGradient extends StatelessWidget {
  const VtGradient(this.colors, this.stops, {super.key, this.child, this.width, this.height, this.alignment});
  final List<Color> colors;
  final List<double> stops;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final Widget? child;

  @override
  Widget build(BuildContext context) => GradientContainer(colors, stops,
      width: width,
      height: height,
      alignment: alignment,
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      child: child);
}
