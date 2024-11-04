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
                              'https://cf.bstatic.com/xdata/images/hotel/max1280x900/383834719.jpg?k=a8ed632aeaf2eb621e6753e941d4fb2f858005614b603cdef5bfe644ce1a1906&o=&hp=1'),
                          fit: BoxFit.contain,
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
                    bottom: -50,
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
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
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
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_border_purple500_rounded,
                                      color: Colors.orange,
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, molestie ipsum et, consequat nibh. Etiam non elit dui. Nullam vel erat sed mi finibus lacinia. Donec nec tincidunt sapien. Ut ultrices, libero sed ultrices vehicula, urna turpis sollicitudin risus, nec laoreet nunc metus a libero. Nullam vel erat sed mi finibus lacinia. Donec nec tincidunt sapien. Ut ultrices, libero sed ultrices vehicula, urna turpis sollicitudin risus, nec laoreet nunc metus a libero.',
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
                      padding:
                      const EdgeInsets.symmetric(vertical: 10),
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
          const Text(
            'Restaurant',
            style: TextStyle(
                fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
