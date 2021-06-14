part of 'widgets.dart';

class TileGenerico extends StatelessWidget {
  final Map json;

  TileGenerico(this.json);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        json['title'],
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      subtitle: Text(
        "Horarios de Atención: " + json['description'],
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      leading: IconButton(
        icon: Icon(Icons.phone),
        onPressed: () => openLink(json['number']),
      ),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoadingPage()),
      ),
    );
  }
}
