class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: '',  ),
      ToDo(id: '02', todoText: 'Oyun ve Uygulama Akademisi başvurusu', isDone: true ),
      ToDo(id: '03', todoText: 'Oryantasyon buluşması', isDone: true ),
      ToDo(id: '04', todoText: 'Unity Eğitimleri', ),
      ToDo(id: '05', todoText: 'Flutter Eğitimleri', isDone: true),
      ToDo(id: '06', todoText: 'Game & App Jam başarısı', isDone: true ),
      ToDo(id: '07', todoText: 'Mezuniyet Bootcamp', ),
    ];
  }
}