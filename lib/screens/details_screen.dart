// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:untitled/constants.dart';
import 'package:untitled/models/products.dart';
import 'package:untitled/widgets/details/details_body.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppbar(context),
      body: DetailsBody(product:widget.product))
    ;
  }

  AppBar detailsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: EdgeInsets.only(left: kDefaultPadding),
        icon: Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: false,
      title: Text(
        "back",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
