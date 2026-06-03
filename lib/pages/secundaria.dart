import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank/models/carteira.dart';
import 'package:nubank/models/usuario.dart';

class Secundaria extends StatefulWidget {
  const Secundaria({super.key});

  @override
  State<Secundaria> createState() => _SecundariaState();
}

class _SecundariaState extends State<Secundaria> {
  Carteira _cateira = Carteira(1356.98, 250, 3455.55, 25000);
  late Usuario _usuario = Usuario('Karlos', 21, _cateira);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color(0xFF830AD1),
        title: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(Icons.person_outline, color: Colors.white),
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                      color: Color(0xFF9B03fe),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/iconevisualizacao.png'),
                        Column(
                          children: [
                            Image.asset('assets/images/iconeajuda.png'),
                            SizedBox(height: 5),
                          ],
                        ),
                        Image.asset('assets/images/iconeconvite.png'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    'Olá, ${_usuario.nome}',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsGeometry.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Conta',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF060606),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFF666666)),
                ],
              ),
              Row(
                children: [
                  Text(
                    'R\$ ${_usuario.carteira.saldo}',
                    style: GoogleFonts.poppins(
                      color: Color(0xFF060606),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/icone.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 75,
                            height: 32,
                            child: Text(
                              'Área Pix',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconepagar.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Pagar',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconeemprestado.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 75,
                            height: 32,
                            child: Text(
                              'Pegar emprestado',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconetransfere.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Transferir',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconedeposita.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Depositar',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconecelular.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 75,
                            height: 32,
                            child: Text(
                              'Recarga de celular',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconecobrar.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Cobrar',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconedoacao.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Doação',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset('assets/images/Ellipse.png'),
                              Image.asset('assets/images/iconetransfere.png'),
                            ],
                          ),
                          SizedBox(height: 8),
                          SizedBox(
                            width: 75,
                            height: 32,
                            child: Text(
                              'Transferência internacional',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0XFFF0F1F5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 315,
                      height: 41,
                      child: Row(
                        children: [
                          SizedBox(width: 20),
                          Image.asset("assets/images/iconecartao.png"),
                          SizedBox(width: 13),
                          Text('Meus cartões'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
