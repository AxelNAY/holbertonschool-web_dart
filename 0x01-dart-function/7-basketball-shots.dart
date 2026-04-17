int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
    int pointsA = (teamA['Free throws']! * 1) +
                (teamA['2 pointers']! * 2) +
                (teamA['3 pointers']! * 3);                                                                                                       
    int pointsB = (teamB['Free throws']! * 1) +
                (teamB['2 pointers']! * 2) +
                (teamB['3 pointers']! * 3);
    if (pointsA > pointsB) return 1;
    if (pointsA < pointsB) return 2;
    return 0;
}
