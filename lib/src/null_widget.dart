import 'package:flutter/widgets.dart';

import 'null_widget_render_object.dart';

/// Zero cost widget
/// Use it when you need a placeholder
class NullWidget extends LeafRenderObjectWidget {
  const NullWidget();

  @override
  RenderObject createRenderObject(BuildContext context) {
    return NullWidgetRenderObject();
  }
}
