import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:quiver/async.dart';
import 'package:flutter_duration_picker/flutter_duration_picker.dart';

void main() {runApp(TabBarDemo());}

class MyVar {
  static Duration resultingDuration;
  static int times;
  static BuildContext myContext;
}

class TabBarDemo extends StatelessWidget {

  Future<Duration> showMyDialog(BuildContext context, String category) async {
    if(category.compareTo('Strength') == 0) {
      return await showDialog(context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white.withOpacity(0.8),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              title: const Text('Select protocol', style: TextStyle(fontSize: 30),),
              children: <Widget>[
                SimpleDialogOption(
                    child: const Text('RBO(Ramping&BackOff)', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      MyVar.times=-1;
                      Navigator.pop(MyVar.myContext);
                      // Use it as a dialog, passing in an optional initial time
                      // and returning a promise that resolves to the duration
                      // chosen when the dialog is accepted. Null when cancelled.
                    }
                ),
                SimpleDialogOption(
                    child: const Text('3x3 (tot.reps: 9)', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      MyVar.times=3;
                      Navigator.pop(MyVar.myContext);
                      // Use it as a dialog, passing in an optional initial time
                      // and returning a promise that resolves to the duration
                      // chosen when the dialog is accepted. Null when cancelled.
                    }
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=4;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: const Text('4x4 (tot.reps: 16)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=5;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('5x5 (tot.reps: 25)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=5;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('5x2+1xMax (tot.reps: >10)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=6;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('6x3 (tot.reps: 18)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=6;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('6x4 (tot.reps: 24)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=7;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('7x3 (tot.reps: 21)', style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          }
      );
    }
    else if(category.compareTo('Power') == 0) {
      return await showDialog(context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white.withOpacity(0.8),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              title: const Text('Select protocol', style: TextStyle(fontSize: 30),),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=5;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: const Text('5x5 (tot.reps: 25)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=6;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('6x6 (tot.reps: 36)', style: TextStyle(fontSize: 20)),
                )
              ],
            );
          }
      );
    }
    else if(category.compareTo('Hypertrophy') == 0) {
      return await showDialog(context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white.withOpacity(0.8),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              title: const Text('Select protocol', style: TextStyle(fontSize: 30),),
              children: <Widget>[
                SimpleDialogOption(
                    child: const Text('3x8 (tot.reps: 24)', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      MyVar.times=3;
                      Navigator.pop(MyVar.myContext);
                      // Use it as a dialog, passing in an optional initial time
                      // and returning a promise that resolves to the duration
                      // chosen when the dialog is accepted. Null when cancelled.
                    }
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=3;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: const Text('3x12 (tot.reps: 36)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=3;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('3x15 (tot.reps: 45)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=4;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('4x8 (tot.reps: 32)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=4;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('4x10 (tot.reps: 40)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=4;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('4x12 (tot.reps: 48)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=5;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('5x8 (tot.reps: 40)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=5;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('5x10 (tot.reps: 50)', style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          }
      );
    }
    else if(category.compareTo('Resistance') == 0) {
      return await showDialog(context: context,
          builder: (context) {
            return SimpleDialog(
              backgroundColor: Colors.white.withOpacity(0.8),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              title: const Text('Select protocol', style: TextStyle(fontSize: 30),),
              children: <Widget>[
                SimpleDialogOption(
                    child: const Text('8x8 (tot.reps: 64)', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      MyVar.times=8;
                      Navigator.pop(MyVar.myContext);
                      // Use it as a dialog, passing in an optional initial time
                      // and returning a promise that resolves to the duration
                      // chosen when the dialog is accepted. Null when cancelled.
                    }
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=10;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: const Text('German Volume Training - 10x10 (tot.reps: 100)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=12;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('12x12 (tot.reps: 144)', style: TextStyle(fontSize: 20)),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    MyVar.times=15;
                    Navigator.pop(MyVar.myContext);
                  },
                  child: Text('15x15 (tot.reps: 225)', style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          }
      );
    }
    else return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black),
              headline2: TextStyle(color: Colors.black),
              bodyText2: TextStyle(color: Colors.black)
          ),
          primarySwatch: Colors.deepOrange,
          dialogBackgroundColor: Colors.black,
          backgroundColor: Colors.green,
          accentColor: Colors.deepOrange
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.5),
          appBar: AppBar(
            backgroundColor: Colors.black12.withOpacity(0.5),
            bottom: TabBar(
              labelColor: Colors.deepOrange,
              tabs: [
                Tab(icon: Text('PROTOCOLS', style: TextStyle(fontSize: 15))),
                Tab(icon: Text('PROGRAMS', style: TextStyle(fontSize: 15))),
                Tab(icon: Text('CHALLENGES', style: TextStyle(fontSize: 15))),
              ],
            ),
            title: Text('WORKOUT'),
          ),
          body: Builder(
            builder: (context) {
              MyVar.myContext=context;
              return TabBarView(
                children: [
                  ListView(
                      padding: EdgeInsets.all(0.1),
                      children: <Widget>[
                        Card(
                            color: Colors.green.withOpacity(0.8),
                            child: SizedBox(
                                height: 50,
                                child: RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () async {
                                    MyVar.times=0;
                                    await showMyDialog(context, 'Strength');
                                    if(MyVar.times != 0) {
                                      MyVar.resultingDuration = await showDurationPicker(context: context,
                                          initialTime: new Duration(minutes: 2, seconds: 30));
                                    }
                                    if(MyVar.resultingDuration != null) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimer()));
                                    }
                                  },
                                  child: Text('STRENGTH',
                                      style: TextStyle(fontSize: 18, color: Colors.black)
                                  ),
                                )
                            )
                        ),
                        Card(
                            color: Colors.green.withOpacity(0.8),
                            child: SizedBox(
                                height: 50,
                                child: RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () async {
                                    MyVar.times=0;
                                    await showMyDialog(context, 'Power');
                                    if(MyVar.times > 0) {
                                      MyVar.resultingDuration = await showDurationPicker(context: context,
                                          initialTime: new Duration(minutes: 2));
                                    }
                                    if(MyVar.resultingDuration != null) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimer()));
                                    }
                                  },
                                  child: Text('POWER',
                                      style: TextStyle(fontSize: 18, color: Colors.black)
                                  ),
                                )
                            )
                        ),
                        Card(
                            color: Colors.green.withOpacity(0.8),
                            child: SizedBox(
                                height: 50,
                                child: RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () async {
                                    MyVar.times=0;
                                    await showMyDialog(context, 'Hypertrophy');
                                    if(MyVar.times > 0) {
                                      MyVar.resultingDuration = await showDurationPicker(context: context,
                                          initialTime: new Duration(minutes: 1));
                                    }
                                    if(MyVar.resultingDuration != null) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimer()));
                                    }
                                  },
                                  child: Text('HYPERTROPHY',
                                      style: TextStyle(fontSize: 18, color: Colors.black)
                                  ),
                                )
                            )
                        ),
                        Card(
                            color: Colors.green.withOpacity(0.8),
                            child: SizedBox(
                                height: 50,
                                child: RaisedButton(
                                  color: Colors.transparent,
                                  onPressed: () async {
                                    MyVar.times=0;
                                    await showMyDialog(context, 'Resistance');
                                    if(MyVar.times > 0) {
                                      MyVar.resultingDuration = await showDurationPicker(context: context,
                                          initialTime: new Duration(seconds: 30));
                                    }
                                    if(MyVar.resultingDuration != null) {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyTimer()));
                                    }
                                  },
                                  child: Text('RESISTANCE',
                                      style: TextStyle(fontSize: 18, color: Colors.black)
                                  ),
                                )
                            )
                        ),
                      ]
                  ),
                  Text('Coming Soon',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                      textAlign: TextAlign.center),
                  Text('Coming Soon',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                      textAlign: TextAlign.center),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyTimer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCountDownTimer(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.red,
      ),
    );
  }
}

