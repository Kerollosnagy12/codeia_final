import 'package:codeia_final/constants.dart';
import 'package:flutter/material.dart';

class ShoppingCartOption extends StatelessWidget {
  const ShoppingCartOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
