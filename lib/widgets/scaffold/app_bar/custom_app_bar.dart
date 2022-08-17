import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom App Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldWidget(),
    );
  }
}

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: const CustomAppBar(),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Size get preferredSize => const Size(double.infinity, 280.0);

  @override
  Widget build(BuildContext context) {
    double searchBarPosition = MediaQuery.of(context).padding.top * 4.0;
    double titlePosition = MediaQuery.of(context).padding.top * 2.0;

    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 92, 22, 120), Color.fromARGB(255, 175, 80, 234)],
              ),
            ),
          ),
        ),
        Positioned(
          top: titlePosition,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                minRadius: 24.00,
                backgroundImage: NetworkImage('https://vejario.abril.com.br/wp-content/uploads/2022/07/image0-33.jpeg?quality=70&strip=info&resize=850,567'),
              ),
              SizedBox(width: 12.0),
              Expanded(
                child: Text(
                  'Insira aqui seu texto da appBar',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: searchBarPosition,
          left: 16,
          right: 16,
          child: const SearchBar(),
        )
      ],
    );
  }
}

class DiagonalBaseLineClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    // We subtracted 80 from the height here
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(DiagonalBaseLineClipper oldClipper) => oldClipper != this;
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    final p0 = size.height * 0.75;
    path.lineTo(0.0, p0);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, size.height / 2);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => oldClipper != this;
}

class SearchBar extends StatelessWidget {
  final pink = const Color.fromARGB(255, 173, 102, 249);
  final grey = const Color(0xFFF2F2F7);

  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 32,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: pink,
          focusedBorder: _border(pink),
          border: _border(grey),
          enabledBorder: _border(grey),
          hintText: 'search',
          contentPadding: const EdgeInsets.symmetric(vertical: 20),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          suffixIcon: const Icon(
            Icons.settings_sharp,
            color: Colors.grey,
          ),
        ),
        onFieldSubmitted: (value) {},
      ),
    );
  }

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 0.5, color: color),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
