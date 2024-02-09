void main() async {
  DataService dataService = DataService();
  String data = await dataService.getData();
  print(data);
}

class DataService {
  Future _getDataFromCloud() async {
    await Future.delayed(Duration(seconds: 4));
    print("get data finished");
    return "fake data";
  }

  Future<String> _parseDataFromCloud({required String dataFromCloud}) async {
    await Future.delayed(Duration(seconds: 2));
    print("parse data finished");
    return "parse data";
  }

  Future<String> getData() async {
    // final String dataFromCloud = await _getDataFromCloud();
    // final String parseData = await _parseDataFromCloud(dataFromCloud: dataFromCloud);

    _getDataFromCloud();
    final String parseData = await _parseDataFromCloud(dataFromCloud: "dataFromCloud");

    //! alternative way syntax
    // final String parseData = await _getDataFromCloud().then((dataFromCloud) async {
    // return await _parseDataFromCloud(dataFromCloud: dataFromCloud);
    // });

    return parseData;
  }
}
