import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  const Badge({
    super.key, // Use `super.key` to pass the key to the parent constructor
    required this.child,
    required this.value,
    this.color, // Allow color to be nullable by not marking it as required
  });

  final Widget child;
  final String value;
  final Color? color; // Mark color as nullable by adding `?`

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: color ??
                  Theme.of(context)
                      .colorScheme
                      .secondary, // Use null-aware operator `??`
            ),
            constraints: BoxConstraints(
              minWidth: 16,
              minHeight: 16,
            ),
            child: Text(
              value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        )
      ],
    );
  }
}
