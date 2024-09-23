import 'package:e_commerce_app/screens/models/chat_model.dart';
import 'package:e_commerce_app/screens/widgets/chat_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:uicons/uicons.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatModel> data = [
      ChatModel(
          imageUrl: 'assets/images/download 2.jpg',
          name: 'Shane Martinez',
          lastMessage:
              'On my way home but I needed to stop by the book store toOn my way home but I needed to stop by the book store to...',
          time: '5 min',
          unreadCount: 1,
          isOnline: true),
      ChatModel(
          imageUrl: 'assets/images/download 2.jpg',
          name: 'Katie Keller',
          lastMessage: 'I\'m watching Friends , what are you doing?',
          time: '15 min',
          unreadCount: 0,
          isOnline: false),
      ChatModel(
          imageUrl: 'assets/images/download 3.jpg',
          name: 'Stephan Mann',
          lastMessage:
              'I\'m morking now , I\'m making a deposit for our company.',
          time: '1 hour',
          unreadCount: 0,
          isOnline: true),
      ChatModel(
          imageUrl: 'assets/images/download 4.jpg',
          name: 'Shane Martinez',
          lastMessage:
              'I\'m really find the subject very interesting. I\'m enjoying all my find the subject very interesting subject very interesting',
          time: '5 hour',
          unreadCount: 0,
          isOnline: false),
      ChatModel(
          imageUrl: 'assets/images/download 5.jpg',
          name: 'Melvin Pratt',
          lastMessage:
              'Great seeing you. I have to go now. i\'ll take to you later.',
          time: '5 hour',
          unreadCount: 0,
          isOnline: false),
    ];

    return SafeArea(
      child: PersistentTabView(
        context,
        screens: _buildScreens(data),
        items: _navBarsItems(),
        confineToSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        hideNavigationBarWhenKeyboardAppears: true,
        popBehaviorOnSelectedNavBarItemPress: PopBehavior.once,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        isVisible: true,
        animationSettings: const NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
        ),
        onItemSelected: (value) {},
        padding: const EdgeInsets.only(bottom: 13),
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        navBarStyle: NavBarStyle.style5,
      ),
    );
  }

  List<Widget> _buildScreens(List<ChatModel> data) {
    return [
      ChatListScreen(data: data),
      const Placeholder(), // User screen
      const Placeholder(), // Settings screen
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const FaIcon(FontAwesomeIcons.message),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black, // Customize dot color
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(UIcons.regularRounded.user),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black, // Customize dot color
      ),
      PersistentBottomNavBarItem(
        icon: FaIcon(UIcons.regularRounded.settings),
        activeColorPrimary: Colors.black,
        inactiveColorPrimary: Colors.grey,
        activeColorSecondary: Colors.black, // Customize dot color
      ),
    ];
  }
}

class ChatListScreen extends StatelessWidget {
  final List<ChatModel> data;
  const ChatListScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFF62CF),
        shape: const CircleBorder(),
        onPressed: () {},
        child: FaIcon(
          UIcons.regularRounded.plus,
          size: 15,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon:
                      const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 25),
                ),
              ],
            ),
            const Text(
              'Messages',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 45),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) =>
                    ChatItem(chatModel: data[index]),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
