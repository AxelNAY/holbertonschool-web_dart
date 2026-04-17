List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = [];
    for (var i = 0; i < temperaturesInC.length; i++) {
        double convert = (temperaturesInC[i] * 9/5) + 32;
        double res = double.parse(convert.toStringAsFixed(2));
        temperaturesInF.add(res);
    }
    return temperaturesInF;
}
