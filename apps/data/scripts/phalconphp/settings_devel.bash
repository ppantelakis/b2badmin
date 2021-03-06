SCRIPTDIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"/"

#Project Paths
export MYMASTERPROJECTNAME='phalconphp';
echo "export MYMASTERPROJECTNAME='"$MYMASTERPROJECTNAME"'";
export MYPROJECTNAME=$1;
echo "export MYPROJECTNAME='"$MYPROJECTNAME"'";
export MYNBPROJECTPATH="/home/panosp/NetBeansProjects/";
echo "export MYNBPROJECTPATH='"$MYNBPROJECTPATH"'";
export MYPROJECTPATH="$MYNBPROJECTPATH"$MYPROJECTNAME"/";
echo "export MYPROJECTPATH='"$MYPROJECTPATH"'";


export myappspath="$MYPROJECTPATH ""apps/";
echo "export myappspath='"$myappspath"'";
export mypublictmppath="$MYPROJECTPATH ""public/tmp/";
echo "export mypublictmppath='"$mypublictmppath"'";


#Database Settings
export MYDB='b2bdb';
echo "export MYDB='"$MYDB"'";
echo "export LOCALPGPASSWORD='kalimera'";

export MYDBUSER=$MYPROJECTNAME'user';
echo "export MYDBUSER='"$MYDBUSER"'";
export MYDBPASS="$MYDB""$MYDBUSER""1975";
echo "export MYDBPASS='"$MYDBPASS"'";
export MYDBURL='127.0.0.1';
echo "export MYDBURL='"$MYDBURL"'";
export MYSCHEMA=$MYPROJECTNAME'schema';
echo "export MYSCHEMA='"$MYSCHEMA"'";
echo "export PGOPTIONS='-c search_path="$MYSCHEMA",pg_catalog,public -c statement_timeout=0 -c lock_timeout=0 -c client_encoding='''UTF8''' -c standard_conforming_strings=on -c check_function_bodies=false -c client_min_messages=warning'";

#Project and Curl Url
export MYPROJECTURL="http://localhost/"$MYPROJECTNAME"/";
echo "export MYPROJECTURL='"$MYPROJECTURL"'";
echo "export MYCURLURL='"$MYPROJECTURL"public/b2b/el/admin/core/createmodels/"$MYSCHEMA"/'";
echo "export MYSITEURL='"$MYPROJECTURL"public/b2b/el/admin/index/'";


#Database Tablespaces and paths
echo "export tblspcrootdir='/var/lib/pgsql/tblspc/"$MYSCHEMA"/'"
echo "export tblspcname_base='tblspc_base_"$MYSCHEMA"'"
echo "export tblspcname_crm='tblspc_crm_"$MYSCHEMA"'"
echo "export tblspcname_erp='tblspc_erp_"$MYSCHEMA"'";


echo "export MYB2BADMINBASESCRIPT='b2badmin_basescript.bash'";

#Boolean if mkdir project
echo "export MYFILESCREATEPROJECTFOLDER='1'";

#Boolean if execute rsync 
echo "export MYFILESRSYNCPROJECT='1'";

#Boolean if Drop Schema and Recreate it
echo "export MYRECREATESCHEMA='1'";


#CRM Settings Begin
    echo "export MYBLCRMCREATE='1'";
    echo "export MYBLCRMGYMCREATE='1'";
    echo "export MYBLCRMHAIRCREATE='1'";

#CRM Settings End

#ERP Settings Begin

    echo "export MYBLERPVASILOPOULOSCREATE='0'";
    #Erp Plus Settings Begin
        #Boolean if import csv files to DB
        export MYERPEXECUTECSV2DB='1';
        echo "export MYERPEXECUTECSV2DB='"$MYERPEXECUTECSV2DB"'";

        #Path for import csvs to Database
        echo "export myerprootdatapathvasilopoulos='"$MYPROJECTPATH"data/sites/erp-vasilopoulos/'";
    #Erp Plus Settings End

#ERP Settings End


