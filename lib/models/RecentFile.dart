class RecentFile {
  final String operation,subOperation, amount, date, status;

  RecentFile({required this.operation,required this.subOperation, required this.date, required this.amount, required this.status});
}

List demoRecentFiles = [
  RecentFile(
    operation: "Withdraw",
    subOperation:"Hash: 2111853732263042",
    date: "Feb 17,2023",
    amount: "\$50,00.00",
    status: "Completed",
  ),
];
