import 'package:flutter/material.dart';
import 'package:flutter_folio/core_packages.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, this.size = 30});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          "Fetching data, please wait...",
          style: TextStyles.caption,
        )
        //child: SizedBox(width: size, height: size, child: CircularProgressIndicator()),
        );
  }
}
