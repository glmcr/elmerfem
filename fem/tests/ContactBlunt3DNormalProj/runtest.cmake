include(test_macros)
execute_process(COMMAND ${ELMERGRID_BIN} 14 2 blunt.msh -autoclean )
execute_process(COMMAND ${ELMERGRID_BIN} 1 2 base.grd)
execute_process(COMMAND ${ELMERGRID_BIN} 2 2 blunt -in base -unite -out mesh)
execute_process(COMMAND ${ELMERGRID_BIN} extrude.eg)
RUN_ELMER_TEST()
