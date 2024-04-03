import 'package:flutter/material.dart';
import 'package:toontoon/button.dart';
import 'package:toontoon/card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'menu',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 30,
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        'Potato 님,',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '환영합니다',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Total Balance',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    '\$5 194 382',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      textColor: Colors.black,
                      bgColor: Color(0XFFF2B33A),
                      text: 'Transfer'),
                  Button(
                      textColor: Colors.white,
                      bgColor: Color(0xFF1F2123),
                      text: 'Request')
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Wallet',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 19,
              ),
              const Currency_card(
                name: 'Euro',
                code: '6 428',
                amount: 'EUR',
                icon: Icons.euro_rounded,
                isInverted: false,
                order: 0,
              ),
              const Currency_card(
                name: 'Bitcoin',
                code: '9 785',
                amount: 'BTC',
                icon: Icons.currency_bitcoin,
                isInverted: true,
                order: 1,
              ),
              const Currency_card(
                name: 'Dollar',
                code: '6 428',
                amount: 'USD',
                icon: Icons.attach_money_rounded,
                isInverted: false,
                order: 2,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
