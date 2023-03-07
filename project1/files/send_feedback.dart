import 'package:flutter/material.dart';

class SendFeedbackPage extends StatefulWidget {
  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  double value = 50;
  String status = 'idle';
  Color statusColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Column(
              children: [
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.red[700],
                    inactiveTrackColor: Colors.red[100],
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 4.0,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    thumbColor: Colors.purple,
                    overlayColor: Colors.red.withAlpha(32),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                    tickMarkShape: RoundSliderTickMarkShape(),
                    activeTickMarkColor: Colors.red[700],
                    inactiveTickMarkColor: Colors.red[100],
                    valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                    valueIndicatorColor: Colors.redAccent,
                    valueIndicatorTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  child: Slider(
                    value: value,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    activeColor: Colors.red,
                    inactiveColor: Colors.red.shade100,
                    label: value.round().toString(),
                    // onChanged: (value) => setState(() => this.value = value),
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                        this.status = 'active (${value.round()})';
                        this.statusColor = Colors.indigo.shade900;
                      });
                    },
                    onChangeStart: (value) {
                      setState(() {
                        status = 'start';
                        statusColor = Colors.indigo.shade500;
                      });
                    },
                    onChangeEnd: (value) {
                      setState(() {
                        status = 'end';
                        statusColor = Colors.black;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 100,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Status: $status ',
                        style: TextStyle(color: statusColor, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container()
          ],
        ),
      ),
    );
  }
}
