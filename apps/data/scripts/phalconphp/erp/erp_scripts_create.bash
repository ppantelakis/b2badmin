SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"
export myparamsfile="$1";
commonparams=`$myparamsfile`;
eval "$commonparams";
export mypath="$SCRIPTDIR ";
export mysqlpath="$SCRIPTDIR ""../../sql/";

makeconstraints (){
    SQLCOMMAND="select basemakeconstraints();";
    bash "$ppexecpsqlcmd" "$SQLCOMMAND"
}

erp_scripts () { 

    bash "$logexecfilename" "yellow" "WILL EXECUTE erp scripts_create"
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_create/erp_create_tables.sql
    makeconstraints
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_create/erp_create_views.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_create/erp_create_views_materialized.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_create/krestena/erp_create_views.sql
    bash "$ppexecpsqlcmdfile" "$mysqlpath"erp_create/krestena/erp_create_views_materialized.sql
}

erp_scripts