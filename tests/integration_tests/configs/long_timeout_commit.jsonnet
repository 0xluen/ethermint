local default = import 'default.jsonnet';

default {
  'daily_4568-1'+: {
    config+: {
      consensus+: {
        timeout_commit: '5s',
      },
    },
  },
}
