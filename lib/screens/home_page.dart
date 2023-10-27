import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();
  final List<IconData> _icons = [
    Icons.abc_rounded,
    Icons.access_alarm,
    Icons.help_outline,
    Icons.ac_unit
  ];
  final List<Text> _textButtons = [
    const Text('All'),
    const Text('Newest'),
    const Text('Popular'),
    const Text('Men'),
    const Text('Women'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  DropdownMenu(
                    trailingIcon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Color(0xff704F38),
                    ),
                    inputDecorationTheme: const InputDecorationTheme(
                      contentPadding: EdgeInsets.all(0),
                      floatingLabelAlignment: FloatingLabelAlignment.start,
                      border: InputBorder.none,
                    ),
                    initialSelection: 1,
                    label: Text(
                      'Location',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 15),
                    ),
                    leadingIcon: const Icon(
                      Icons.location_pin,
                      color: Color(0xff704F38),
                    ),
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(
                        value: 1,
                        label: 'New York,USA',
                      ),
                    ],
                  ),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade600),
                        ),
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.abc_sharp,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 200,
                child: PageView(
                  controller: _pageController,
                  children: [1, 2, 3, 4]
                      .map((e) => Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Text("hello"),
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: WormEffect(
                    activeDotColor: Theme.of(context).primaryColor,
                    dotWidth: 10,
                    dotHeight: 10),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text('See all', style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [1, 2, 3, 4]
                      .map(
                        (e) => SizedBox(
                          width: 100,
                          child: IconButton(
                            splashRadius: 15,
                            onPressed: () {},
                            icon: Icon(
                              _icons[e - 1],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flash Sale',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text('See all', style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [1, 2, 3, 4]
                      .map(
                        (e) => SizedBox(
                            width: 100,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  side: MaterialStatePropertyAll<BorderSide>(
                                    BorderSide(color: Colors.grey.shade600),
                                  ),
                                ),
                                child: _textButtons[e - 1],
                              ),
                            )),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
