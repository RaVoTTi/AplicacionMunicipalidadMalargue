part of 'widgets.dart';

class BtnGenerico extends StatelessWidget {

  final String name;
  final Function function;

  const BtnGenerico({@required this.name, @required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                  onPressed: this.function,
                  child: Text(this.name),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    minimumSize: Size(5,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    primary: Color(0xff00939d),
                    onPrimary: Colors.white,
                  ),
                );
  }
}