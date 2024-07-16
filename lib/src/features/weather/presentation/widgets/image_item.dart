import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
    required this.image,
    required this.city,
  });

  final String image;
  final String city;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/$image',
          fit: BoxFit.cover,
        ),
        Center(
          child: Text(
            city,
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}

class RoundBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const double borderRadius = 30;

    Path path = Path();

    path.moveTo(0, borderRadius);

    path.quadraticBezierTo(0, 0, borderRadius, 0);

    path.lineTo(size.width - borderRadius, 0);

    path.quadraticBezierTo(size.width, 0, size.width, borderRadius);

    path.lineTo(size.width, size.height - borderRadius);

    path.quadraticBezierTo(
        size.width, size.height, size.width - borderRadius, size.height);

    path.lineTo(borderRadius, size.height);

    path.quadraticBezierTo(
        size.width, size.height, size.width - borderRadius, size.height);

    path.lineTo(borderRadius, size.height);

    path.quadraticBezierTo(0, size.height, 0, size.height - borderRadius);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
