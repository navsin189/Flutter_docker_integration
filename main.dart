import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

main() {
  runApp(MaterialApp(
    home: App(),
    debugShowCheckedModeBanner: false,
  ));
}

var candid, ask, leap;

var first, command, option, expose, volume, cname, pic, display;
var changed, boddy, pen;
User(first, command, option, expose, volume, cname, pic) async {
  String url =
      "http://13.126.79.50/cgi-bin/list.py?main=${first}&command=${command}&options=${option}&patting=${expose}&volume=${volume}&con_name=${cname}&image_name=${pic}";
  var docker = await http.get(url);
  boddy = docker.body;
  return docker.body;
}

Run(dring, leap) async {
  //leap = "run";
  String url = "http://13.127.171.164/cgi-bin/usool.py?x=${dring}&y=${leap}";
  var trail = await http.get(url);
  String URL = "http://13.127.171.164/data.html";
  var html = await http.get(URL);
  print(html.body);
  boddy = html.body;
  return html.body;
}

Manifest(ip, user, pasw) async {
  String url =
      "http://13.127.171.164/cgi-bin/flutter.py?ip=${ip}&user=${user}&pass=${pasw}";
  var html = await http.get(url);
  print(html.statusCode);
  return html.body;
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('A-Core'),
      ),
      /*bottomNavigationBar: BottomAppBar(
        //color: Colors.black87,
        child: Container(
          color: Colors.black87,
          height: 30,
          width: double.infinity,
        ),
      ),*/
      resizeToAvoidBottomPadding: true,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              child: DrawerHeader(
                margin: const EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.only(left: 0, top: 10),
                child: Text(
                  'Tech \n Enzymes',
                  style: TextStyle(color: Colors.teal.shade200, fontSize: 25),
                ),
                decoration: BoxDecoration(color: Colors.lightBlue),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.black87,
                height: 300,
                width: double.infinity,
                child: FlatButton(
                    color: Colors.white,
                    child: Image.asset('assets/images/ansi.jpeg'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Ansible()),
                      );
                    }),
              ),
              Container(
                  color: Colors.white,
                  child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Cont()),
                        );
                      },
                      child: Image.asset('assets/images/docker.jpeg')),
                  width: double.infinity,
                  height: 300)
            ],
          ),
        ),
      ),
    );
  }
}

//ansible second page
class Ansible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Ansible'),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text(
                      "Enter the Ip Address, username, and password on which you want to run playbook or command.\n Thank You",
                      style: TextStyle(
                        color: Colors.teal,
                      )),
                  width: double.infinity,
                  color: Colors.black87,
                ),
                TextField(
                  cursorColor: Colors.green.shade700,
                  style: TextStyle(
                      color: Colors.green.shade700,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                  autocorrect: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_comment),
                      labelText: "Ip Address",
                      helperText: "Enter Ip Address",
                      contentPadding:
                          EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                  onChanged: (val) {
                    changed = val;
                  },
                ),
                TextField(
                  cursorColor: Colors.green.shade700,
                  style: TextStyle(
                      color: Colors.green.shade700,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                  autocorrect: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_comment),
                      labelText: "Login Username",
                      helperText: "Enter username",
                      contentPadding:
                          EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                  onChanged: (val) {
                    ask = val;
                  },
                ),
                TextField(
                  cursorColor: Colors.green.shade700,
                  style: TextStyle(
                      color: Colors.green.shade700,
                      fontStyle: FontStyle.italic,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                  autocorrect: false,
                  decoration: InputDecoration(
                      icon: Icon(Icons.add_comment),
                      labelText: "Login password",
                      helperText: "Enter password",
                      contentPadding:
                          EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                  onChanged: (val) {
                    pen = val;
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    Manifest(changed, ask, pen);
                    print(changed + "" + ask + "" + pen);
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ));
  }
} // ansible secind page ends

