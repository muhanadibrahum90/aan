import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'features/onboarding/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

    // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);


  //   await FirebaseMessaging.instance.requestPermission(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );

  // await _initLocalNotifications();

  // FirebaseMessaging.onMessage.listen(_showLocalNotification);

  // await CacheManager.init();
  // await CacheManager.clearOldSeenPosts();

  // await _saveFcmToken();

  // final uid = FirebaseAuth.instance.currentUser?.uid;
  // if (uid != null) {
  //   FirebaseFirestore.instance.collection('users').doc(uid).update({
  //     'lastSeen': FieldValue.serverTimestamp(),
  //   });
  // }


  runApp(const AanApp());
}

class AanApp extends StatelessWidget {
  const AanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aan',
      locale: const Locale('ar'),
      supportedLocales: const [Locale('ar')],
      home: const WelcomePage(), 
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0E17),
      ),
    );
  }
}