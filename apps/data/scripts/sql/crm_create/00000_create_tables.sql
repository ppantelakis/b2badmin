

        CREATE TABLE core_crm_addresstype (
        )
        INHERITS (mitra_mitrapk);

select baseexec('ALTER TABLE core_crm_addresstype ADD CONSTRAINT mycon'||md5('core_crm_addresstype'||'mykatastima,title')||' UNIQUE (mykatastima,title)');


CREATE TABLE core_crm_customer (
          fkgender bigint not null default 1,
          fksalutation bigint not null default 1,
          fname text,
        lname text,
        telmobile text,
        telland text,        
        birthday timestamp without time zone,
        email   text,
        photourl text,
        doy text,
        afm text,
        profession text,
        code text,        
        fkcountry1 bigint,
        countryname1 text,
        fkprefecture1 bigint,
        prefecture1 text,
        fktown1 bigint,
        townname1 text,  
        fkpoc1 bigint,
        pocname1 text,
        addressname1 text,
        regionname1 text 
        )
        INHERITS (mitra_mitrapk);

        
create table core_crm_event (
            fkplugincalendarresource bigint,
            blallday bigint not null default 0,
            dtstart timestamp without time zone,
            dtend timestamp without time zone,
            fkstatus bigint,
            fktype bigint,
            fkcategory bigint,
            fkrepeat bigint,
            url text,
            bleditable bigint not null default 0,
            bloverlap bigint not null default 0,
            color text not null default '#000000',
            backgroundcolor text not null default '#0000FF',
            bordercolor text not null default '#000000',
            textcolor text not null default '#000000',
            timestart text,
            timeend text
        )
        INHERITS (mitra_mitrapk);

        create table core_crm_event_repeat (
            aliasname text
        )
        INHERITS (mitra_mitrapk);
        
        create table core_crm_event_customers (
            fkcorecrmcustomer bigint,
            fkcorecrmevent bigint
        )
        INHERITS (mitra_mitrapk);

        create table core_crm_event_trainers (
            fkcorecrmtrainer bigint,
            fkcorecrmevent bigint
        )
        INHERITS (mitra_mitrapk); 
        
create table core_crm_event_status (
            statustitle text,
            statuscolor text not null default '#000000'
        )
        INHERITS (mitra_mitrapk);

        create table core_crm_event_type (
            typetitle text
        )
        INHERITS (mitra_mitrapk);

CREATE TABLE core_crm_trainer_address (
          fktrainer bigint,
        addressname text,        
        fkregion bigint,
        fkaddresstype bigint,
        fkcountry bigint,
        fkprefecture bigint,
        fktown bigint,
        fkpoc bigint,
        countryname text,
        prefecturename text,
        townname text,
        regionaddressorvillage text,
        regionstreetnum text,
        pocname text )
        INHERITS (mitra_mitrapk);

--CREATE TABLE core_crm_available_specialities (
--    aliasname text
--)
--INHERITS (mitra_mitrapk);


CREATE TABLE core_crm_trainer (
          fkgender bigint not null default 1,
          fksalutation bigint not null default 1,
          fkspeciality bigint,
          fname text,
        lname text,
        telmobile text,
        telland text,        
        birthday timestamp without time zone,
        email   text,
        photourl text
        )
        INHERITS (mitra_mitrapk);




        CREATE TABLE core_crm_customer_address (
          fkcustomer bigint,
        addressname text,        
        fkregion bigint,
        fkaddresstype bigint,
        fkcountry bigint,
        fkprefecture bigint,
        fktown bigint,
        fkpoc bigint,
        countryname text,
        prefecturename text,
        townname text,
        regionaddressorvillage text,
        regionstreetnum text,
        pocname text
        
        )
        INHERITS (mitra_mitrapk);

