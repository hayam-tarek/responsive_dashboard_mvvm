import 'package:flutter/material.dart';
import 'package:responsive_dashboard_mvvm/core/constants/constants.dart';

/// A widget that provides an adaptive layout based on the screen width.
///
/// We use [WidgetBuilder] instead of [Widget] to ensure lazy loading.
/// If we passed [Widget] directly, all layouts (mobile, tablet, desktop) would be
/// instantiated immediately, even if they aren't being displayed.
/// By using [WidgetBuilder], the widget is only created when its specific
/// condition is met inside the [LayoutBuilder], optimizing performance and
/// avoiding unnecessary instantiation before the screen width is determined.
class AdaptiveLayoutBuilder extends StatelessWidget {
  const AdaptiveLayoutBuilder({
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
        if (constraints.maxWidth < kMaxMobileWidth) {
          return mobileLayoutBuilder(context);
        } else if (constraints.maxWidth < kMaxTabletWidth) {
          return tabletLayoutBuilder(context);
        } else {
          return desktopLayoutBuilder(context);
        }
      },
    );
  }
}
