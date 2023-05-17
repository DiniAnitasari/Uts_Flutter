import 'package:flutter/material.dart';
import 'package:shop_app/widget/navbar_widget.dart';



class CakeryDetail extends StatelessWidget{
  final String assetPath;
  final String cookieprice;
  final String cookiename;

  const CakeryDetail({
    Key? key,
    required this.assetPath,
    required this.cookieprice,
    required this.cookiename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF545D68),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Pesan',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 24.0,
            color: const Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Text(
              'Kue',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Hero(
              tag: assetPath,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(assetPath),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Text(
              'Rp $cookieprice',
              style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF17532),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Text(
              cookiename,
              style: TextStyle(
                  color: const Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 24.0),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 52.0,
              child: Text(
                'Bolu atau kue bolu adalah kue berbahan dasar tepung, gula, dan telur. Kue bolu dan cake umumnya dimatangkan dengan cara dipanggang di dalam oven, walaupun ada juga bolu yang dikukus',
                maxLines: 4,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 16.0,
                  color: const Color(0xFFB4B8B9),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 100.0,
              height: 52.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                color: const Color(0xFFF17532),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}