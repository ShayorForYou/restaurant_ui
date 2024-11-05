import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xAA2a2a2a),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.white,
                          Colors.transparent
                        ],
                        stops: [0.0, 0.5, 1.0],
                      ).createShader(bounds);
                    },
                    blendMode: BlendMode.dstIn,
                    child: Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://cache.marriott.com/content/dam/marriott-renditions/DACSI/dacsi-king-premier-guestroom-3248-hor-wide.jpg?output-quality=70&interpolation=progressive-bilinear&downsize=1140px:*'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.menu,
                              size: 30,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.settings,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                    bottom: -40,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 48,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hotel Sheraton',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  'Dhaka, Bangladesh',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_rate_outlined,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        text: '4.5',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: ' (1.5k reviews)',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '\$450/',
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'night',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 56,
                  child: const ReadMoreText(
                    'A Bangladesh business hotel located in the heart of Banani, Sheraton Dhaka is just 10 minutes from corporate offices, embassies and shopping malls in the central business district. Guests enjoy free Wi-Fi, a full-service spa and five-star accommodations. Streamlined and refined, these hotel rooms come with signature Sheraton elements such as Sheraton Sleep Experience beds.',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    trimLines: 3,
                    colorClickableText: Colors.orange,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What we offer',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      endIndent: 250,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            AmenitiesContainer(
                              text: 'Restaurant',
                              icon: Icons.restaurant,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AmenitiesContainer(
                              text: 'Swimming Pool',
                              icon: Icons.pool,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AmenitiesContainer(
                              text: 'Gym',
                              icon: Icons.fitness_center,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AmenitiesContainer(
                              text: 'Spa',
                              icon: Icons.spa,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            AmenitiesContainer(
                              text: 'Bar',
                              icon: Icons.local_bar,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Book Now',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class AmenitiesContainer extends StatelessWidget {
  final String text;
  final IconData icon;

  const AmenitiesContainer({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 100),
      decoration: BoxDecoration(
        color: const Color(0xFF2a2a2a),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 30,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