//docker seconf page starts
class Cont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void showToast(String msg, {int duration, int gravity}) {
      Toast.show(msg, context, duration: duration, gravity: gravity);
    }

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Docker'),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 2, right: 15),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: false,
                      cursorColor: Colors.green.shade700,
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          icon: Icon(Icons.add_comment),
                          labelText: 'centos:7/httpd/python/mysql',
                          helperText: "Enter Image Name",
                          helperStyle: TextStyle(color: Colors.blue),
                          contentPadding: EdgeInsets.only(
                            left: 8,
                            bottom: 3,
                          )),
                      onChanged: (text) {
                        // print(text);
                        candid = text;
                      },
                    ),
                    RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        print(candid);
                        leap = "run";
                        Run(candid, leap);

                        showToast('Launched', gravity: Toast.CENTER);
                      },
                      child: Text('Run'),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, left: 20, bottom: 20, right: 13),
                      width: 100,
                      height: 100,
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () {
                          leap = "images";
                          Run(candid, leap);
                        },
                        child: Text('images'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 20, left: 10, bottom: 20, right: 13),
                      width: 100,
                      height: 100,
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () {
                          leap = "ps";
                          Run(candid, leap);
                        },
                        child: Text('Running\nContainers'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                      child: RaisedButton(
                        color: Colors.teal,
                        onPressed: () {
                          leap = "psa";
                          Run(candid, leap);
                        },
                        child: Text('All\nContainers'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        autocorrect: false,
                        cursorColor: Colors.green.shade700,
                        style: TextStyle(
                            color: Colors.green.shade700,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                        decoration: InputDecoration(
                            //counter: SizedBox.fromSize(size: Size.zero),
                            icon: Icon(Icons.add_comment),
                            helperText: "Enter Container Name",
                            helperStyle: TextStyle(color: Colors.blue),
                            contentPadding: EdgeInsets.only(
                              left: 8,
                              bottom: 3,
                            )),
                        onChanged: (tex) {
                          candid = tex;
                        },
                      ),
                      RaisedButton(
                          color: Colors.teal,
                          child: Text('Start'),
                          onPressed: () {
                            print(candid);
                            leap = "start";
                            Run(candid, leap);
                          }),
                    ],
                  )),
              Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: false,
                      cursorColor: Colors.green.shade700,
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          icon: Icon(Icons.add_comment),
                          helperText: "Enter Container Name",
                          helperStyle: TextStyle(color: Colors.blue),
                          contentPadding: EdgeInsets.only(
                            left: 8,
                            bottom: 3,
                          )),
                      onChanged: (tex) {
                        ask = tex;
                      },
                    ),
                    RaisedButton(
                        color: Colors.teal,
                        child: Text('Stop'),
                        onPressed: () {
                          print(ask);
                          leap = "stop";
                          Run(ask, leap);
                        })
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: false,
                      cursorColor: Colors.green.shade700,
                      style: TextStyle(
                          color: Colors.green.shade700,
                          fontStyle: FontStyle.italic,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                      decoration: InputDecoration(
                          icon: Icon(Icons.add_comment),
                          helperText: "Enter Container Name",
                          helperStyle: TextStyle(color: Colors.blue),
                          contentPadding: EdgeInsets.only(
                            left: 8,
                            bottom: 3,
                          )),
                      onChanged: (te) {
                        candid = te;
                      },
                    ),
                    RaisedButton(
                      color: Colors.teal,
                      onPressed: () {
                        leap = "exec";
                        Run(candid, leap);
                      },
                      child: Text('Execute'),
                    )
                  ],
                ),
              ),
              Container(
                child: Text(
                  '${boddy}',
                  style: TextStyle(color: Colors.green),
                ),
                width: double.infinity,
                height: 600,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (BuildContext context) => Cont()));
            },
            backgroundColor: Colors.transparent,
            heroTag: 0,
            child: Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Docker()),
              );
            },
            heroTag: 1,
            backgroundColor: Colors.transparent,
            child: Icon(
              Icons.skip_next,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
} //docker secondpage ends here

//docker third page starts
class Docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Docker'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "enter Docker",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val) {
                  first = val;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "run/exec/start/stop",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val1) {
                  command = val1;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "pass the argument e.g. -dit/-t/-it/",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val2) {
                  option = val2;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "enter for patting",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val3) {
                  expose = val3;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "attach volume",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val4) {
                  volume = val4;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "Unique name for Container",
                    contentPadding:
                        EdgeInsets.only(left: 8, bottom: 3, top: 3)),
                onChanged: (val5) {
                  cname = val5;
                },
              ),
              TextField(
                cursorColor: Colors.green.shade700,
                style: TextStyle(
                    color: Colors.green.shade700,
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
                autocorrect: false,
                decoration: InputDecoration(
                    icon: Icon(Icons.add_comment),
                    helperText: "Image Name",
                    contentPadding: EdgeInsets.only(
                      left: 8,
                      bottom: 3,
                    )),
                onChanged: (val6) {
                  pic = val6;
                },
              ),
              Container(
                margin: EdgeInsets.only(left: 37, top: 6, bottom: 5),
                child: Text(
                  '#Note-If any of field you don\'t want to use, please provide a space in those field, will be fixed in future updates.',
                  style: TextStyle(color: Colors.teal, fontSize: 15),
                ),
                color: Colors.white,
              ),
              RaisedButton(
                  color: Colors.black87,
                  child: Icon(
                    Icons.check,
                    color: Colors.teal,
                    size: 25,
                  ),
                  onPressed: () {
                    print(first +
                        "" +
                        command +
                        "" +
                        option +
                        "" +
                        "" +
                        expose +
                        "" +
                        volume +
                        "" +
                        cname +
                        "" +
                        pic);
                    User(first, command, option, expose, volume, cname, pic);
                    SnackBar(
                        content: Text(
                      'Container Launched',
                      style: TextStyle(color: Colors.teal),
                    ));
                  }),
              Container(
                child: Text('${boddy}'),
                width: double.infinity,
                height: 600,
              )
            ],
          ),
        ),
      ),
    );
  }
}
//docker third page ends here
