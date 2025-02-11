import 'package:open_git/contract/repository_language_contract.dart';
import 'package:open_git/manager/repos_manager.dart';

class RepositoryLanguagePresenter extends IRepositoryLanguagePresenter {
  @override
  getLanguages(language, page, isFromMore) async {
//    return ReposManager.instance.getLanguages(language, page, (data) {
//      if (data != null && data.length > 0) {
//        List<Repository> list = new List();
//        var items = data["items"];
//        for (int i = 0; i < items.length; i++) {
//          var dataItem = items[i];
//          list.add(Repository.fromJson(dataItem));
//        }
//        if (view != null) {
//          view.setList(list, isFromMore);
//        }
//      }
//    }, (code, msg) {});
    final response = await ReposManager.instance.getLanguages(language, page);
    if (response != null && view != null) {
      view.setList(response, isFromMore);
    }
    return response;
  }
}
