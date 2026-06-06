import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nubank/models/carteira.dart';
import 'package:nubank/models/usuario.dart';
import 'package:nubank/wigtes/cardDescubraMais.dart';
import 'package:nubank/wigtes/cardPersonalizado.dart';
import 'package:nubank/wigtes/cardSeguro.dart';

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
      body: Padding(
        padding: const EdgeInsetsGeometry.fromLTRB(16, 16, 16, 0),
        child: SingleChildScrollView(
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
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: .start,
                  children: [
                    CardPersonalizado(
                      Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(text: "Você tem até "),
                            TextSpan(
                              text: "R\$ 12.500,00 ",
                              style: TextStyle(
                                color: Color(0xFF830AD1),
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(text: "diponíveis para empréstimo."),
                          ],
                        ),
                      ),
                    ),
                    CardPersonalizado(
                      Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(text: "Salve seus amigos da burocracia. "),
                            TextSpan(
                              text: "Faça um convite...",
                              style: TextStyle(
                                color: Color(0xFF830AD1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Divider(),
              Padding(
                padding: .all(16),
                child: Container(
                  height: 162,
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Cartão de crédito",
                            style: TextStyle(fontSize: 14, fontWeight: .w600),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Fatura atual",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: .w600,
                              color: Color(0xFF848389),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text("R\$ "),
                          Text(
                            "250,00",
                            style: TextStyle(fontSize: 16, fontWeight: .w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Limite disponível de R\$ ",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF848389),
                            ),
                          ),
                          Text(
                            "3.455,55",
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFF848389),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            onPressed: () => {},
                            child: Text(
                              "Parcelar compras ",
                              style: TextStyle(
                                fontWeight: .bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: .all(16),
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Empréstimo",
                            style: TextStyle(fontSize: 14, fontWeight: .w600),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Valor disponível de até \nR\$ 25.000,00",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: .w600,
                              color: Color(0xFF848389),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: .all(16),
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Investimentos",
                            style: TextStyle(fontSize: 14, fontWeight: .w600),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Limite disponível de R\$ 3.455,55",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF848389),
                                fontWeight: .w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Seguros",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Proteção para você cuidar do que importa",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF848389),
                          fontWeight: .w600,
                        ),
                      ),
                      SizedBox(height: 24),

                      CardSeguro(Icons.favorite, 'Seguro vida', 'Conhecer'),

                      SizedBox(height: 24),

                      CardSeguro(
                        Icons.smartphone,
                        'Seguro celular',
                        'Conhecer',
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: .all(16),
                child: Container(
                  width: 360,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Text(
                            "Shopping",
                            style: TextStyle(fontSize: 14, fontWeight: .w600),
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Vantagens exclusivas das nossas marcas preferidas",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF848389),
                                fontWeight: .w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(),
              SizedBox(height: 24),
              SingleChildScrollView(
                scrollDirection: .horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    CardDescubraMais('assets/images/descubra1.png', 'Parcele compras no app', 'Descontos em compras à vista \n no crédito, controle total sobr...', 'Conhecer'),
                    CardDescubraMais('assets/images/descubra2.png', 'Portabilidade de salário', 'Sua liberdade financeira \ncomeça com você escolhend..., controle total sobr...', 'Conhecer'),
                    CardDescubraMais('assets/images/descubra4.png', 'Indique seus amigos', 'Mostre aos seus amigos como é \nfácil ter uma vida sem ... ', 'Indicar amigos'),
                    CardDescubraMais('assets/images/descubra3.png', 'WhatsApp', 'Pagamentos seguros, rápidos e \nsem tarifa. A experiência ...', 'Quero conhecer'),
                  ],
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
