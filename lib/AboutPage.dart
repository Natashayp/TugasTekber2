import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _isHoveringFunFact = false;
  bool _isHoveringHobbies = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onHoverFunFact(bool isHovering) {
    setState(() {
      _isHoveringFunFact = isHovering;
    });
  }

  void _onHoverHobbies(bool isHovering) {
    setState(() {
      _isHoveringHobbies = isHovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'About Me',
            style: TextStyle(
              fontFamily: 'Playfair',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 213, 193, 140),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/home.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.5 - 60,
                  child: MouseRegion(
                    onEnter: (_) => setState(() {
                      _isHoveringFunFact = false;
                      _isHoveringHobbies = false;
                    }),
                    child: CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.white,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/profilephoto.jpg',
                          fit: BoxFit.cover,
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    "Nama: Natasha Yosefani Putri",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Playfair',
                      color: Color.fromARGB(255, 102, 51, 0),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "NRP: 5026221011",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 30),
                  MouseRegion(
                    onEnter: (_) => _onHoverFunFact(true),
                    onExit: (_) => _onHoverFunFact(false),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Fun Fact"),
                              content: const Text("Tim bubur gak diaduk!"),
                              actions: [
                                TextButton(
                                  child: const Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Card(
                        elevation: _isHoveringFunFact ? 10 : 5,
                        shadowColor: _isHoveringFunFact ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: _isHoveringFunFact ? Colors.amber.shade100 : const Color.fromARGB(255, 213, 193, 140),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.lightbulb, color: Color.fromARGB(255, 0, 0, 0)),
                              Text(
                                'Fun Fact?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  MouseRegion(
                    onEnter: (_) => _onHoverHobbies(true),
                    onExit: (_) => _onHoverHobbies(false),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Hobbies"),
                              content: const Text("Travelling, cafe hopping, & scroll tiktok ofc!!!"),
                              actions: [
                                TextButton(
                                  child: const Text("Close"),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Card(
                        elevation: _isHoveringHobbies ? 10 : 5,
                        shadowColor: _isHoveringHobbies ? Colors.black.withOpacity(0.3) : Colors.black.withOpacity(0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: _isHoveringHobbies ? Colors.amber.shade100 : const Color.fromARGB(255, 213, 193, 140),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Icon(Icons.sports_basketball, color: Color.fromARGB(255, 0, 0, 0)),
                              Text(
                                'Hobbies?',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
