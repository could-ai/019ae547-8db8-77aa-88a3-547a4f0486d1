class User {
  final String id;
  final String name;
  final String imageUrl;
  final int followers;
  final int following;
  final List<String> galleryImages;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.followers,
    required this.following,
    required this.galleryImages,
  });
}

class Party {
  final String id;
  final String title;
  final String description;
  final String location;
  final String imageUrl;
  final bool isPrivate;
  final User host;
  final DateTime dateTime;

  Party({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.imageUrl,
    required this.isPrivate,
    required this.host,
    required this.dateTime,
  });
}

// Datos Mock (Simulados)
final User currentUser = User(
  id: 'u1',
  name: 'Alex Fiesta',
  imageUrl: 'https://i.pravatar.cc/150?u=alex',
  followers: 1250,
  following: 300,
  galleryImages: [
    'https://picsum.photos/200/300?random=1',
    'https://picsum.photos/200/300?random=2',
    'https://picsum.photos/200/300?random=3',
    'https://picsum.photos/200/300?random=4',
  ],
);

final List<Party> mockParties = [
  Party(
    id: 'p1',
    title: 'Carrete en la Azotea',
    description: 'Música electrónica y buenas vibras. Trae tu consumo.',
    location: 'Av. Providencia 1234, Santiago',
    imageUrl: 'https://picsum.photos/500/300?random=10',
    isPrivate: true,
    host: User(
      id: 'u2',
      name: 'Valentina DJ',
      imageUrl: 'https://i.pravatar.cc/150?u=valentina',
      followers: 5000,
      following: 100,
      galleryImages: [],
    ),
    dateTime: DateTime.now().add(const Duration(hours: 5)),
  ),
  Party(
    id: 'p2',
    title: 'Asado Universitario',
    description: 'Entrada liberada, todos bienvenidos.',
    location: 'Parque Intercomunal',
    imageUrl: 'https://picsum.photos/500/300?random=11',
    isPrivate: false,
    host: User(
      id: 'u3',
      name: 'Centro de Alumnos',
      imageUrl: 'https://i.pravatar.cc/150?u=cda',
      followers: 800,
      following: 20,
      galleryImages: [],
    ),
    dateTime: DateTime.now().add(const Duration(days: 1)),
  ),
];
