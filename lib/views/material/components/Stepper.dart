import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                primaryColor: Colors.black,
              ),
              child: Stepper(
                currentStep: _currentStep,
                onStepTapped: (int value) {
                  setState(() {
                    _currentStep = value;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    _currentStep < 2 ? _currentStep += 1 : _currentStep = 0;
                  });
                },
                onStepCancel: () {
                  setState(() {
                    _currentStep > 0 ? _currentStep -=1 : _currentStep = 0;
                  });
                },
                steps: [
                  Step(
                    title: Text('Login'),
                    subtitle: Text('Login First'),
                    content: Text('Lorem id eu eiusmod duis.'),
                    isActive: _currentStep == 0,
                  ),
                  Step(
                    title: Text('Choose Plan'),
                    subtitle: Text('Choose ur Plan'),
                    content: Text('Lorem id eu eiusmod duis.'),
                    isActive: _currentStep == 1,
                  ),
                  Step(
                    title: Text('Confirm Payment'),
                    subtitle: Text('Confirm your payment method'),
                    content: Text('Lorem id eu eiusmod duis.'),
                    isActive: _currentStep == 2,
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
