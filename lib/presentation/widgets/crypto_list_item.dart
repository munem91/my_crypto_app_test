import 'dart:math';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../domain/crypto_model.dart';

// Builds colored list item with symbol and price
class CryptoListItem extends StatelessWidget {
  final CryptoModel data;
  final Color color;

  const CryptoListItem({
    super.key,
    required this.data,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.titleMedium;
    final formatter = NumberFormat.currency(locale: 'en_US', symbol: '\$');

    return SizedBox(
      height: 84,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                const SizedBox(width: 16),
                Text(data.symbol, style: textStyle),
              ],
            ),
            Text(
              formatter.format(data.priceUsd),
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
} 