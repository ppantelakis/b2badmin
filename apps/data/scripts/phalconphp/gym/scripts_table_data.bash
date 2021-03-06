SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"
export myparamsfile="$1";
commonparams=`$myparamsfile`;
eval "$commonparams";
export mypath="$SCRIPTDIR ";
export mysqlpath="$SCRIPTDIR ""../../sql/";

gym_scripts () {

    bash "$logexecfilename" "yellow" "WILL EXECUTE general gym scripts data";
    mysqltmppath="$mysqlpath""gym_table_data/";
    bash "$ppexecpsqlfilesindir" "$mysqltmppath"

    #declare -a gymkatastimataarr=("glifada" "kifisia" "kinaesthesis" "figura")
    declare -a gymkatastimataarr=("glifada" "kifisia" )

    for i in "${gymkatastimataarr[@]}"
    do
        bash "$logexecfilename" "yellow" "WILL EXECUTE gym scripts data for ""$i";
        mysqltmppath="$mysqlpath""gym_table_data/$i/";
        bash "$ppexecpsqlfilesindir" "$mysqltmppath" "$i";

        bash "$logexecfilename" "yellow" "WILL EXECUTE gym scripts demo data for ""$i";
        mysqltmppath="$mysqlpath""gym_table_data/$i/demo/";
        bash "$ppexecpsqlfilesindir" "$mysqltmppath" "$i";
    done
}

gym_scripts