import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool _isPlaying = false;
  void changeStatus(){
    _isPlaying = !_isPlaying;
    setState(() {
      
    });
  }
  @override
Widget build(BuildContext context, ) {
  var sliderValue = 0.5;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
         const  Color.fromRGBO(187, 63, 221, 1);
const Color.fromRGBO(251, 109, 169, 1);
          ],
          begin: Alignment.topCenter,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Transform.translate(
            offset: const Offset(-15, 0),
            child: InkWell(
              highlightColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IconButton(icon: Icon(CupertinoIcons.chevron_down),onPressed: (){},)
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Hero(
                  tag: 'music-image',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/image/i_love_you_Jesus.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    children: [
                    const   Column(
                        children: [
                           Text(
                           'I love you Jesus',
                            style:  TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                           Text(
                            'Ikponmwosa Marvel',
                            style: const TextStyle(
                              color: Color(0xffa7a7a7),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      const Expanded(child: SizedBox()),
                      IconButton(
                        icon:const Icon(CupertinoIcons.heart),
                        onPressed: () {},
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                 Column(
                          children: [
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Colors.white,
                                  inactiveTrackColor:
                                      Colors.white.withOpacity(0.117),
                                  thumbColor: Colors.white,
                                  trackHeight: 4,
                                  overlayShape: SliderComponentShape.noOverlay,
                                ),
                                child: Slider(
                                  value: sliderValue,
                                  min: 0,
                                  max: 1,
                                  onChanged: (val) {
                                    sliderValue - val;
                                    
                                  },
                      
                                )),
                            Row(
                              children: [
                                Text(
                                 '00:00' ,             style: TextStyle(
                                    color:Color(0xffa7a7a7),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                const Expanded(child: SizedBox()),
                                Text(
                                 '3:00'     ,                             style: TextStyle(
                                    color: Color(0xffa7a7a7),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w300,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed:(){},
                          iconSize: 80,
                          color: Colors.white,
                          icon: Icon(
                   
                                Icons.shuffle,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed: (){},
                          iconSize: 80,
                          color: Colors.white,
                          icon: Icon(
Icons.skip_previous_sharp                          
                               
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed: changeStatus,
                          iconSize: 80,
                          color: Colors.white,
                          icon: Icon(
                             _isPlaying  ? Icons.play_arrow
                                : Icons.pause,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed: (){},
                          iconSize: 80,
                          color:Colors.white,
                          icon: Icon(
                        
                               Icons.skip_next_sharp,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: IconButton(
                          onPressed:(){},
                          iconSize: 80,
                          color: Colors.white,
                          icon: Icon(
                          
                                 CupertinoIcons.loop,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:IconButton(
                          onPressed: (){},
                          iconSize: 80,
                          color: Colors.white,
                          icon: Icon(
                           
                                Icons.connected_tv_outlined,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child:IconButton(
                          onPressed: (){},
                          iconSize: 80,
                          color:Colors.white,
                          icon: Icon(
                          
                                Icons.playlist_add,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
