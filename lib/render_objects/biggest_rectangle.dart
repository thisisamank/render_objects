import 'package:flutter/material.dart';

class RedSquareRenderObject extends RenderBox {
  @override
  void performLayout() {
    size = constraints.biggest;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final paint = Paint()..color = Colors.red;
    context.canvas.drawRect(offset & size, paint);
  }
}

class RedSquare extends SingleChildRenderObjectWidget {
  const RedSquare({super.key});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RedSquareRenderObject();
  }
}
