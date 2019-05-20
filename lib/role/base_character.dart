import 'package:magic_tower_origin/render/image_render.dart';
import 'package:magic_tower_origin/role/name_role.dart';

class BaseCharacter<T> extends Name {
  T abilityEntry;
  ImageRender imageRender;

  BaseCharacter(this.imageRender, this.abilityEntry) : super("Character");

  @override
  jsonData() {
    Map<String, dynamic> jsonData;
    jsonData = {"name": name, "type": type};
    return jsonData;
  }

  BaseCharacter clone() {
    return new BaseCharacter(imageRender, abilityEntry);
  }
}
