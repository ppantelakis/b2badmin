SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"
export myparamsfile="$1";
commonparams=`$myparamsfile`;
eval "$commonparams";
export mypath="$SCRIPTDIR ";
export mysqlpath="$SCRIPTDIR ""../../sql/";

scripts () {

    bash "$logexecfilename" "yellow" "WILL EXECUTE general hair scripts data";
    mysqltmppath="$mysqlpath""hair_table_data/";
    bash "$ppexecpsqlfilesindir" "$mysqltmppath"

    #declare -a gymkatastimataarr=("glifada" "kifisia" "kinaesthesis")
    declare -a katastimataarr=("hair1")

    for i in "${katastimataarr[@]}"
    do
        bash "$logexecfilename" "yellow" "WILL EXECUTE hair scripts data for ""$i";
        mysqltmppath="$mysqlpath""hair_table_data/$i/";
        bash "$ppexecpsqlfilesindir" "$mysqltmppath" "$i";

        bash "$logexecfilename" "yellow" "WILL EXECUTE hair scripts demo data for ""$i";
        mysqltmppath="$mysqlpath""table_data/$i/demo/";
        bash "$ppexecpsqlfilesindir" "$mysqltmppath" "$i";
    done
}

scripts