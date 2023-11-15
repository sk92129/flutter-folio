import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_folio/_utils/input_utils.dart';
import 'package:flutter_folio/core_packages.dart';

class StyledPageScaffold extends StatelessWidget {
  const StyledPageScaffold({super.key, required this.body});
  final Widget body;

  @override
  Widget build(BuildContext context) {
    AppTheme theme = context.watch();
    //TODO: Add a FocusTraversalGroup() when this bug is addressed:https://github.com/flutter/flutter/issues/74656
    return GestureDetector(
      onTap: InputUtils.unFocus,
      child: Scaffold(
        backgroundColor: theme.bg1,
        body: Stack(
          children: [
            ContextMenuRegion(contextMenu: const AppContextMenu(), child: Container()),
            body,
          ],
        ),
      ),
    );
  }
}
