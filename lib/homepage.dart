import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();

  String userInput = "";

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {}); // rebuild when focus changes
    });
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hasFocus = _focusNode.hasFocus;
    final hasText = _textController.text.isNotEmpty;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(userInput, style: const TextStyle(fontSize: 25.5)),
            ),
          ),
          TextField(
            controller: _textController,
            focusNode: _focusNode,
            // keyboardType: TextInputType.number,
            // obscureText: true,
            // obscuringCharacter: "#",
            onChanged: (text) => setState(() {}),
            decoration: InputDecoration(
              hintText: "What's on your mind?",
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.5)),
              ),
              suffixIcon: hasFocus && hasText
                  ? GestureDetector(
                      onTap: () {
                        _textController.clear();
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Colors.red,
                        size: 20,
                      ),
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 10),
          MaterialButton(
            disabledColor: Colors.grey,
            onPressed: _textController.text.isNotEmpty
                ? () {
                    setState(() {
                      userInput = _textController.text;
                      _textController.clear();
                    });
                  }
                : null,
            color: Colors.blue,
            child: const Text("Post", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
