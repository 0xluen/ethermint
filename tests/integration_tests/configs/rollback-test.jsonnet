local config = import 'default.jsonnet';

config {
  'daily_96-1'+: {
    validators: super.validators[0:1] + [{
      name: 'fullnode',
    }],
  },
}
