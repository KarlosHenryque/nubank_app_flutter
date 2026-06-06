import 'package:flutter/material.dart';

Widget CardPersonalizado(@required Widget texto) {
  return Container(
    width: 258,
    height: 84,
    decoration: BoxDecoration(
      color: Color(0xFFF0F1F5),
      borderRadius: .circular(8),

    ),
    child: Padding(padding: EdgeInsetsGeometry.all(18), child: texto,),
  );
}
