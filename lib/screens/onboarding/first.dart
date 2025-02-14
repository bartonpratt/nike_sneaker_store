import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/widgets/themes/colors.dart';

class First extends StatelessWidget {
  final VoidCallback onNext;
  const First({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.accentBlue,
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: 'WELCOME TO\n',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          children: [TextSpan(text: 'NIKE')])),
                ],
              ),
            ),
            SizedBox(
              child: Stack(
                children: [
                  Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Vector.png'),
                    )),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 250),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      opacity: 0.2,
                      image: AssetImage('assets/nike.png'),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/image3.png'),
                      fit: BoxFit.contain,
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 180),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                      image: AssetImage('assets/group.png'),
                      fit: BoxFit.contain,
                    )),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: onNext,
                    child: const Text('Get Started')))
          ],
        ),
      ),
    );
  }
}
