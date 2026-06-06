import 'package:flutter/material.dart';

Widget CardSeguro(
  @required IconData icone,
  @required String texto,
  @required String textoButton,
) {
  return Container(
    width: 328,
    height: 47,
    decoration: BoxDecoration(
      color: Color(0xFFF0F1F5),
      borderRadius: .circular(8),
    ),
    child: Padding(
      padding: EdgeInsetsGeometry.fromLTRB(17, 10, 17, 10),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            spacing: 10,
            children: [
              Icon(icone),
              Text(texto, style: TextStyle(fontSize: 14, fontWeight: .w600)),
            ],
          ),
          GestureDetector(
            child: Text(
              textoButton,
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w600,
                color: Color(0xff702787),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
