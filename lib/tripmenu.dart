import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourguide/home.dart';

class trip extends StatelessWidget {
  const trip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ));
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Religious(),
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Religious places',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Cairo, Egypt',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Image.network(
                      'https://ichef.bbci.co.uk/news/976/cpsprodpb/14BBB/production/_97832948_gettyimages-623522238.jpg',
                      fit: BoxFit.cover,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        MaterialButton(
                          color: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Religious()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Start Trip'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Various(),
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Various places',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      subtitle: Text(
                        'Cairo, Egypt',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    Image.network(
                      'https://www.holidify.com/images/bgImages/CAIRO.jpg',
                      fit: BoxFit.cover,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        MaterialButton(
                          color: Colors.teal,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Various()),
                            );
                          },
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('Start Trip'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TripData extends StatelessWidget {
  const TripData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'The hanging Church',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      'https://www.etltravel.com/wp-content/uploads/2021/10/hanging-church-cairo-egypt-050.jpg',
                      fit: BoxFit.cover,
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    'The Hanging Church',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Cairo, Egypt',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'Take the steps that lead to one of the most beautiful churches in the Middle East known as the Hanging Church. Built on top of the Roman fortress gatehouse called Babylon, the nave of the Hanging Church is suspended over the passageway. Located just south of the Coptic Museum in Cairo, the Hanging Church boasts 13 magnificent pillars in its interior, representing Jesus and his 12 apostles. Listen in on the ancient liturgical Coptic language used in service and witness a living vestige of Ancient Egyptian history.',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Kom Ghorab, Old Cairo, Cairo Governorate',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                      'Location:'
                  ),
                  Center(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      icon: Icon(Icons.airplanemode_on, size: 18),
                      label: Text("Open in Google Maps"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class variousData extends StatelessWidget {
  const variousData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Egyption Muesum',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      'https://images.memphistours.com/large/d9b3e640d790a93c0a7e604f0810acaa.jpg',
                      fit: BoxFit.cover,
                    ))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    'Egyption Muesum',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Cairo, Egypt',
                      style: TextStyle(fontSize: 16, color: Colors.grey)),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      'TThe architect of the building was selected through an international competition in 1895, which was the first of its kind, and was won by the French architect, Marcel Dourgnon. The museum was inaugurated in 1902 by Khedive Abbas Helmy II, and has become a historic landmark in downtown Cairo, and home to some of the world’s most magnificent ancient masterpieces.Among the museum’s unrivaled collection are the complete burials of Yuya and Thuya, Psusennes I and the treasures of Tanis, and the Narmer Palette commemorating the unification of Upper and Lower Egypt under one king, which is also among the museum’s invaluable artifacts. The museum also houses the splendid statues of the great kings Khufu, Khafre, and Menkaure, the builders of the pyramids at the Giza plateau. An extensive collection of papyri, sarcophagi and jewelry, among other objects, completes this uniquely expansive museum.',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                    "Address",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('Wasim Hasan, Ismailia, Qasr El Nil, Cairo Governorate',
                      style: TextStyle(
                        fontSize: 20,
                      )),
                  Divider(
                    color: Colors.teal,
                  ),
                  Text(
                      'Location:'
                  ),
                  Center(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        primary: Colors.teal,
                      ),
                      icon: Icon(Icons.airplanemode_on, size: 18),
                      label: Text("Open in Google Maps"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}

class Religious extends StatelessWidget {
  const Religious({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        title: Text(
          'Religious',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'The hanging Church',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://images.memphistours.com/large/255958670_hanging%20old%20cairo.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'El sayeda zeinab',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.etltravel.com/wp-content/uploads/2021/10/el-sayeda-zeinab-mosque-cairo-050.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Coptic Cairo',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://cdn.getyourguide.com/img/tour/5dcd2d804448b.jpeg/146.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Al-Hussain Mosque',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://thumbs.dreamstime.com/b/cairo-egypt-june-al-hussain-mosque-daylight-exterior-view-clouds-sky-165235522.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'St. Simon "The Tanner" Monastery',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://media.tacdn.com/media/attractions-splice-spp-674x446/06/75/94/b3.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Islamic museum',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.egypttoday.com/siteimages/Larg/45692.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Coptic Museum',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.egypttoday.com/siteimages/Larg/202201021255485548.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'synagogue ben ezra',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/87/47.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Church of the Virgin Mary, Maadi',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.tripsinegypt.com/wp-content/uploads/2020/04/St-Virgin-Mary-Church-Maadi-Egypt-Trips-in-Egypt.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('Details'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
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
class Various extends StatelessWidget {
  const Various({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.teal,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_sharp)),
        title: Text(
          'Various',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Egyption Muesum',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://images.memphistours.com/large/844737225_3%20(2)%20(1).jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => variousData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Cairo Tower',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://t3.ftcdn.net/jpg/04/45/15/80/360_F_445158045_VACua1PAliA9FFWwwJKZj10vn6wjviBF.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Baron palace',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://d1b3667xvzs6rz.cloudfront.net/2020/02/Baron-4-768x430.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'October war panorama',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/d/d4/Cairo_-_Heliopolis_-_1973_October_War_Panorama.JPG',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'Al-Muizz Street',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.egypttoday.com/siteimages/Larg/11082.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  ListTile(
                    title: const Text(
                      'The Hanging church',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      'Cairo, Egypt',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Image.network(
                    'https://www.egypttoursportal.com/images/2018/10/The-Interior-of-the-Hanging-Church-Egypt-Tours-Portal.jpg',
                    fit: BoxFit.cover,
                  ),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TripData()),
                              );
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Details',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 215,
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.favorite)),
                    ],
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

