test('recomp002',
     [skip_if_fast,
      clean_cmd('$MAKE -s clean')],
     run_command,
     ['$MAKE -s --no-print-directory recomp002'])

