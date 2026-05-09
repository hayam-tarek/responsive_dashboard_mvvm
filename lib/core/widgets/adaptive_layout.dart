import 'package:flutter/material.dart';

/// A widget that provides an adaptive layout based on the screen width.
///
/// We use [WidgetBuilder] instead of [Widget] to ensure lazy loading.
/// If we passed [Widget] directly, all layouts (mobile, tablet, desktop) would be
/// instantiated immediately, even if they aren't being displayed.
/// By using [WidgetBuilder], the widget is only created when its specific
/// condition is met inside the [LayoutBuilder], optimizing performance and
/// avoiding unnecessary instantiation before the screen width is determined.
class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayoutBuilder,
    required this.tabletLayoutBuilder,
    required this.desktopLayoutBuilder,
  });

  final WidgetBuilder mobileLayoutBuilder;
  final WidgetBuilder tabletLayoutBuilder;
  final WidgetBuilder desktopLayoutBuilder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileLayoutBuilder(context);
        } else if (constraints.maxWidth < 900) {
          return tabletLayoutBuilder(context);
        } else {
          return desktopLayoutBuilder(context);
        }
      },
    );
  }
}
