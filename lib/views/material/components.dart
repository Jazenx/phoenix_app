import 'package:flutter/material.dart';
import './components/Buttom.dart';
import './components/FloatingActionButton.dart';
import './components/PopupMenuButton.dart';
import './components/LoginForm.dart';
import './components/Checkbox.dart';
import './components/Radio.dart';
import './components/Switch.dart';
import './components/Slider.dart';
import './components/Datetime.dart';
import './components/SimpleDialog.dart';
import './components/AlertDialog.dart';
import './components/BottomSheet.dart';
import './components/SnackBar.dart';
import './components/ExpansionPanel.dart';
import './components/Chip.dart';
import './components/DataTable.dart';
import './components/PaginatedDataTable.dart';
import './components/Stepper.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Components'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
              title: 'Paginated Data Table', page: PaginatedDataTableDemo()),
          ListItem(
              title: 'Floating Action Button',
              page: FloatingAcitonButtonDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'Stepper', page: StepperDemo()),
          ListItem(title: 'Popup Menu Button', page: PopupMenuButtonDemo()),
          ListItem(title: 'Login Form', page: LoginForm()),
          ListItem(title: 'Checkbox', page: CheckboxDemo()),
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'Switch', page: SwitchDemo()),
          ListItem(title: 'Slider', page: SliderDemo()),
          ListItem(title: 'Datetime', page: DatetimeDemo()),
          ListItem(title: 'Simple Dialog', page: SimpleDialogDemo()),
          ListItem(title: 'Alert Dialog', page: AlertDialogDemo()),
          ListItem(title: 'Bottom Sheet', page: BottomSheetDemo()),
          ListItem(title: 'Snack Bar', page: SnackBarDemo()),
          ListItem(title: 'Expansion Panel', page: ExpansionPanelDemo()),
          ListItem(title: 'Chip', page: ChipDemo()),
          ListItem(title: 'DataTable', page: DataTableDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              )
            ]),
      ),
    );
  }
}
