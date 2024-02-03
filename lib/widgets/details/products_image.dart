import 'package:flutter/material.dart';

import '../../constants.dart';


class ProductImage extends StatefulWidget {
  const ProductImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  final Size size;
  final String image;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: widget.size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: widget.size.width * 0.7,
            width: widget.size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            widget.image,
            height: widget.size.width * 0.75,
            width: widget.size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
