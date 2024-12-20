import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_dex/bloc/bridge_form/bridge_bloc.dart';
import 'package:web_dex/bloc/bridge_form/bridge_state.dart';
import 'package:web_dex/model/trade_preimage.dart';
import 'package:web_dex/views/dex/simple/form/exchange_info/total_fees.dart';

class BridgeTotalFees extends StatelessWidget {
  const BridgeTotalFees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<BridgeBloc, BridgeState, TradePreimage?>(
      selector: (state) => state.preimageData?.data,
      builder: (context, tradePreimage) {
        return TotalFees(preimage: tradePreimage);
      },
    );
  }
}
