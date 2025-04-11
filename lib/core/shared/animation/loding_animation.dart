import 'package:flutter/material.dart';

class ThreeDotLoading extends StatefulWidget {
  const ThreeDotLoading({super.key});

  @override
  _ThreeDotLoadingState createState() => _ThreeDotLoadingState();
}

class _ThreeDotLoadingState extends State<ThreeDotLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    )..repeat();

    _animations = List.generate(3, (index) {
      final start = index * 0.2;
      final end = start + 0.6;
      return TweenSequence<double>([
        TweenSequenceItem(tween: Tween(begin: 0.33, end: 0.66), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 0.66, end: 0.33), weight: 1),
      ]).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start, end, curve: Curves.easeInOut),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final minDimension = constraints.maxWidth < constraints.maxHeight
            ? constraints.maxWidth
            : constraints.maxHeight;

        return Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (index) {
              return AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  final size = _animations[index].value * minDimension * 0.5;
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: minDimension * 0.05),
                    width: size,
                    height: size,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  );
                },
              );
            }),
          ),
        );
      },
    );
  }
}
