import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/widgets/themes/colors.dart';

class Third extends StatelessWidget {
  final VoidCallback onNext;
  const Third({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.accentBlue,
        ),
        child: Column(
          children: [
            SizedBox(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 360, right: 200),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Misc_04.png'),
                    )),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        opacity: 0.2,
                        image: AssetImage('assets/nike.png'),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 100, top: 200),
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                      image: AssetImage('assets/Air_Jordan_Nike.png'),
                      fit: BoxFit.contain,
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: "You Have The\n",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                                children: [TextSpan(text: 'Power To')])),
                        const SizedBox(height: 20),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text:
                                    'There Are Many Beautiful And Attractive\n',
                                style: TextStyle(),
                                children: [
                                  TextSpan(text: 'Plants To Your Room')
                                ]))
                      ],
                    ),
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
                    child: const Text('Next')))
          ],
        ),
      ),
    );
  }
}
