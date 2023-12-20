local default = import 'default.jsonnet';

default {
  'daily_96-1'+: {
    config+: {
      consensus+: {
        timeout_commit: '5s',
      },
    },
  },
}
