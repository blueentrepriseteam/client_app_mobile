class NumberFormat {
  static String formaterNumber(dynamic nombre, {String? currency}) {
    // Convertir le nombre en chaîne de caractères
    if (nombre == null) {
      return "0";
    }
    String nombreString = nombre.toString();

    // Séparer la partie entière de la partie décimale (s'il y en a)
    List<String> parties = nombreString.split(".");
    String partieEntiere = parties[0];
    String partieDecimale = parties.length > 1 ? parties[1] : "";

    // Ajouter un espace tous les trois chiffres dans la partie entière
    String resultat = partieEntiere.replaceAllMapped(
      RegExp(r'\B(?=(\d{3})+(?!\d))'),
      (match) => '.',
    );

    // Si la partie décimale existe, l'ajouter au résultat avec un point
    if (partieDecimale.isNotEmpty) {
      resultat += ".$partieDecimale";
    }

    String value = resultat.isNotEmpty ? resultat : "0";

    if (currency != null) {
      return "$value $currency";
    }

    return resultat.isNotEmpty ? resultat : "0";
  }
}
