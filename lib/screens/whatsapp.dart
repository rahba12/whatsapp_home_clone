import 'package:flutter/material.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({key}) : super(key: key);

  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade600,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cloud_circle,
              color: Colors.grey,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.grey,
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.grey,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_outlined,
              color: Colors.grey,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.grey,
            ),
            label: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        elevation: 0,
        title: TextButton(
          onPressed: () {},
          child: const Text(
            'Edit',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.blue,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          start: 15,
          end: 15,
          top: 7,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Chats',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              style: const TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade900,
                hintText: 'search',
                hintStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),

                // border: InputBorder.none,
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(
                    25,
                  )),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black12,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(
                    25,
                  )),
                  borderSide: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.black12,
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Broadcast Lists',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'New Group',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.backpack_rounded,
                color: Colors.grey,
                size: 20,
              ),
              label: const Text(
                'Archived',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChat(),
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 60, top: 10, bottom: 10),
                  child: Divider(
                    height: 3,
                    thickness: 1,
                    color: Colors.grey.shade800,
                  ),
                ),
                itemCount: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildChat() => Row(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(
              start: 8,
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'images/kajo.PNG',
              ),
              radius: 26,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'Michale ',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Text(
                    '3:50 pm',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Hi, you have been missed ? ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      );
}