select baseexec('ALTER TABLE core_crm_customer_address ADD CONSTRAINT mycon'||md5('core_crm_customer_address'||'mykatastima,fkcustomer,fkaddresstype')||' UNIQUE (mykatastima,fkcustomer,fkaddresstype)');


        CREATE TABLE core_crm_customer_health (
          fkcustomer bigint,
        bl01 bigint NOT NULL DEFAULT 0,        
        bl02 bigint NOT NULL DEFAULT 0,
        bl03 bigint NOT NULL DEFAULT 0,
        bl04 bigint NOT NULL DEFAULT 0,
        bl05 bigint NOT NULL DEFAULT 0,
        bl06 bigint NOT NULL DEFAULT 0,
        bl07 bigint NOT NULL DEFAULT 0,
        bl08 bigint NOT NULL DEFAULT 0,
        bl09 bigint NOT NULL DEFAULT 0,
        bl10 bigint NOT NULL DEFAULT 0,
        bl11 bigint NOT NULL DEFAULT 0,
        bl12 bigint NOT NULL DEFAULT 0,
        bl13 bigint NOT NULL DEFAULT 0,
        bl14 bigint NOT NULL DEFAULT 0,
        bl15 bigint NOT NULL DEFAULT 0,
        bl16 bigint NOT NULL DEFAULT 0,
        bl01notes text,        
        bl02notes text,
        bl03notes text,
        bl04notes text,
        bl05notes text,
        bl06notes text,
        bl07notes text,
        bl08notes text,
        bl09notes text,
        bl10notes text,
        bl11notes text,
        bl12notes text,
        bl13notes text,
        bl14notes text,
        bl15notes text,
        bl16notes text
        )
        INHERITS (mitra_mitrapk);
        
select baseexec('ALTER TABLE core_crm_customer_health ADD CONSTRAINT mycon'||md5('core_crm_customer_health'||'fkcustomer')||' UNIQUE (fkcustomer)');


          CREATE TABLE core_crm_customer_lipometrisi (
          fkcustomer bigint,
        num01 numeric NOT NULL DEFAULT 0,        
        num02 numeric NOT NULL DEFAULT 0,
        num03 numeric NOT NULL DEFAULT 0,
        num04 numeric NOT NULL DEFAULT 0,
        num05 numeric NOT NULL DEFAULT 0,
        num06 numeric NOT NULL DEFAULT 0,
        num07 numeric NOT NULL DEFAULT 0,
        num08 numeric NOT NULL DEFAULT 0,
        dt01 timestamp without time zone
        )
        INHERITS (mitra_mitrapk);

        COMMENT ON COLUMN core_crm_customer_lipometrisi.num01 IS 'Περιφέρεια Μέσης(cm)';

        CREATE TABLE core_crm_available_duration (
            totalminutes numeric not null default 0,
            totaldays numeric not null default 0,
            totalweeks numeric not null default 0,
            totalmonths numeric not null default 0,
            ordering numeric not null default 0
        )
        INHERITS (mitra_mitrapk);

select baseexec('ALTER TABLE core_crm_available_duration ADD CONSTRAINT mycon'||md5('core_crm_available_duration'||'mykatastima,title')||' UNIQUE (mykatastima,title)');

        CREATE TABLE core_crm_available_service (
            aliasname text
        )
        INHERITS (mitra_mitrapk);

select baseexec('ALTER TABLE core_crm_available_service ADD CONSTRAINT mycon'||md5('core_crm_available_service'||'mykatastima,title')||' UNIQUE (mykatastima,title)');

        

CREATE TABLE core_crm_available_packet_category (
        )
        INHERITS (mitra_mitrapk);

CREATE TABLE core_crm_available_total_times (
            totaltimes numeric
        )
        INHERITS (mitra_mitrapk);

CREATE TABLE core_crm_available_packet (
            fkavailableservice bigint null default 0,
            fkavailablepacketcategory bigint null default 0,
            fkavailableduration bigint null default 0,
            fktotaltimes bigint null default 0,
            recprice numeric not null default 0
        )
        INHERITS (mitra_mitrapk);




