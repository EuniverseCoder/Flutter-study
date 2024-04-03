import 'package:flutter/material.dart';

class Currency_card extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final Color _black = const Color(0xFF1F2123);
  final double order;

  const Currency_card(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -8 * order),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isInverted ? Colors.white : _black,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 19),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                          color: isInverted ? _black : Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? _black : Colors.white,
                            fontSize: 24),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                            color: isInverted
                                ? _black.withOpacity(0.8)
                                : Colors.white.withOpacity(0.8),
                            fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 3,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(icon,
                      color: isInverted ? _black : Colors.white, size: 60),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
