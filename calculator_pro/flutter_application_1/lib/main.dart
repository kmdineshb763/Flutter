import 'package:flutter/material.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _display = '0';       // what is currently shown
  String _operand = '';        // "+", "-", "*", "/"
  String _firstOperand = '';    // the number before operation
  bool _shouldResetDisplay = false;

  void _onDigitPressed(String digit) {
    setState(() {
      if (_shouldResetDisplay || _display == '0') {
        _display = digit;
        _shouldResetDisplay = false;
      } else {
        _display += digit;
      }
    });
  }

  void _onDecimalPointPressed() {
    setState(() {
      if (_shouldResetDisplay) {
        _display = '0.';
        _shouldResetDisplay = false;
      } else if (!_display.contains('.')) {
        _display += '.';
      }
    });
  }

  void _onOperandPressed(String op) {
    setState(() {
      if (_operand.isNotEmpty) {
        // if there already is an operator, calculate first
        _calculate();
      }
      _firstOperand = _display;
      _operand = op;
      _shouldResetDisplay = true;
    });
  }

  void _onClear() {
    setState(() {
      _display = '0';
      _firstOperand = '';
      _operand = '';
      _shouldResetDisplay = false;
    });
  }

  void _onEquals() {
    setState(() {
      _calculate();
      _operand = '';
      _firstOperand = '';
      _shouldResetDisplay = true;
    });
  }

  void _calculate() {
    if (_operand.isEmpty || _firstOperand.isEmpty) {
      return;
    }
    double num1 = double.tryParse(_firstOperand) ?? 0;
    double num2 = double.tryParse(_display) ?? 0;
    double result = 0;

    switch (_operand) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '×':
      case '*':
        result = num1 * num2;
        break;
      case '÷':
      case '/':
        if (num2 == 0) {
          // handle division by zero
          _display = 'Error';
          return;
        } else {
          result = num1 / num2;
        }
        break;
      default:
        return;
    }

    // To avoid showing .0 for whole numbers
    String resultStr;
    if (result == result.toInt()) {
      resultStr = result.toInt().toString();
    } else {
      resultStr = result.toString();
    }
    _display = resultStr;
  }

  Widget _buildButton(String text, { Color bgColor = Colors.grey, Color textColor = Colors.white, VoidCallback? onPressed, double flex = 1 }) {
    return Expanded(
      flex: flex.toInt(),
      child: Container(
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(0, 70),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 32,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // calculate button size ratio etc if needed
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Text(
                  _display,
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                ),
              ),
            ),

            // Buttons
            Column(
              children: [
                Row(
                  children: [
                    _buildButton('C', bgColor: Colors.redAccent, onPressed: _onClear),
                    _buildButton('÷', bgColor: Colors.orange, onPressed: () => _onOperandPressed('÷')),
                    _buildButton('×', bgColor: Colors.orange, onPressed: () => _onOperandPressed('×')),
                    _buildButton('-', bgColor: Colors.orange, onPressed: () => _onOperandPressed('-')),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('7', onPressed: () => _onDigitPressed('7')),
                    _buildButton('8', onPressed: () => _onDigitPressed('8')),
                    _buildButton('9', onPressed: () => _onDigitPressed('9')),
                    _buildButton('+', bgColor: Colors.orange, onPressed: () => _onOperandPressed('+')),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('4', onPressed: () => _onDigitPressed('4')),
                    _buildButton('5', onPressed: () => _onDigitPressed('5')),
                    _buildButton('6', onPressed: () => _onDigitPressed('6')),
                    _buildButton('=', bgColor: Colors.green, onPressed: _onEquals),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('1', onPressed: () => _onDigitPressed('1')),
                    _buildButton('2', onPressed: () => _onDigitPressed('2')),
                    _buildButton('3', onPressed: () => _onDigitPressed('3')),
                    _buildButton('.', onPressed: _onDecimalPointPressed),
                  ],
                ),
                Row(
                  children: [
                    // Make 0 span two columns
                    _buildButton('0', flex: 2, onPressed: () => _onDigitPressed('0')),
                    _buildButton('%', onPressed: () {
                      // optional: you could implement percentage logic here
                    }),
                    _buildButton('/', bgColor: Colors.orange, onPressed: () => _onOperandPressed('/')),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
