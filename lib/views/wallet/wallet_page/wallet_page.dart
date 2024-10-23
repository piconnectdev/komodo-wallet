import 'package:flutter/material.dart';
import 'package:web_dex/blocs/blocs.dart';
import 'package:web_dex/model/coin.dart';
import 'package:web_dex/router/state/routing_state.dart';
import 'package:web_dex/router/state/wallet_state.dart';
import 'package:web_dex/views/wallet/coin_details/coin_details.dart';
import 'package:web_dex/views/wallet/coins_manager/coins_manager_page.dart';
import 'package:web_dex/views/wallet/wallet_page/wallet_main/wallet_main.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({
    required this.coinAbbr,
    required this.action,
  });
  final String? coinAbbr;
  final CoinsManagerAction action;

  @override
  Widget build(BuildContext context) {
    final Coin? coin = coinsBloc.getWalletCoin(coinAbbr ?? '');
    if (coin != null && coin.enabledType != null) {
      return CoinDetails(
        key: Key(coin.abbr),
        coin: coin,
        onBackButtonPressed: _onBackButtonPressed,
      );
    }

    final action = this.action;

    if (action != CoinsManagerAction.none) {
      return CoinsManagerPage(
        action: action,
        closePage: _onBackButtonPressed,
      );
    }

    return const WalletMain();
  }

  void _onBackButtonPressed() {
    routingState.resetDataForPageContent();
  }
}