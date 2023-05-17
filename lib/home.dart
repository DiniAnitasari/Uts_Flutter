import 'package:flutter/material.dart';
import 'package:shop_app/screen/cakery_page.dart';
import 'package:shop_app/widget/navbar_widget.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

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
          onPressed:() {},
          ),
          title: const Text(
            'Dini Cakery',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 20.0,
            color: Color(0xFF545D68),
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
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          SizedBox(height: 8.0),
          Text('Menu',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: const Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: const EdgeInsets.only(right: 24),
              unselectedLabelColor: const Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Cake Box',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Cake Slice',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                ),
                Tab(
                  child: Text('Chiffon',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 20.0,
                      )),
                )
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height - 160.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: const [
                CakeryPage(),
                CakeryPage(),
                CakeryPage(),
              ],
            ),
          )
        ],
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.fastfood),
      ),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
  }