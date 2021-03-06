SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"
export myparamsfile="$1";
commonparams=`$myparamsfile`;
eval "$commonparams";
export mypath="$SCRIPTDIR ";
export mysqlpath="$SCRIPTDIR ""../../sql/";

bash "$mypath""erp_scripts_create.bash" "$myparamsfile";
SQLCOMMAND="ALTER FUNCTION tr_erp_str_function() SET search_path="$MYSCHEMA", pg_catalog;";
bash "$ppexecpsqlcmd" "$SQLCOMMAND"
bash "$mypath""erp_tablespaces.bash" "$myparamsfile";
bash "$mypath""erp_scripts_table_data.bash" "$myparamsfile";

if [ "$MYERPEXECUTECSV2DB" = "1" ]; then
    bash "$mypath""erp_csvs2db.bash" "$myparamsfile" krestena 2016;
    bash "$mypath""krestena/erp_table_data_demo_krestena.bash" "$myparamsfile";
fi


