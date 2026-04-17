int add(int a, int b) {
    return (a + b);
}

int sub(int a, int b) {
    return (a - b);
}

String showFunc(int a, int b) {
    int resultAdd = add(a, b);
    int resultSub = sub(a, b);
    return 'Add $a + $b = $resultAdd\nSub $a - $b = $resultSub';
}
