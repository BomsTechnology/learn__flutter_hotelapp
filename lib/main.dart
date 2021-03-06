import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_app/calendar_page.dart';

void main() {
  runApp(const MyApp());
}

const d_green = Color(0xFF54D3C2);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [SearchSection(), HotelSection()],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.grey,
        iconSize: 25,
        onPressed: () {},
      ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite_outline_rounded),
          color: Colors.grey,
          iconSize: 25,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.place),
          color: Colors.grey,
          iconSize: 25,
          onPressed: () {},
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: Offset(0, 3)),
                  ],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'London',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none),
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ], borderRadius: BorderRadius.all(Radius.circular(25))),
                child: ElevatedButton(
                  child: Icon(
                    Icons.search,
                    size: 26,
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: d_green,
                      padding: EdgeInsets.all(10)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return CalendarPage();
                      },
                    ));
                  },
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 50,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Choose date',
                        style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '12 Dec - 22 Dec',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Number of Rooms',
                        style: GoogleFonts.nunito(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '1 Room - 2 Adults',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Boms Hotel',
      'place': 'Webkey London',
      'distance': 3,
      'review': 21,
      'picture': 'images_hotel/hotel1.jpg',
      'price': '100'
    },
    {
      'title': 'Chicago Star Hotel',
      'place': 'Webkey London',
      'distance': 2,
      'review': 36,
      'picture': 'images_hotel/hotel2.jpg',
      'price': '100'
    },
    {
      'title': 'Grand Royl Hotel',
      'place': 'Webkey London',
      'distance': 5,
      'review': 38,
      'picture': 'images_hotel/hotel3.jpg',
      'price': '100'
    },
    {
      'title': 'Missoke Hotel',
      'place': 'Webkey London',
      'distance': 9,
      'review': 12,
      'picture': 'images_hotel/hotel4.jpg',
      'price': '100'
    },
    {
      'title': 'Hotel de Sirene',
      'place': 'Webkey London',
      'distance': 2,
      'review': 36,
      'picture': 'images_hotel/hotel5.jpg',
      'price': '100'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '550 hotels found',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Row(children: [
                    Text(
                      'Filters',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.filter_list_outlined),
                      color: d_green,
                      iconSize: 25,
                      onPressed: () {},
                    ),
                  ])
                ]),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          )
        ],
      ),
    );
  }
}

class HotelCard extends StatelessWidget {
  final Map hotelData;

  HotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(children: [
        Container(
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                  image: AssetImage(
                    hotelData['picture'],
                  ),
                  fit: BoxFit.cover)),
          child: Stack(
            children: [
              Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.favorite_outline_rounded,
                      color: d_green,
                      size: 20,
                    ),
                  ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              hotelData['title'],
              style:
                  GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            Text(
              '\$' + hotelData['price'],
              style:
                  GoogleFonts.nunito(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400),
                ),
                Row(children: [
                  Icon(
                    Icons.place,
                    color: d_green,
                    size: 14.0,
                  ),
                  Text(
                    hotelData['distance'].toString() + ' km to city',
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400),
                  )
                ]),
              ],
            ),
            Text(
              '/per night',
              style: GoogleFonts.nunito(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
          child: Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: d_green,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_border,
                    color: d_green,
                    size: 14,
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                hotelData['review'].toString() + ' reviews',
                style: GoogleFonts.nunito(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ]),
    );
  }
}
