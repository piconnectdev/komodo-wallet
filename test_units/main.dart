import 'package:test/test.dart';

import 'tests/cex_market_data/charts_test.dart';
import 'tests/cex_market_data/generate_demo_data_test.dart';
import 'tests/cex_market_data/profit_loss_repository_test.dart';
import 'tests/encryption/encrypt_data_test.dart';
import 'tests/formatter/compare_dex_to_cex_tests.dart';
import 'tests/formatter/cut_trailing_zeros_test.dart';
import 'tests/formatter/duration_format_test.dart';
import 'tests/formatter/format_amount_test.dart';
import 'tests/formatter/format_amount_test_alt.dart';
import 'tests/formatter/format_dex_amt_tests.dart';
import 'tests/formatter/formatted_date_test.dart';
import 'tests/formatter/leading_zeros_test.dart';
import 'tests/formatter/number_without_exponent_test.dart';
import 'tests/formatter/text_input_formatter_test.dart';
import 'tests/formatter/truncate_hash_test.dart';
import 'tests/helpers/calculate_buy_amount_test.dart';
import 'tests/helpers/get_sell_amount_test.dart';
import 'tests/helpers/max_min_rational_test.dart';
import 'tests/helpers/total_24_change_test.dart';
import 'tests/helpers/total_fee_test.dart';
import 'tests/helpers/update_sell_amount_test.dart';
import 'tests/password/validate_password_test.dart';
import 'tests/password/validate_rpc_password_test.dart';
import 'tests/sorting/sorting_test.dart';
import 'tests/utils/convert_double_to_string_test.dart';
import 'tests/utils/convert_fract_rat_test.dart';
import 'tests/utils/double_to_string_test.dart';
import 'tests/utils/get_fiat_amount_tests.dart';
import 'tests/utils/get_usd_balance_test.dart';

/// Run in terminal flutter test test_units/main.dart
/// More info at documentation "Unit and Widget testing" section
void main() {
  group('Formatters:', () {
    testCutTrailingZeros();
    testFormatAmount();
    testToStringAmount();
    testLeadingZeros();
    testFormatDexAmount();
    testDecimalTextInputFormatter();
    testDurationFormat();
    testNumberWithoutExponent();
    testCompareToCex();
    testTruncateHash();
    testFormattedDate();
    //testTruncateDecimal();
  });

  group('Password:', () {
    testValidateRPCPassword();
    testValidatePassword();
  });

  group('Sorting:', () {
    testSorting();
  });

  group('Utils:', () {
    testUsdBalanceFormatter();
    testGetFiatAmount();
    testCustomDoubleToString();
    testRatToFracAndViseVersa();

    testDoubleToString();
  });

  group('Helpers: ', () {
    testMaxMinRational();
    testCalculateBuyAmount();
    testGetTotal24Change();
    testGetTotalFee();
    testGetSellAmount();
    testUpdateSellAmount();
  });

  group('Crypto:', () {
    testEncryptDataTool();
  });

  group('CexMarketData: ', () {
    testCharts();
    testProfitLossRepository();
    testGenerateDemoData();
  });
}
