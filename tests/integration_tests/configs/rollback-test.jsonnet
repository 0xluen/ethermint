local config = import 'default.jsonnet';

config {
  'daily_4568-1'+: {
    validators: super.validators[0:1] + [{
      name: 'fullnode',
    }],
  },
}
