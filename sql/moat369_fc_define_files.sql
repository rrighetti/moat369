DEF moat369_fdr = './moat369'
DEF moat369_fdr_sql = '&&moat369_fdr./sql'
DEF moat369_fdr_sh  = '&&moat369_fdr./sh'
DEF moat369_fdr_js  = '&&moat369_fdr./js'

-- Define Function Files
DEF fc_encrypt_html               = '&&moat369_fdr_sql./moat369_fc_encrypt_html.sql'
DEF fc_encrypt_file               = '&&moat369_fdr_sql./moat369_fc_encrypt_file.sql'
DEF fc_gen_select_star_query      = '&&moat369_fdr_sql./moat369_fc_gen_select_star_query.sql'
DEF fc_get_dbvault_user           = '&&moat369_fdr_sql./moat369_fc_get_dbvault_user.sql'
DEF fc_oracle_version             = '&&moat369_fdr_sql./moat369_fc_oracle_version.sql'
DEF fc_main_table_name            = '&&moat369_fdr_sql./moat369_fc_main_table_name.sql'
DEF fc_seq_output_file            = '&&moat369_fdr_sql./moat369_fc_seq_output_file.sql'
DEF fc_ren_output_file            = '&&moat369_fdr_sql./moat369_fc_ren_output_file.sql'
DEF fc_check_last_sql_status      = '&&moat369_fdr_sql./moat369_fc_check_last_sql_status.sql'
DEF fc_call_secion                = '&&moat369_fdr_sql./moat369_fc_call_section.sql'
DEF fc_section_variables          = '&&moat369_fdr_sql./moat369_fc_section_variables.sql'
DEF fc_load_column                = '&&moat369_fdr_sql./moat369_fc_load_column.sql'
DEF fc_convert_txt_to_html        = '&&moat369_fdr_sql./moat369_fc_convert_txt_to_html.sql'
DEF fc_gen_object_ddl             = '&&moat369_fdr_sql./moat369_fc_gen_object_ddl.sql'
DEF fc_exit_not_connected         = '&&moat369_fdr_sql./moat369_fc_exit_not_connected.sql'
DEF fc_exit_no_folder_perms       = '&&moat369_fdr_sql./moat369_fc_exit_no_folder_perms.sql'
DEF fc_set_term_off               = '&&moat369_fdr_sql./moat369_fc_set_term_off.sql'
DEF fc_clean_file_name            = '&&moat369_fdr_sql./moat369_fc_clean_file_name.sql'
DEF fc_check_config               = '&&moat369_fdr_sql./moat369_fc_check_config.sql'
DEF fc_def_empty_var              = '&&moat369_fdr_sql./moat369_fc_def_empty_var.sql'
DEF fc_def_bind_ifnotdef          = '&&moat369_fdr_sql./moat369_fc_def_bind_ifnotdef.sql'
DEF fc_set_value_var_nvl          = '&&moat369_fdr_sql./moat369_fc_set_value_var_nvl.sql'
DEF fc_set_value_var_nvl2         = '&&moat369_fdr_sql./moat369_fc_set_value_var_nvl2.sql'
DEF fc_set_value_var_decode       = '&&moat369_fdr_sql./moat369_fc_set_value_var_decode.sql'
DEF fc_gen_temp_file              = '&&moat369_fdr_sql./moat369_fc_gen_temp_file.sql'
DEF fc_validate_variable          = '&&moat369_fdr_sql./moat369_fc_validate_variable.sql'
DEF fc_zip_driver_files           = '&&moat369_fdr_sql./moat369_fc_zip_driver_files.sql'
DEF fc_load_file_ifexist          = '&&moat369_fdr_sql./moat369_fc_load_file_ifexist.sql'
DEF fc_wr_collector               = '&&moat369_fdr_sql./moat369_fc_wr_collector.sql'
DEF fc_def_output_file            = '&&moat369_fdr_sql./moat369_fc_def_output_file.sql'
DEF fc_mod_state                  = '&&moat369_fdr_sql./moat369_fc_mod_state.sql'
DEF fc_clear_defs                 = '&&moat369_fdr_sql./moat369_fc_clear_defs.sql'

-- Define ShellScripts
DEF sh_csv_to_metadata_ddl        = '&&moat369_fdr_sh./csv_to_metadata_ddl.sh'
DEF sh_csv_to_html_table          = '&&moat369_fdr_sh./csv_to_html_table.sh'
DEF sh_csv_to_gchart_data         = '&&moat369_fdr_sh./csv_to_gchart_data.sh'

-- Must have a space in the end
DEF fc_skip_script                = '&&moat369_fdr_sql./moat369_fc_skip_script.sql '

-- Define AEG Framework Files
DEF 9a_pre_one = '&&moat369_fdr_sql./moat369_9a_pre_one.sql'


