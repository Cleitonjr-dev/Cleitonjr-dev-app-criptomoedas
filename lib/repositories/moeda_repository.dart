import '../models/moeda_model.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/bitcoin.png',
      nome: 'Bitcoin',
      sigla: 'BTC',
      preco: 164603.00,
    ),
    Moeda(
      icone: 'images/ethereum.png',
      nome: 'Ethereum',
      sigla: 'ETH',
      preco: 9716.00,
    ),
    Moeda(
      icone: 'images/xrp.png',
      nome: 'XRP',
      sigla: 'XRP',
      preco: 3.34,
    ),
    Moeda(
      icone: 'images/cardano.png',
      nome: 'Cardano',
      sigla: 'ADA',
      preco: 6.32,
    ),
    Moeda(
      icone: 'images/usdcoin.png',
      nome: 'USD Coin',
      sigla: 'USDCOIN',
      preco: 5.02,
    ),
    Moeda(
      icone: 'images/litecoin.png',
      nome: 'Litecoin',
      sigla: 'LTC',
      preco: 669.93,
    ),
    Moeda(
      icone: 'images/tron-trx.png',
      nome: 'Tron',
      sigla: 'TRX',
      preco: 97713.00,
    ),
    Moeda(
      icone: 'images/tether-usdt.png',
      nome: 'Tether USDt',
      sigla: 'USDT',
      preco: 10002.00,
    ),
    Moeda(
      icone: 'images/solana-sol.png',
      nome: 'Solana',
      sigla: 'SOL',
      preco: 44040.00,
    ),
    Moeda(
      icone: 'images/polygon-matic.png',
      nome: 'Polygon',
      sigla: 'MATIC',
      preco: 799.00,
    ),
  ];
}
