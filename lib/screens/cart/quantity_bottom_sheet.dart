import 'dart:developer';

import 'package:e_commerce_app/widgets/subtitletext.dart';
import 'package:flutter/material.dart';

class QuantityBottomSheet extends StatelessWidget {
  const QuantityBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            height: 6,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    log('index ${index + 1}');
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: SubTitleText(label: '${index + 1}')),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
