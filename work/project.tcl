set projDir "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/planAhead"
set projName "8bitALU"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/mojo_top_0.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/reset_conditioner_1.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/state_2.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/multi_seven_seg_3.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/counter_4.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/alu_5.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/counter_6.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/seven_seg_7.v" "D:/Downloads/Term 4/50.002 - Com structs/mojo projects/8bitALU/work/verilog/decoder_8.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list  "D:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "D:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
