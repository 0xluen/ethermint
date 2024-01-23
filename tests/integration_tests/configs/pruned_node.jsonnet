local config = import 'default.jsonnet';

config {
  'daily_4568-1'+: {
    'app-config'+: {
      pruning: 'everything',
      'state-sync'+: {
        'snapshot-interval': 0,
      },
    },
    genesis+: {
      app_state+: {
        feemarket+: {
          params+: {
            min_gas_multiplier: '0',
          },
        },
      },
    },
  },
}
