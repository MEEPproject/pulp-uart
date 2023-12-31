#script_version 1
namespace eval _tcl {
proc get_script_folder {} {
    set script_path [file normalize [info script]]
    set script_folder [file dirname $script_path]
    return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

set g_vivado_version [version -short] 
set g_board_part "u280"
set g_fpga_part xc${g_board_part}-fsvh2892-2L-e
set g_project_name "pulp_uart"
set g_root_dir    $script_folder/../                     
set g_project_dir ${g_root_dir}/project    
set g_design_name ${g_project_name}          
set g_useBlockDesign n 	  
set g_top_module_name "meep_uart_top"
