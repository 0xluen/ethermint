local config = import 'default.jsonnet';

config {
  'daily_96-1'+: {
    'app-config'+: {
      'minimum-gas-prices': '100000000000adaily',
    },
    genesis+: {
      app_state+: {
        feemarket+: {
          params+: {
            base_fee:: super.base_fee,
          },
        },
      },
    },
  },
}
