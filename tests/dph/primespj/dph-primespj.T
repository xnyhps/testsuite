
test    ('dph-primespj-copy-opt' 
        , [ outputdir('opt')
          , skip_if_fast
          , reqlib('dph-lifted-copy')
          , reqlib('dph-prim-par')
          , only_ways(['normal', 'threaded1', 'threaded2']) ] 
        , multimod_compile_and_run 
        , [ 'Main'
          , '-Odph -package dph-lifted-copy'])

test    ('dph-primespj-copy-fast' 
        , [ outputdir('fast')
          , reqlib('dph-lifted-copy')
          , reqlib('dph-prim-par')
          , only_ways(['normal', 'threaded1', 'threaded2']) ] 
        , multimod_compile_and_run 
        , [ 'Main'
          , '-O -fno-enable-rewrite-rules -package dph-lifted-copy'])


