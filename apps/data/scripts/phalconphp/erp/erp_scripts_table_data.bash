SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"
export myparamsfile="$1";
commonparams=`$myparamsfile`;
eval "$commonparams";
export mypath="$SCRIPTDIR ";
export mysqlpath="$SCRIPTDIR ""../../sql/";

erp_scripts () { 

    bash "$logexecfilename" "yellow" "WILL EXECUTE erp scripts_table_data"
    
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/erp_table_data_start.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/erp_table_data_core_plugin_param_value_outersidebarmenuv100_outer_sidebar_menu.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/krestena/erp_table_data_core_katastima.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/krestena/erp_table_data_core_page.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/krestena/erp_table_data_core_plugin.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_table_data/krestena/erp_table_data_core_page_plugin.sql

    for myfname in $(find "$mysqlpath"erp_table_data/krestena/ -name 'erp_table_data_core_available_plugin_translate_key*.sql' -o -name 'erp_table_data_core_erp_l*.sql' -o -name 'erp_table_data_core_plugin_param_value*.sql' )
    do
            bash "$ppexecpsqlcmdfile" "$myfname"
    done
}

erp_scripts