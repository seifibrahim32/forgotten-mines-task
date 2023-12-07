class CategoriesModel{
  final List<String> _categoriesName = ['Games', 'Products', 'Who we are'];
  final List<String> _categoriesDetails = [
    'We have some games such as MOBA , Super Mario',
    'We have some items for share for our new products. Stay tuned..',
    'Forgotten Mines are one of US established company where we produce new '
        'electronic games to '
        'satisfy our customers loyalty'];
  final List<List<String>> _categoriesItems = [['Mario','MOBA'], ['Products'], ['Facebook']];

  String getCategoriesName(int index){
    return _categoriesName[index];
  }
  int categoriesLength(){
    return _categoriesName.length;
  }
  String getCategoryDetails(int index){
    return _categoriesDetails[index];
  }
  List<String> getCategoriesItem(int index){
    return _categoriesItems[index];
  }
}