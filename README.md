# Blue App Client

![Blue Logo](assets/logo/logo_app.png)

Application pour les clients de Blue

## Prérequis

- Flutter 3.10.0 ou plus récent
- Dart SDK inclus avec Flutter

## Installation

```bash
flutter pub get
```

## Génération des assets

Les assets sont gérés par `flutter_gen` avec une configuration centralisée dans `flutter_gen.yaml`. Après avoir ajouté ou modifié un fichier dans `assets/`, exécuter :

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Les classes générées sont écrites dans `lib/gen/`.

## Internationalisation

Les chaînes localisées résident dans `lib/config/l10n/*.arb` (ex. `app_en.arb`, `app_fr.arb`). Le générateur Flutter récupère sa configuration depuis `l10n.yaml`. Pour régénérer les classes (`AppLocalizations`), lancer :

```bash
flutter gen-l10n
```

`MaterialApp.router` utilise automatiquement les délégués déclarés dans `LangConfig` (`lib/config/lang/lang_config.dart`).

## Thème

Le thème de l'application est centralisé dans `lib/config/theme/` (`color_theme.dart` pour la palette et `app_theme.dart` pour l'instance `ThemeData`). Mettre à jour ces fichiers pour ajouter de nouvelles couleurs ou gérer un mode sombre.

## Icônes de l'application

La configuration se trouve dans `flutter_launcher_icons.yaml`. Pour régénérer les icônes depuis `assets/logo/logo_app.png` :

```bash
flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
```

## Renommage de l'application

Le nom affiché sur Android/iOS est géré via `package_rename`. La configuration centralisée se trouve dans `package_rename_config.yaml`. Pour appliquer un changement de nom (ex. après mise à jour du fichier), exécuter :

```bash
dart run package_rename
```

Les manifests Android/iOS seront mis à jour automatiquement.

## Navigation (GoRouter)

La navigation repose sur [`go_router`](https://pub.dev/packages/go_router). Le routeur principal est déclaré dans `lib/router/app_router.dart`, les modèles de routes dans `lib/router/route_model.dart` et les noms/chemins partagés dans `lib/router/route_name.dart`. L'ensemble est branché sur `MaterialApp.router` dans `lib/main.dart`.

Pour ajouter un nouvel écran, ajouter d'abord une constante dans `RouteName` puis enregistrer une route supplémentaire :

```dart
GoRoute(
  path: RouteName.profile.path,
  name: RouteName.profile.name,
  builder: (context, state) => const ProfilePage(),
),
```

Ensuite naviguer avec `context.go(RouteName.profile.path)` ou `context.pushNamed(RouteName.profile.name)`.

## Ressources Flutter

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Documentation officielle Flutter](https://docs.flutter.dev/)
