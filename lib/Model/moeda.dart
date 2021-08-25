class Moedas {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  Moedas(
      {required this.name,
      required this.real,
      required this.dolar,
      required this.euro,
      required this.bitcoin});

  static List<Moedas> getMoedas() {
    return <Moedas>[
      Moedas(
          name: "Real", real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      Moedas(
          name: "Dolar", real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.000088),
      Moedas(
          name: "Euro", real: 6.62, dolar: 1.17, euro: 1.0, bitcoin: 0.00010),
      Moedas(
          name: "Bitcoin",
          real: 64116.51,
          dolar: 11351.38,
          euro: 9649.54,
          bitcoin: 1),
    ];
  }
}
