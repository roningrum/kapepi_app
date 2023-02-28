class KartuSearchEvent{
  final String noReg;
  const KartuSearchEvent(this.noReg);

  @override
  String toString() => 'KartuSearchEvent {query: $noReg}';
}