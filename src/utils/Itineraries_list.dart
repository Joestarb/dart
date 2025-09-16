import '../models/Itinerary.dart';
import 'Atracctions_list.dart';

List<Itinerary> itineraries = [

  Itinerary(
    name: 'Diversión Familiar',
    startsAt: DateTime(2025, 9, 17, 10, 0),
    endsAt: DateTime(2025, 9, 17, 17, 0),
    attractions: [
      atracctionsList[1], // Chapultepec
      atracctionsList[3], // Six Flags México
    ],
  ),
  Itinerary(
    name: 'Entretenimiento',
    startsAt: DateTime(2025, 9, 18, 18, 0),
    endsAt: DateTime(2025, 9, 18, 23, 0),
    attractions: [
      atracctionsList[3], // Six Flags México
    ],
  ),
];
