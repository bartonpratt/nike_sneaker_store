import 'package:flutter/material.dart';
import 'package:nike_sneaker_store/widgets/themes/colors.dart';

class Second extends StatelessWidget {
  final VoidCallback onNext;
  const Second({super.key, required this.onNext});

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
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 450, left: 200),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Misc_04.png'),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 360, right: 200),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Highlight_10.png'),
                    )),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      opacity: 0.2,
                      image: AssetImage('assets/nike.png'),
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 200),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/Spring_prev_ui.png'),
                      fit: BoxFit.contain,
                    )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 600),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: "Let's Start Journey\n",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                                children: [TextSpan(text: 'With Nike')])),
                        const SizedBox(height: 20),
                        RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Smart, Gorgeous & Fashionable\n',
                                style: TextStyle(),
                                children: [
                                  TextSpan(text: 'Collection Explore Now')
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
