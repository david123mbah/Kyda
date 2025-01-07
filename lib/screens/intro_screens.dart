import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroScreens extends StatefulWidget {
  const IntroScreens({super.key});

  @override
  State<IntroScreens> createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              IntroPage(
                image: 'assets/images/online_learning.png',
                title: 'Online Learning',
                description:
                    'We Provide Online Classes, Learning Material,\nQuizzes to Users!',
              ),
              IntroPage(
                image: './assets/images/ai_learning.png',
                title: 'Enhance Learning with AI',
                description:
                    'We provide an AI assistant which helps in Correcting your\nquizzes and Answering your questions!',
              ),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 2,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Color(0xFF0754AA),
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: const Color(0xFF0754AA),
                  onPressed: () {
                    _controller.page == 0
                        ? _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          )
                        : Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Scaffold(
                                body: Center(child: Text('Home Screen')),
                              ),
                            ),
                          );
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 16,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Scaffold(
                      body: Center(child: Text('Home Screen')),
                    ),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IntroPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const IntroPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 300,
          ),
          const SizedBox(height: 50),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
