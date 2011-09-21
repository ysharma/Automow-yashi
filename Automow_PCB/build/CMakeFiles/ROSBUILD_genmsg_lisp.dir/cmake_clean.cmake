FILE(REMOVE_RECURSE
  "../src/Automow_PCB/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_lisp"
  "../msg_gen/lisp/cutter_control.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_cutter_control.lisp"
  "../msg_gen/lisp/batt_status.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_batt_status.lisp"
  "../msg_gen/lisp/Status.lisp"
  "../msg_gen/lisp/_package.lisp"
  "../msg_gen/lisp/_package_Status.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
