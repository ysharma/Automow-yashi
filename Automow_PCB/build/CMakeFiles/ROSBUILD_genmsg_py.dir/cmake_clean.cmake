FILE(REMOVE_RECURSE
  "../src/Automow_PCB/msg"
  "../msg_gen"
  "../msg_gen"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/Automow_PCB/msg/__init__.py"
  "../src/Automow_PCB/msg/_cutter_control.py"
  "../src/Automow_PCB/msg/_batt_status.py"
  "../src/Automow_PCB/msg/_Status.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
