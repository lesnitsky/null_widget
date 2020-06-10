import 'package:flutter/rendering.dart';

class NullWidgetRenderObject extends RenderBox {
  static const _bounds = const Rect.fromLTWH(0, 0, 0, 0);
  Size _size = const Size(0, 0);

  @override
  void debugAssertDoesMeetConstraints() {}

  @override
  Size get size => _size;

  @override
  bool get hasSize => true;

  @override
  Rect get paintBounds => _bounds;

  @override
  void performLayout() {
    _size = super.constraints.smallest;
  }

  @override
  void performResize() {
    _size = super.constraints.smallest;
  }

  @override
  Rect get semanticBounds => _bounds;
}
