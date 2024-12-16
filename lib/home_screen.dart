import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'details_screen.dart';
import 'place.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Place> _places = [
    Place(
        city: 'Ahmedabad',
        description:
            'In 2010, Ahmedabad was ranked third in Forbes\'s list of fastest growing cities of the decade. In 2012, The Times of India chose Ahmedabad as India\'s best city to live in. The gross domestic product of Ahmedabad metro was estimated at \$68 billion in 2020. In 2020, Ahmedabad was ranked as the third-best city in India to live by the Ease of Living Index.[24] In July 2022, Time magazine included Ahmedabad in its list of world\'s 50 greatest places of 2022.[25]',
        country: 'India',
        image:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x_masonry/antmanandthewaspquantumania_lob_crd_02.jpg',
        id: 12345,
        name: 'RiverFront'),
    Place(
        city: 'Ahmedabad',
        description:
            'In 2010, Ahmedabad was ranked third in Forbes\'s list of fastest growing cities of the decade. In 2012, The Times of India chose Ahmedabad as India\'s best city to live in. The gross domestic product of Ahmedabad metro was estimated at \$68 billion in 2020. In 2020, Ahmedabad was ranked as the third-best city in India to live by the Ease of Living Index.[24] In July 2022, Time magazine included Ahmedabad in its list of world\'s 50 greatest places of 2022.[25]',
        country: 'India',
        image:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x/blackpantherwakandaforever_lob_crd_05.jpg',
        id: 12345,
        name: 'RiverFront'),
    Place(
        city: 'Ahmedabad',
        description:
            'In 2010, Ahmedabad was ranked third in Forbes\'s list of fastest growing cities of the decade. In 2012, The Times of India chose Ahmedabad as India\'s best city to live in. The gross domestic product of Ahmedabad metro was estimated at \$68 billion in 2020. In 2020, Ahmedabad was ranked as the third-best city in India to live by the Ease of Living Index.[24] In July 2022, Time magazine included Ahmedabad in its list of world\'s 50 greatest places of 2022.[25]',
        country: 'India',
        image:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x_masonry/thorloveandthunder_lob_crd_03.jpg',
        id: 12345,
        name: 'RiverFront'),
    Place(
        city: 'Ahmedabad',
        description:
            'In 2010, Ahmedabad was ranked third in Forbes\'s list of fastest growing cities of the decade. In 2012, The Times of India chose Ahmedabad as India\'s best city to live in. The gross domestic product of Ahmedabad metro was estimated at \$68 billion in 2020. In 2020, Ahmedabad was ranked as the third-best city in India to live by the Ease of Living Index.[24] In July 2022, Time magazine included Ahmedabad in its list of world\'s 50 greatest places of 2022.[25]',
        country: 'India',
        image:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x_masonry/doctorstrangeinthemultiverseofmadness_lob_crd_02_3.jpg',
        id: 12345,
        name: 'RiverFront'),
    Place(
        city: 'Ahmedabad',
        description:
            'In 2010, Ahmedabad was ranked third in Forbes\'s list of fastest growing cities of the decade. In 2012, The Times of India chose Ahmedabad as India\'s best city to live in. The gross domestic product of Ahmedabad metro was estimated at \$68 billion in 2020. In 2020, Ahmedabad was ranked as the third-best city in India to live by the Ease of Living Index.[24] In July 2022, Time magazine included Ahmedabad in its list of world\'s 50 greatest places of 2022.[25]',
        country: 'India',
        image:
            'https://terrigen-cdn-dev.marvel.com/content/prod/1x/guardiansofthegalaxyvol.2_lob_crd_01.jpg',
        id: 12345,
        name: 'RiverFront'),
  ];
  bool isListMode = true;

  @override
  void initState() {
    super.initState();
  }

  Widget _getBodyWidget() {
    if (isListMode) {
      return HomeListView(
        places: _places,
      );
    } else {
      return HomeGridView(
        places: _places,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text('Animations'),
        actions: [
          IconButton(
            icon: const Icon(Icons.block),
            onPressed: () {
              setState(() {
                isListMode = !isListMode;
              });
            },
          ),
        ],
      ),
      body: _places != null
          ? AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              child: _getBodyWidget(),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({Key? key, required this.places}) : super(key: key);
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        return HomeItem(
          place: places[index],
        );
      },
      itemExtent: 200,
      itemCount: places.length,
    );
  }
}

class HomeGridView extends StatelessWidget {
  const HomeGridView({Key? key, required this.places}) : super(key: key);
  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1,
        crossAxisCount: 2,
      ),
      itemBuilder: (_, index) {
        return HomeItem(
          place: places[index],
        );
      },
      itemCount: places.length,
    );
  }
}

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key, required this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (_, animation, __) {
              return FadeTransition(
                opacity: animation,
                child: DetailsScreen(place: place),
              );
            },
          ),
        );
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: place.name,
              child: Image.network(
                place.image,
                fit: BoxFit.cover,
                loadingBuilder: (_, widget, chunk) {
                  return chunk == null
                      ? widget
                      : const Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            right: 0,
            child: Text(
              'Marvel',
              // place.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                shadows: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 15,
                    offset: Offset(5, 2),
                    spreadRadius: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
