# null_widget

[![lesnitsky.dev](https://lesnitsky.dev/shield.svg?hash=94049)](https://lesnitsky.dev?utm_source=null_widget)
[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/null_widget.svg?style=social)](https://github.com/lesnitsky/null_widget)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_dev.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_dev)

Tiny widget which is good to be used as a placeholder

[This article] explains the motivation behind this widget

## Installation

pubspec.yaml:

```yaml
dependencies:
  null_widget: ^1.0.0
```

## Example

```dart
class MyWidget extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext) {
    return Column(
      children: [
        id.isEmpty ? const NullWidget() : Text('id $id'),
        guard(() => Text(title)),
        guard(() => Text(subtitle), Text('No subtitle')),
      ],
    );
  }
}
```

## License

MIT