class MyCountDownTimer extends StatefulWidget {
  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<MyCountDownTimer> with TickerProviderStateMixin {
  AnimationController controller;
  MyCountdownPlayer count;

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${duration.inMinutes}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: MyVar.resultingDuration);
    count = new MyCountdownPlayer(MyVar.resultingDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.5),
      body: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    color: Colors.red.withOpacity(0.5),
                    height:
                    controller.value * MediaQuery.of(context).size.height,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Align(
                          alignment: FractionalOffset.center,
                          child: AspectRatio(
                            aspectRatio: 2.0,
                            child: Stack(
                              children: <Widget>[
                                Align(
                                  alignment: FractionalOffset.center,
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Count Down Timer",
                                        style: TextStyle(
                                            fontSize: 30.0,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        timerString,
                                        style: TextStyle(
                                            fontSize: 112.0,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) {
                            return FloatingActionButton.extended(
                                onPressed: () {
                                  if(MyVar.times == 0 && !count.player.isPlaying.value) {
                                    Navigator.pop(MyVar.myContext );
                                  }
                                  else if(count.player.isPlaying.value) {
                                    count.player.stop();

                                  }
                                  else if (controller.isAnimating && count.timer.isRunning) {
                                    count.stopTimer();
                                    controller.stop();
                                  }
                                  else {
                                    count.resume(count.rem == null ? count.initTime : count.rem);
                                    controller.reverse(from: controller.value == 0.0
                                        ? 1.0 : controller.value);
                                  }
                                },
                                icon: Icon(controller.isAnimating
                                    ? Icons.pause
                                    : Icons.play_arrow),
                                label: Text((controller.isAnimating)
                                    ? "Pause" : "Play"));
                          }),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}

class MyCountdownPlayer {
  CountdownTimer timer;
  AssetsAudioPlayer player;
  Duration rem;
  Duration initTime;

  MyCountdownPlayer(Duration param) {
    initTime = param;
    player = AssetsAudioPlayer();
  }

  void resume(Duration init) {
    timer = new CountdownTimer(init, new Duration(seconds: 0));
    timer.listen(null).onData((duration){
      rem = init - duration.elapsed;
    });
    timer.listen(null).onDone((){
      print(rem);
      if(rem.inMilliseconds <= 0100) {
        player.open(Audio('assets/audios/alarm.mp3'), autoStart: true, showNotification: true);
        MyVar.times--;
        rem = null;
        timer.cancel();
      }
    });
  }
  void stopTimer() {
    timer.cancel();
  }
}