select baseexec('ALTER TABLE core_crm_available_packet ADD CONSTRAINT mycon'||md5('core_crm_available_packet'||'mykatastima,title')||' UNIQUE (mykatastima,title)');

        CREATE TABLE core_crm_customer_contract (
            fkcustomer bigint not null,
            fkavailablepacket bigint DEFAULT 0,
            fkavailableservice bigint not null DEFAULT 0,
            fkavailabletaxes bigint not null DEFAULT 0,
            totalminutes numeric NOT NULL DEFAULT 0,
            totaldays numeric NOT NULL DEFAULT 0,
            totalweeks numeric NOT NULL DEFAULT 0,
            totalmonths numeric NOT NULL DEFAULT 0,
            dtstart timestamp without time zone,
            dtend timestamp without time zone,
            totaltimes numeric not null default 0,
            prevtimes numeric not null default 0,
            donetimes numeric not null default 0,
            price numeric not null default 0,
            discountnum numeric not null default 0,
            discountper numeric not null default 0
        )
        INHERITS (mitra_mitrapk);


        CREATE TABLE core_crm_customer_contract_payment (
          fkcustomercontract bigint,
          fkpaymenttype bigint not null,
          fkpaymentreason bigint not null,
          theordtpayment timestamp without time zone,
          theorpayment numeric not null default 0,
          actualdtpayment timestamp without time zone,
          actualpaymenttotal numeric not null default 0,
          actualpaymentwithouttaxis numeric not null default 0,
          actualpaymenttaxis numeric not null default 0,
          fkavailabletaxes bigint not null,          
          blppdlbw numeric NOT NULL DEFAULT 0,
-- DLS20161107
          blisissued bigint not null default 0
          -- DLE20161107          
        )
        INHERITS (mitra_mitrapk);

-- DLS20161107
        

        CREATE TABLE core_crm_recinv_issued (
            fkcorecrmcustomercontractpayment bigint not null,
            fkavailablerecinvtype bigint not null default 0,
            dtissued timestamp without time zone,
            recinvnum bigint not null,
            recinvnumprefix text default ''
        )
        INHERITS (mitra_mitrapk);        
        select baseexec('ALTER TABLE core_crm_recinv_issued ADD CONSTRAINT mycon'||md5('core_crm_recinv_issued'||'fkcorecrmcustomercontractpayment')||' UNIQUE (fkcorecrmcustomercontractpayment)');

        CREATE TABLE core_crm_recinv_printed (
            fkcorecrmrecinvissued bigint not null,
            dtprinted timestamp without time zone
        )
        INHERITS (mitra_mitrapk);

        CREATE TABLE core_crm_expenses (
            fkcoreavailableexpensestype bigint not null default 0,
            fkcoreavailablepaymenttype bigint not null,
            fkcoreavailabletaxes bigint not null default 0,
            dtpayment timestamp without time zone,
            cost numeric
        )
        INHERITS (mitra_mitrapk);
        -- DLE20161107

create table core_crm_resource (
        )
        INHERITS (mitra_mitrapk);

    

select baseexec('ALTER TABLE core_crm_resource ADD CONSTRAINT mycon'||md5('core_crm_resource'||'mykatastima,title')||' UNIQUE (mykatastima,title)');

create table core_crm_plugincalendar_resource (
            fkplugincalendar bigint not null,
            fkresource bigint not null,
            blenabled bigint not null default 0,
            ordering bigint not null default 0,
            generalcolour text,
            textcolour text
        )
        INHERITS (mitra_mitrapk);




select baseexec('ALTER TABLE core_crm_plugincalendar_resource ADD CONSTRAINT mycon'||md5('core_crm_plugincalendar_resource'||'mykatastima,fkplugincalendar,fkresource')||' UNIQUE (mykatastima,fkplugincalendar,fkresource)');


create table core_crm_notes (
            fkuserdone  bigint,
            userdonenotes text,
            bldone  numeric not null default 0
        )
        INHERITS (mitra_mitrapk); 

-- DLS20161111 FIGURA
create table core_crm_where_find_us (            
        )
        INHERITS (mitra_mitrapk); 
-- DLE20161111 FIGURA