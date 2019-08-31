import 'package:flutter/material.dart';

class AnimatedScaffold extends StatefulWidget {
  final Color color;
  final Widget child;

  AnimatedScaffold({this.color, this.child});

  @override
  _AnimatedScaffoldState createState() => _AnimatedScaffoldState();
}

class _AnimatedScaffoldState extends State<AnimatedScaffold>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Color> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
  }

  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(AnimatedScaffold oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.color != oldWidget.color) {
      print(
          'widget.color != oldWidget.color ${widget.color}   ${oldWidget.color}');
      _updateAnimation(oldWidget.color, widget.color);
      _controller
        ..value = 0.0
        ..forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: _animation?.value, body: widget.child);
  }

  void _updateAnimation(Color begin, Color end) {
    _animation = ColorTween(begin: begin, end: end).animate(_controller)
      ..addListener(() {
        setState(() {
          print('setState');
        });
      });
  }
}
