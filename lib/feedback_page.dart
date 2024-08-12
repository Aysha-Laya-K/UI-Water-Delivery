import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedbackPage(),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Color(0xFF44575B),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), // Add this line to adjust the padding
        child: Center(
          child: EmojiFeedback(),
        ),
      ),
      backgroundColor: Color(0xFFF6FDFF),
    );
  }
}


class EmojiFeedback extends StatefulWidget {
  @override
  _EmojiFeedbackState createState() => _EmojiFeedbackState();
}

class _EmojiFeedbackState extends State<EmojiFeedback> {
  int selectedEmojiIndex = -1;

  final List<String> emojis = ['😍', '😄', '😐', '😞', '😥'];
  final List<String> labels = ['Excellent', 'Good', 'Average', 'Poor', 'Very Poor'];
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Feedback',
              style: TextStyle(
                color: Color(0xFF44575B),
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/images/mailbox.png',
              width: 150,
              height: 150,
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          width: 350,
          height: 510,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFCCD7DA),
                width: 3,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 16, 8),
                  child: Text(
                    'Your Feedback helps us to Improve',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Color(0xFF44575B)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Please let us know your experience',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF44575B)),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(emojis.length, (index) {
                    return Row(
                      children: [
                        EmojiButton(
                          emoji: emojis[index],
                          label: labels[index],
                          selected: selectedEmojiIndex == index,
                          onPressed: () {
                            setState(() {
                              if (selectedEmojiIndex == index) {
                                selectedEmojiIndex = -1;
                              } else {
                                selectedEmojiIndex = index;
                              }
                            });
                          },
                        ),
                        SizedBox(width: 10),
                      ],
                    );
                  }),
                ),
                SizedBox(height: 16),

                Container(
                  width: 310,
                  height: 220,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFF75DBFB),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Type your message below...',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF44575B),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: TextField(
                            controller: messageController,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                Container(
                  width: 310,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Set the border radius to curve all four corners to 20
                    gradient: LinearGradient(
                      colors: [Color(0xFF0663BF), Color(0xFF75DBFB)],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your logic to send feedback here
                      print('placing order...');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.transparent, backgroundColor: Colors.transparent,
                      elevation: 0,
                      padding: EdgeInsets.all(0),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 200,
                      height: 70,
                      child: Text(
                        'Send Feedback',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF6FDFF),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),




              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EmojiButton extends StatelessWidget {
  final String emoji;
  final String label;
  final bool selected;
  final Function onPressed;

  EmojiButton({required this.emoji, required this.label, required this.selected, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Column(
        children: [
          Text(
            emoji,
            style: TextStyle(fontSize: 30, color: selected ? Colors.blue : Colors.black),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: selected ? Colors.blue : Colors.black),
          ),
        ],
      ),
    );
  }
}
