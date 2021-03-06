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

scripts () { 
    mysqltmppath="$mysqlpath""crm_create/";
    bash "$logexecfilename" "yellow" "WILL EXECUTE crm scripts_create"
    bash "$ppexecpsqlfilesindir" "$mysqltmppath"
    makeconstraints
}

scripts