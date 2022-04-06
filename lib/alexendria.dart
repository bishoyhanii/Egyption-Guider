import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tourguide/Model/city.dart';
import 'package:tourguide/Model/city_locations.dart';
import 'package:url_launcher/url_launcher.dart';

class Alexendria extends StatefulWidget {
  Alexendria();

  @override
  State<Alexendria> createState() => _AlexendriaState();
}

class _AlexendriaState extends State<Alexendria> {
  List<CityLocations> loactions = [
    CityLocations("Montazah Palace", "Alexendria, Egypt",
        "https://live.staticflickr.com/1920/45333758231_f7944487a7_b.jpg"),
    CityLocations("Citadel of Qaitbay", "Alexendria, Egypt",
        "https://www.gpsmycity.com/img/gd_sight/27395.jpg"),
    CityLocations("pompey's pillar", "Alexendria, Egypt",
        "https://o-ktravel.com/uploads/pages/slider/f7172ccfdeb9ed6361a00942bf722289.jpg"),
    CityLocations("Library of Alexandria", "Alexendria, Egypt",
        "https://en.wataninet.com/wp-content/uploads/2017/09/bibalex_share.jpg"),
    CityLocations("Mursi Abu al-Abbas Mosque", "Alexendria, Egypt",
        "https://t3.ftcdn.net/jpg/02/04/89/32/360_F_204893249_peiTjanJC8NMdCKUYu4sH9YfAj4Wpo8U.jpg"),
    CityLocations("Roman Theater", "Alexendria, Egypt",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Colosseo_2008.jpg/1200px-Colosseo_2008.jpg"),
    CityLocations("Royal Jewelery Museum", "Alexendria, Egypt",
        "https://www.etltravel.com/wp-content/uploads/2012/04/modern-alexandria-5-1.jpg"),
    CityLocations("Black head temple", "Alexendria, Egypt",
        "https://www.urtrips.com/wp-content/uploads/2019/05/The-Black-Head-Temple-2.jpg"),
    CityLocations("Greco-Roman Museum", "Alexendria, Egypt",
        "https://upload.wikimedia.org/wikipedia/commons/3/3d/Fassade_des_griechisch-r%C3%B6mischen_Museums_in_Alexandria%2C_%C3%84gypten.jpg"),
    CityLocations("Marine Biology Museum", "Alexendria, Egypt",
        "https://taiwaneverything.cc/wp-content/uploads/2019/05/47-1.png"),
  ];

  List<CityModel> data = [
    CityModel(
        "Montazah Palace",
        "https://egyptianstreets.com/wp-content/uploads/2020/08/2216757121_28917bb576_c.jpg",
        "Al Mandarah Bahri, Montaza 2, Alexandria Governorate",
        "Al-Montazah Palace has a number of facilities that still exist, including the clock tower and the tea kiosk built in the Roman style, in which the king and his entourage used to have afternoon tea while discussing matters of governance, in addition to the cMontazah PalaceIt is an ancient palace built by Khedive Abbas Helmy II in 1892 as a summer home for him. The secret of the splendor of this palace lies in its location on a hill at a height of 14 feet. It covers an area of 370 acres with surrounding gardens, and its architecture combines the French and Ottoman Islamic styles.",
        'https://goo.gl/maps/kgy4GbWDqh73mgZa9',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Citadel of Qaitbay",
        "https://www.egypttoursportal.com/images/2018/07/Qaitbay-Citadel-Egypt-Tours-Portal.jpg",
        "As Sayalah Sharq, Qesm Al Gomrok, Alexandria Governorate",
        "Qaitbay Castle is one of the archaeological treasures that the city of Alexandria is proud of. It is located on the Mediterranean coast and is an open-air museum. It was established by Sultan Al-Ashraf Abu Al-Nasr Qaitbay Al-Mahmoudi in 1477 AD in the same place as the ancient lighthouse of Alexandria, one of the Seven Wonders of the Ancient World. It was destroyed by an earthquake, and this castle is considered one of the most important castles on the Mediterranean coast, so the rulers of Egypt have taken care of it throughout the ages",
        'https://goo.gl/maps/hNmgVe49Wh7EgaXE8',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Pompey's pillar",
        "https://www.etltravel.com/wp-content/uploads/2021/05/pompeys-pillar-alexandria-6.jpg",
        "At the intersection of Al-Amoud Street and Mandour Street (next to the Muslim burials in Al-Amoud) in the Karmouz area - Alexandria",
        "It is a column made of red granite stone up to 27 meters long and is one of the most famous monuments in Alexandria. The people called it the masts because it resembles the masts of ships, then it was later distorted into the masts",
        'https://goo.gl/maps/CE1V4sszcteofhwX7',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Library of Alexandria",
        "https://gate.ahram.org.eg/Media/News/2021/2/2/19_2021-637478622956805859-680.jpg",
        "Al Azaritah WA Ash Shatebi, Bab Sharqi, Alexandria Governorate",
        "It is considered a unique cultural and civilizational edifice, which was opened in its new form on October 17, 2002 in the presence of a number of heads of state. In 120 different languages, the library consists of ten floors, most of which are located under the surface of the water to protect its precious contents from the elements of the external environment",
        'https://goo.gl/maps/cp88ypKo1wUT2Xu98',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Mursi Abu al-Abbas Mosque",
        "https://upload.wikimedia.org/wikipedia/commons/1/18/INTERIOR_OF_ABU_ABBAS_AL-MURSI_MOSQUE_IN_ALEXANDRIA.jpg",
        "Qesm Al Gomrok, Alexandria Governorate",
        "It is the largest mosque in the city of Alexandria. It was founded in 1775 AD in memory of Imam Shihab al-Din Abu al-Abbas al-Ansari, who was born in Andalusia in 1219 AD and died in Alexandria. The mosque covers an area of 3,000 meters, and is characterized by a unique design that appears clearly on its huge pale yellow facade. It contains four shrines, one of which is for the Andalusian imam and the other three for his disciples.",
        'https://goo.gl/maps/jW9xiNDkMh9Watew6',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Roman Theater",
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/9AAD/production/_93679593_getty_palmyra.jpg",
        "Ismail Mahana Road، Kom Ad Dakah Gharb, Al Attarin, Alexandria Governorate",
        "Roman Theater	One of the oldest tourist places in Alexandria, as it was built in the fourth century AD and remained in use until the middle of the seventh century. The amphitheater was used in the Roman era to host concerts and in the Byzantine era as a meeting hall	The grandstand was designed in a U-shape and consists of 13 marble rows numbered with Greek letters and numbers, and a capacity for more than 600 spectators. In the past, those stands were topped by a roof to protect spectators from the sun and rain, and now only the ruins of the columns on which the roof was based.	https://g.page/RomanTheater?share",
        'https://g.page/RomanTheater?share',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Royal Jewelery Museum",
        "https://www.etltravel.com/wp-content/uploads/2021/11/royal-jewelry-museum-alexandria-059.jpg",
        "27 Ahmed Yehia, San Stefano, El Raml 1, Alexandria Governorate",
        "This museum houses the walls of the palace of Princess Fatima al-Zahra, one of the princesses of the Muhammad Ali family, built in 1919 in the European style and later converted into a museum that contains a rare collection of psychological jewelry that adorned the princesses of the ruling family, as well as many paintings, decorations and rare statues that date back for the nineteenth century.",
        'https://g.page/RoyalJewelryMuseum?share',
        "Alexendria, Egypt",'',''),
    CityModel(
        "black head temple",
        "https://img.youm7.com/large/201910120634573457.jpg",
        "Kom Ghorab, Old Cairo, Cairo Governorate",
        "The Black Head Temple was discovered in the al-Raas al-Sawda (black head) area in 1936 on the road to Abu Qir, northeast of Alexandria.The temple was built between the second and third centuries AD and has a staircase leading to a vestibule that includes four Ionic pillars.In the middle of the vestibule stands a statue for an exposed foot on a short pillar of marble which bears an inscription in Greek. Roman Knight Aazodorus had fallen and broken his foot and when he recovered, he built this temple to honor the goddess Isis.",
        'https://goo.gl/maps/sRFZoVKrdy2Bv5yA9',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Greco-Roman Museum",
        "https://amayei.nyc3.digitaloceanspaces.com/2018/12/ebc025f92e5863a32208e067b8bb29f0.jpg",
        "Al Mesallah Sharq, Al Attarin, Alexandria Governorate",
        "The Greco-Roman is a museum located in Alexandria, Egypt. It covers two eras that invaded Egypt, the Greek and the Roman. The museum contains antiquities of people that I found throughout the ages in and around Alexandria, and the museum covers a period from the third century BC to the third century AD. The facade of the museum is neo-classical and has an inscription of the word (MOYXEION), which means the word museum in Greek.",
        'https://goo.gl/maps/Pv4Y6YTExL4gBZPq6',
        "Alexendria, Egypt",'',''),
    CityModel(
        "Marine Biology Museum",
        "https://kenting.caesarpark.com.tw/uploads/travel/west/travel_sea_nmmba.jpg",
        "As Sayalah Sharq, Qesm Al Gomrok, Alexandria Governorate",
        "The Aquarium in Alexandria is a small museum that includes several types of fish and marine animals from the salty waters of the Mediterranean and the Red Sea. It also includes other types that live in fresh water, such as the Nile and Amazon rivers.",
        'https://goo.gl/maps/A1c1o5M61myzgDFr9',
        "Alexendria, Egypt",'',''),
  ];

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Alenendria',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: loactions.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (Context) => DataScreen(data[index])));
                  });
                },
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loactions[index].name,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          loactions[index].city,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.network(loactions[index].ImageUrl,
                            fit: BoxFit.cover),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    ),
  );
}

class DataScreen extends StatelessWidget {
  CityModel model;

  DataScreen(this.model);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp)),
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
                      child: Image.network(model.imageUrl,))
              ),
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
                      model.name,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(model.city,
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
                    Text(model.description,
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
                    Text(model.address,
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    Divider(
                      color: Colors.teal,
                    ),
                    Text('Location:'),
                    Center(
                      child: OutlinedButton.icon(
                        onPressed: () {
                          _launchURL();
                        },
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
      ),
    );
  }

  void _launchURL() async {
    if (!await launch(model.googleMapsUrl))
      throw 'Could not launch ${model.googleMapsUrl}';
  }
}
