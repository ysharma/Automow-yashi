FILE(REMOVE_RECURSE
  "../src/Automow_PCB/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/Automow_PCB/cutter_control.h"
  "../msg_gen/cpp/include/Automow_PCB/batt_status.h"
  "../msg_gen/cpp/include/Automow_PCB/Status.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
