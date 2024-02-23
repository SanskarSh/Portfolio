
import 'package:flutter/material.dart';

class AnimatedIndicator extends StatefulWidget {
  const AnimatedIndicator({
    super.key,
    this.containerHeight = 60.0,
    this.containerWidth = 30.0,
    required this.color,
  });

  final double containerHeight;
  final double containerWidth;
  final Color color;

  @override
  State<AnimatedIndicator> createState() => _AnimatedIndicatorState();
}

class _AnimatedIndicatorState extends State<AnimatedIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    )..repeat(reverse: true);
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: Container(
            margin: const EdgeInsets.only(left: 1.0),
            height: widget.containerHeight,
            width: widget.containerWidth,
            color: widget.color,
          ),
        );
      },
    );
  }
}
