import 'dart:async';

import 'package:camera/camera.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:beamer/beamer.dart';
import 'package:restaurant_experts/Screens/Start_screen/Start_screen.dart';
import 'package:restaurant_experts/Screens/camera/camera.dart';
import 'package:restaurant_experts/sharedpreference/sharedpreference.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../../language/translations_delegate_base.dart';

import 'main_ViewModel.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
late final firstCamera;
void main()async {

SharedPreferencesService().setBool('booll',false);


  runApp(MultiProvider(providers: [

    ChangeNotifierProvider(create: (con) => mainViewModel()),

  ], child:DevicePreview(builder: (BuildContext context)=>
   MyApp()),
   ));
}
//
class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {mainViewModel? vmProvider;mainViewModel? vmProvider1;
@override
void initState() {
  vmProvider = Provider.of<mainViewModel>(context, listen: false);
  super.initState();
}
final routerDelegate = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      '/': (context, state, data) => HomePage(title: '',),
      '/StartScreen': (context, state, data) => Start_Screen(),
    },
  ),
);
@override
Widget build(BuildContext context) {
  vmProvider1 = Provider.of<mainViewModel>(context, listen: true);
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints){

      return  ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt:true,
        splitScreenMode:true,
        child: MaterialApp.router(debugShowCheckedModeBanner: false,
            routerDelegate: routerDelegate,
            routeInformationParser: BeamerParser(),
            backButtonDispatcher:
            BeamerBackButtonDispatcher(delegate: routerDelegate),
          title: 'Restaurant Experts',
          theme: ThemeData(
        
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
            useMaterial3: true,
          ),
        
            localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            TranslationBaseDelegate()
            // Add more delegates if necessary
          ],
          supportedLocales: const [
            Locale('ar', ''), // Arabic
            Locale('en', ''), // Spanish
            // Add more supported locales if necessary
          ] ,locale:SharedPreferencesService().getBool('loc')==null? null :Locale(SharedPreferencesService().getString('loc1') as String),
          localeResolutionCallback: (curr, supp) {
            if (curr != null) {
              for (Locale locale in supp) {
        
                if (locale.languageCode == curr.languageCode) {
                  vmProvider1!.lang_S(curr.languageCode.toString());
                  return curr;
                }
              }
            }
            return supp.first;
          }
            ),
      );}


  );
}
}
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  mainViewModel? vmProvider;
  mainViewModel? vmProvider1;
  bool k=false;
  @override
  void initState() {
    vmProvider = Provider.of<mainViewModel>(context, listen: false);
    vmProvider!.timer(context,'StartScreen');
    k=false;  SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }
  @override
  void dispose() {
    // Release screen orientation lock when interface breaks
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,

    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {vmProvider1 = Provider.of<mainViewModel>(context, listen: true);

  return WillPopScope(onWillPop: () async{Timer timer;
  if(k==false){ final snackBar = SnackBar(
    content: Text('اضغط مره اخرى للخروج'),
    duration: Duration(seconds: 4),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
  k=true;setState(() {

  });
  timer = Timer.periodic(Duration(seconds:3), (timer)  {

    k=false;
    timer.cancel();
    // Check some condition to stop the timer

  });
  }else{


    SystemNavigator.pop();



  }



  return false; },
    child: SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints)=>
            Scaffold(
              body: Container(decoration: BoxDecoration(gradient:LinearGradient(colors: [
                Colors.white,
                Colors.white,

                Colors.white,
              ] ,stops: [ 0.4,0.7,0.8],) ),child:Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
//AF8260/156e28/804c48/c3a59f/d7e3ec
                  Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height/20),color: Color(0xffAF8260)) ,height:MediaQuery.of(context).size.height/3,width: MediaQuery.of(context).size.width/1.5 ,
                      child: Padding(
                        padding: EdgeInsets.all(MediaQuery.of(context).size.height/20),
                        child: Image.asset('assets/images/img_3.png'),
                      )),



                  Padding(
                    padding:  EdgeInsets.only(left: 20.w,right: 20.w),
                    child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(''),



                      ],
                    )),
                  ) ],
              )),

            ),
      ),
    ),
  );
  }
}