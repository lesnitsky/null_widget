import 'package:flutter/widgets.dart';
import 'package:guard/guard.dart' as _g;
import 'package:null_widget/src/null_widget.dart';

T guard<T>(T Function() callback, [T defaultValue]) {
  T result;

  if (T == Widget) {
    try {
      result = callback();
    } catch (err) {}
  } else {
    return _g.guard(callback, defaultValue);
  }

  return result ?? (defaultValue ?? NullWidget() as T);
}
