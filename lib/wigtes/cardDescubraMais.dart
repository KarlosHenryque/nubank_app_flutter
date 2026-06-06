import 'package:flutter/material.dart';

Widget CardDescubraMais(
  @required String image,
  @required String textoTitulo,
  @required String textoDescicao,
  @required String textoBotao,
) {
  return Container(
    width: 237,
    child: Column(
      children: [
        Container(
          width: 237,
          height: 117,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(image), fit: .cover),
            borderRadius: .circular(8),
          ),
        ),
        Container(
          width: 237,
          height: 147,
          decoration: BoxDecoration(
            color: Color(0xFFF0F1F5),
            borderRadius: .circular(8),
          ),
          child: Padding(
            padding: .only(left: 12),
            child: Column(
              spacing: 10,
              crossAxisAlignment: .start,
              children: [
                SizedBox(height: 10),
                Text(
                  textoTitulo,
                  style: TextStyle(fontSize: 14, fontWeight: .w600),
                ),
                Text(
                  textoDescicao,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: .w600,
                    color: Color(0xFF848689),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    textoBotao,
                    style: TextStyle(color: Colors.white, fontWeight: .bold),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color(0xFF830BCC),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
