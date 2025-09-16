import '../utils/Atracctions_list.dart';

dynamic findByName(String name, {bool caseInsensitive = true}) {
	 dynamic attraction = atracctionsList.firstWhere(
		(a) => caseInsensitive
				? a.name.toLowerCase() == name.toLowerCase()
				: a.name == name,
	);

  if (attraction != null) {
    print('Encontrada: $attraction');
  } else {
    throw Exception('Attraction with name $name not found');
  }
}
