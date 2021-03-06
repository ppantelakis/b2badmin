CREATE OR REPLACE VIEW vf_crm_customer AS 
         SELECT 
        row_number() OVER (ORDER BY core_crm_customer.lname asc,core_crm_customer.fname asc) AS id,
        core_crm_customer.mykatastima,
         core_crm_customer.id fkcustomerid,
         core_crm_customer.id tagsid,
         core_crm_customer.lname||' '||core_crm_customer.fname tagstext, 
         core_crm_customer.fkusercreated fkcustomerfkusercreated,
         core_crm_customer.dt_created fkcustomerdt_created,
        core_crm_customer.fkuserlastupdated fkcustomerfkuserlastupdated,
        core_crm_customer.dt_updated fkcustomerdt_updated,
        core_crm_customer.updatestatus customerupdatestatus,
         core_crm_customer.fkparentlng fkcustomerfkparentlng,
         'cus'||core_crm_customer.fkparentlng fkcustomeruniqid,
         core_gender.id fkgenderid,
         core_gender.fkparentlng fkgenderfkparentlng,
         core_gender.title gendertitle,
         core_salutation.id fksalutationid,
         core_salutation.fkparentlng fksalutationfkparentlng,
         core_salutation.title salutationtitle,
         coalesce(core_crm_customer.lname,' ')||' '||coalesce(core_crm_customer.fname,' ')||' '||coalesce(core_crm_customer.telmobile,' ')||' '||coalesce(core_crm_customer.telland,' ')||' '||coalesce(core_crm_customer.email,' ') gensrch,
         core_crm_customer.lname||' '||core_crm_customer.fname customerfull,
            core_crm_customer.fklng,
            core_crm_customer.lname customerlname,
            core_crm_customer.fname customerfname,
            core_crm_customer.telmobile customertelmobile,
            core_crm_customer.telland customertelland,
            core_crm_customer.birthday customerbirthday,
            core_crm_customer.email customeremail,
            core_crm_customer.photourl customerphotourl,
         fkcountry1 ,
        countryname1 ,
        fkprefecture1 ,
        prefecture1 ,
        fktown1 ,
        townname1 ,
        fkpoc1 ,
        pocname1 ,
        addressname1 ,
            ((core_crm_customer.bldisabled # 1)*(core_gender.bldisabled # 1)*(core_salutation.bldisabled # 1))# 1 bldisabled,
            ((core_crm_customer.bldeleted # 1)*(core_gender.bldeleted # 1)*(core_salutation.bldeleted # 1))# 1 bldeleted,
            core_crm_customer.blpublished*core_gender.blpublished*core_salutation.blpublished blpublished
            
           FROM core_crm_customer,core_gender,core_salutation
           where core_crm_customer.fkgender=core_gender.fkparentlng
                and core_crm_customer.fklng=core_gender.fklng and
                core_crm_customer.fksalutation=core_salutation.fkparentlng
                and core_crm_customer.fklng=core_salutation.fklng
          
          order by core_crm_customer.lname asc,core_crm_customer.fname asc;


-- DLS20161111
                CREATE OR REPLACE VIEW vf_crm_trainer AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_trainer.id asc) AS id,
                       core_crm_trainer.id tagsid,
                       core_crm_trainer.lname||' '||core_crm_trainer.fname tagstext,
                       core_crm_trainer.lname,
                       core_crm_trainer.fname,
                       core_crm_trainer.lname||' '||core_crm_trainer.fname trainerfull,
                       core_crm_trainer.fkusercreated fktrainerfkusercreated,
         core_crm_trainer.dt_created fktrainerdt_created,
        core_crm_trainer.fkuserlastupdated fktrainerfkuserlastupdated,
        core_crm_trainer.dt_updated fktrainerdt_updated,
        core_crm_trainer.updatestatus trainerupdatestatus,
                       core_crm_trainer.telmobile,
                       core_crm_trainer.telland,
                       core_crm_trainer.birthday,
                       core_crm_trainer.email,
                       core_crm_trainer.fklng,
                       core_crm_trainer.fkparentlng fktrainerfkparentlng,
                       core_crm_trainer.bldeleted,
                       core_crm_trainer.bldisabled,
                       core_crm_trainer.blpublished,
                       core_crm_trainer.mykatastima
                       FROM core_crm_trainer;
-- DLE20161111



CREATE OR REPLACE VIEW vf_crm_available_service_duration AS 
         SELECT 
        row_number() OVER (ORDER BY core_crm_available_packet.title asc) AS id,
            core_crm_available_service.fklng,
            core_crm_available_packet.fkparentlng fkavailablepacketfkparentlng,
            core_crm_available_packet.id fkavailablepacketid,
            core_crm_available_packet.mykatastima,
            core_crm_available_service.id fkavailableserviceid,
            core_crm_available_service.fkparentlng fkavailableservicefkparentlng,
            core_crm_available_duration.id fkavailabledurationid,
            core_crm_available_duration.fkparentlng fkavailabledurationfkparentlng,
            core_crm_available_packet.title availablepackettitle,
            core_crm_available_duration.title availabledurationtitle,
            core_crm_available_service.title availableservicetitle,
            totaldays availabledurationtotaldays,
            totalweeks availabledurationtotalweeks,
            totalmonths availabledurationtotalmonths,
            totaltimes availablepacketrectotaltimes,
            recprice availablepacketrecprice,
            ((core_crm_available_duration.bldisabled # 1)*(core_crm_available_service.bldisabled # 1)*(core_crm_available_packet.bldisabled # 1))# 1 bldisabled,
            ((core_crm_available_duration.bldeleted # 1)*(core_crm_available_service.bldeleted # 1)*(core_crm_available_packet.bldeleted # 1))# 1 bldeleted,
            core_crm_available_duration.blpublished*core_crm_available_service.blpublished*core_crm_available_packet.blpublished blpublished
           FROM core_crm_available_duration,
            core_crm_available_service,
            core_crm_available_packet,
            core_crm_available_total_times
          WHERE fkavailableservice=core_crm_available_service.fkparentlng and
                fkavailableduration=core_crm_available_duration.fkparentlng and
                core_crm_available_duration.fklng=core_crm_available_service.fklng and
                core_crm_available_packet.fklng=core_crm_available_service.fklng and
                core_crm_available_packet.fktotaltimes=core_crm_available_total_times.id
          order by core_crm_available_packet.title asc;

CREATE OR REPLACE VIEW vf_crm_customer_contract AS 
         SELECT 
        row_number() OVER (ORDER BY a.fkcustomerfkparentlng asc,b.dtstart desc) AS id,
            a.fkcustomerid,
            a.fkcustomerfkparentlng,
            a.fklng,
            a.mykatastima,
            c.id fkcorecrmavailableserviceid,
            c.title corecrmavailableservicetitle,            
            b.id customercontractid,
            b.fkavailablepacket,
            e.title corecrmavailablepackettitle,
            b.title customercontracttitle,
            b.totalminutes customercontracttotalminutes,
            b.totaldays customercontracttotaldays,
            b.totalweeks customercontracttotalweeks,
            b.totalmonths customercontracttotalmonths,
            b.dtstart customercontractdtstart,
            b.dtend customercontractdtend,
            b.totaltimes customercontracttotaltimes,
            b.prevtimes customercontractprevtimes,
            b.donetimes customercontractdonetimes,
            b.price customercontractprice,
            b.discountnum customercontractdiscountnum,
            b.discountper customercontractdiscountper,
            b.fkavailabletaxes customercontractfkavailabletaxes,
            d.taxpercentage ,
            a.customerfname,
            a.customerlname,
            a.customerfull,
            a.customertelmobile,
            a.customertelland,
            a.customerbirthday,
            a.customeremail,
            a.customerphotourl,
            ((a.bldisabled # 1)*(b.bldisabled # 1)*(c.bldisabled # 1))# 1 bldisabled,
            ((a.bldeleted # 1)*(b.bldeleted # 1)*(c.bldeleted # 1))# 1 bldeleted,
            a.blpublished*b.blpublished*c.blpublished blpublished            
           FROM vf_crm_customer a,
            core_crm_customer_contract b,
            core_crm_available_service c,
            core_available_taxes d,
            core_crm_available_packet e
          WHERE a.fkcustomerfkparentlng=b.fkcustomer and
                b.fkavailableservice=c.id and
                a.fklng=b.fklng and
                b.fklng=c.fklng and
                d.id=b.fkavailabletaxes and
                b.fkavailablepacket=e.id
          order by a.fkcustomerfkparentlng asc, b.dtstart desc;



CREATE OR REPLACE VIEW vf_crm_customer_contract_energa AS 
select * from vf_crm_customer_contract where customercontractdtend>=now();

CREATE OR REPLACE VIEW vf_crm_customer_contract_energa_visits_open AS 
select * from vf_crm_customer_contract_energa where customercontractdonetimes<customercontracttotaltimes;

CREATE OR REPLACE VIEW vf_crm_customer_contract_visits_done AS 
select * from vf_crm_customer_contract where customercontractdonetimes>=customercontracttotaltimes;

CREATE OR REPLACE VIEW vf_crm_customer_contract_payment AS 
         SELECT 
        row_number() OVER (ORDER BY a.fkcustomerfkparentlng asc,a.customercontractdtstart desc,actualdtpayment desc) AS id,
            a.fkcustomerid,
            a.fkcustomerfkparentlng,
            a.fklng,
            a.mykatastima,
            a.fkcorecrmavailableserviceid,
            a.corecrmavailableservicetitle,
            a.customercontractid,
            a.customercontracttitle,
            a.customercontracttotalminutes,
            a.customercontracttotaldays,
            a.customercontracttotalweeks,
            a.customercontracttotalmonths,
            a.customercontractdtstart,
            a.customercontractdtend,
            a.customercontracttotaltimes,
            a.customercontractdonetimes,
            a.customercontractprice,
            a.fkavailablepacket,
            a.corecrmavailablepackettitle,
            a.customercontractdiscountnum,
            a.customercontractdiscountper,
            a.customercontractfkavailabletaxes,
            a.taxpercentage customercontracttaxpercentage,
            a.customerfname,
            a.customerlname,
            a.customerfull,
            a.customertelmobile,
            a.customertelland,
            a.customerbirthday,
            a.customeremail,
            a.customerphotourl,
            a.bldisabled,
            a.bldeleted,
            a.blpublished,
            b.fkavailabletaxes ccpfkavailabletaxes,
            c.taxpercentage ccptaxpercentage,
            b.theordtpayment,
            b.theorpayment,
            b.actualdtpayment,

            -- DLS20161107

            b.id fkcorecrmcustomercontractpaymentid,

            -- DLE20161107

            coalesce( b.actualpaymenttotal,0) actualpaymenttotal,
            b.fkpaymentreason,
            d.title paymentreasontitle,
            b.fkpaymenttype,
            e.title paymenttypetitle,
            coalesce( b.blppdlbw,0) blppdlbw
           FROM vf_crm_customer_contract a
                LEFT OUTER JOIN core_crm_customer_contract_payment b ON 
                    a.customercontractid = b.fkcustomercontract 
                full outer JOIN core_available_taxes c ON  c.id=b.fkavailabletaxes 
                full outer join core_available_payment_reason d on d.id=b.fkpaymentreason
                full outer join core_available_payment_type e on e.id=b.fkpaymenttype
          order by a.fkcustomerfkparentlng asc,a.customercontractdtstart desc,actualdtpayment desc;

CREATE OR REPLACE VIEW vf_crm_customer_contract_energa_payment AS 
select * from vf_crm_customer_contract_payment where customercontractdtend>=now();

CREATE OR REPLACE VIEW vf_crm_customer_contract_energa_visits_open_payment AS 
select * from vf_crm_customer_contract_energa_payment where customercontractdonetimes<customercontracttotaltimes;

CREATE OR REPLACE VIEW vf_crm_customer_contract_visits_done_payment AS 
select * from vf_crm_customer_contract_payment where customercontractdonetimes>=customercontracttotaltimes;

CREATE OR REPLACE VIEW vf_crm_customer_contract_payment_group AS 
         SELECT 
        row_number() OVER (ORDER BY fkcustomerfkparentlng asc) AS id,
            fkcustomerid,
            fkcustomerfkparentlng,
            fklng,
            mykatastima,
            fkcorecrmavailableserviceid,
            corecrmavailableservicetitle,
            customercontractid,
            customercontracttitle,
            fkavailablepacket,
            corecrmavailablepackettitle,
            customercontracttotaldays,
            customercontracttotalweeks,
            customercontracttotalmonths,
            customercontractdtstart,
            customercontractdtend,
            customercontracttotaltimes,
            customercontractdonetimes,
            customercontractprice,
            customerfname,
            customerfull,
            customerlname,
            customertelmobile,
            customertelland,
            customerbirthday,
            customeremail,
            customerphotourl,
            bldisabled,
            bldeleted,
            blpublished,
            sum(actualpaymenttotal) sumactualpaymenttotal ,
	    customercontractprice-sum(actualpaymenttotal)-max(customercontractdiscountnum) sumipoloipo,
            corecrmavailablepackettitle||' '||(vf_crm_customer_contract_payment.customercontractprice - sum(vf_crm_customer_contract_payment.actualpaymenttotal) - max(vf_crm_customer_contract_payment.customercontractdiscountnum))::text||' '||customercontractdtstart::text||'-'||customercontractdtend::text AS paymentviewtitle 
           FROM vf_crm_customer_contract_payment group by fkcustomerid,
            fkcustomerfkparentlng,
            fklng,
            mykatastima,
            fkcorecrmavailableserviceid,
            corecrmavailableservicetitle,
            customercontractid,
            customercontracttitle,
            fkavailablepacket,
            corecrmavailablepackettitle,
            customercontracttotaldays,
            customercontracttotalweeks,
            customercontracttotalmonths,
            customercontractdtstart,
            customercontractdtend,
            customercontracttotaltimes,
            customercontractdonetimes,
            customercontractprice,
            customerfname,
            customerlname,
            customerfull,
            customertelmobile,
            customertelland,
            customerbirthday,
            customeremail,
            customerphotourl,
            bldisabled,
            bldeleted,
            blpublished
          order by fkcustomerfkparentlng asc;


CREATE OR REPLACE VIEW vf_crm_customer_contract_energa_payment_group AS

select * from vf_crm_customer_contract_payment_group where customercontractdtend>=now();

CREATE OR REPLACE VIEW vf_crm_customer_contract_energa_visits_open_payment_group AS

select * from vf_crm_customer_contract_energa_payment_group where customercontractdonetimes<customercontracttotaltimes;

CREATE OR REPLACE VIEW vf_crm_customer_contract_visits_done_payment_group AS

select * from vf_crm_customer_contract_payment_group where customercontractdonetimes>=customercontracttotaltimes;



    CREATE OR REPLACE VIEW vf_crm_customer_address AS 
         SELECT 
        row_number() OVER (ORDER BY core_crm_customer.id asc,core_crm_addresstype.title asc) AS id,
            core_crm_customer.id fkcustomerid,
            core_crm_customer.fkparentlng fkcustomerfkparentlng,
            core_crm_customer_address.id fkcustomeraddressid,
            core_crm_customer_address.fkparentlng fkcustomeraddressfkparentlng,
            core_crm_customer_address.fkaddresstype,
            core_crm_customer_address.fklng,
            core_crm_customer.fname customerfname,
            core_crm_customer.lname customerlname,
            core_crm_customer.telmobile customertelmobile,
            core_crm_customer.telland customertelland,
            core_crm_customer.birthday customerbirthday,
            core_crm_customer.email customeremail,
            core_crm_customer.photourl customerphotourl,
            core_crm_addresstype.title addresstypetitle,
            core_crm_customer_address.addressname customeraddressaddressname,
            core_crm_customer_address.fkregion customeraddressfkregion,
            core_crm_customer_address.fkcountry customeraddressfkcountry,
            core_crm_customer_address.fkprefecture customeraddressfkprefecture,
            core_crm_customer_address.fktown customeraddressfktown,
            core_crm_customer_address.fkpoc customeraddressfkpoc,
            core_crm_customer_address.countryname customeraddresscountryname,
            core_crm_customer_address.prefecturename customeraddressprefecturename,
            core_crm_customer_address.townname customeraddresstownname,
            core_crm_customer_address.regionaddressorvillage customeraddressregionaddressorvillage,
            core_crm_customer_address.regionstreetnum customeraddressregionstreetnum,
            core_crm_customer_address.pocname customeraddresspocname,
            ((core_crm_addresstype.bldisabled # 1)*(core_crm_customer.bldisabled # 1)*(core_crm_customer_address.bldisabled # 1))# 1 bldisabled,
            ((core_crm_addresstype.bldeleted # 1)*(core_crm_customer.bldeleted # 1)*(core_crm_customer_address.bldeleted # 1))# 1 bldeleted,
            core_crm_addresstype.blpublished*core_crm_customer.blpublished*core_crm_customer_address.blpublished blpublished            
           FROM core_crm_addresstype,
                core_crm_customer,
                core_crm_customer_address
          WHERE core_crm_customer_address.fkcustomer=core_crm_customer.id and
                core_crm_customer_address.fkaddresstype=core_crm_addresstype.fkparentlng and
                core_crm_customer_address.fklng=core_crm_addresstype.fklng and
                core_crm_customer.fklng=core_crm_addresstype.fklng
          order by core_crm_customer.id asc,core_crm_addresstype.title asc;















        --DLS20161111
        CREATE OR REPLACE VIEW vf_crm_event AS 
            SELECT 
                row_number() OVER (ORDER BY core_crm_event.id asc) AS id,
                core_crm_event.id fkevent,
                core_crm_event.mykatastima,
                core_crm_event.fkplugincalendarresource,
                core_crm_plugincalendar_resource.fkplugincalendar,
                core_crm_plugincalendar_resource.fkresource,
                core_crm_plugincalendar_resource.title restitle,
                core_crm_plugincalendar_resource.blenabled resblenabled,
                core_crm_plugincalendar_resource.ordering,
                core_crm_plugincalendar_resource.generalcolour resgeneralcolour,
                core_crm_plugincalendar_resource.textcolour restextcolour,
                core_crm_event.blallday evblallday, 
                core_crm_event.dtstart evdtstart, 
                core_crm_event.dtend evdtend, 
                core_crm_event.url evurl, 
                core_crm_event.bleditable evbleditable, 
                core_crm_event.bloverlap evbloverlap, 
                core_crm_event.color evcolor, 
                core_crm_event.backgroundcolor evbackgroundcolor, 
                core_crm_event.bordercolor evbordercolor, 
                core_crm_event.textcolor evtextcolor,
                core_crm_event.title evtitle,
                core_crm_event.bldeleted,
                core_crm_event.blpublished,
                core_crm_event.bldisabled,
                core_crm_event.fkstatus,
                core_crm_event_status.title corcrmeventstatustitle,
                core_crm_event_status.statustitle corecrmeventstatustitle,
                core_crm_event_status.statuscolor corecrmeventstatuscolor
            FROM core_crm_event,
                core_crm_plugincalendar_resource,
                core_crm_event_status
              WHERE core_crm_plugincalendar_resource.id = core_crm_event.fkplugincalendarresource
              AND core_crm_event.fkstatus=core_crm_event_status.id
              order by core_crm_event.id asc;
-- DLE20161111 


CREATE OR REPLACE VIEW vf_core_crm_notes AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_notes.id asc) AS id,
                        core_crm_notes.id fknote,
                        core_crm_notes.fkusercreated,
                        core_crm_notes.dt_created,
                        core_crm_notes.dt_updated,
                        core_crm_notes.fklng,
                        core_crm_notes.title note,
                        core_crm_notes.fkuserdone,
                        core_crm_notes.userdonenotes,
                        core_users.fname||' '||core_users.lname fullname,
                        core_crm_notes.bldone done
                    FROM core_crm_notes, core_users
                    WHERE core_crm_notes.fkusercreated=core_users.id
                    AND core_crm_notes.blpublished=1
                    AND core_crm_notes.bldisabled=0
                    AND core_crm_notes.bldeleted=0;
                    
CREATE OR REPLACE VIEW vf_core_crm_notes_badge_count AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_notes.id asc) AS id,
                        core_crm_notes.id fknote
                    FROM core_crm_notes
                    WHERE core_crm_notes.bldone=0
                    AND core_crm_notes.blpublished=1
                    AND core_crm_notes.bldisabled=0
                    AND core_crm_notes.bldeleted=0;

CREATE OR REPLACE VIEW vf_crm_customer_sindromes_energa AS 
                    SELECT 
                        row_number() OVER (ORDER BY vf_crm_customer_contract.id asc) AS id,
                        mykatastima,
                        customercontractid,
                        fkcustomerfkparentlng,
                        customercontractdtend
                        FROM vf_crm_customer_contract where customercontractdtend>=now();

CREATE OR REPLACE VIEW vf_crm_customer_ipoloipa AS 
                    select * from 
                    (SELECT 
                        row_number() OVER (ORDER BY fkcustomerfkparentlng asc) AS id,
                        mykatastima,
                        fkcustomerfkparentlng, 
                        sum(sumipoloipo) totalipoloipo
                        FROM vf_crm_customer_contract_payment_group group by mykatastima,fkcustomerfkparentlng) a
                    where totalipoloipo>0; 





CREATE OR REPLACE VIEW vf_crm_customer_full_ipoloipa AS 
                    SELECT 
                        a.*,
                        b.customercontracttitle,
                        b.customercontractdtstart,
                        b.customercontractdtend,
                        b.sumcustomercontractprice,
                        b.sumactualpaymenttotal,
                        b.sumipoloipo,b.sumdiscounttotal
                        FROM (
                                select * from vf_crm_customer 
                                where  fkcustomerfkparentlng in 
                                        (select fkcustomerfkparentlng from vf_crm_customer_ipoloipa)
                            ) a,
                            (
                                select 
                                    mykatastima, 
                                    fkcustomerfkparentlng, 
                                    customercontracttitle,
                                    customercontractdtstart,
                                    customercontractdtend,
                                    sum(customercontractprice) sumcustomercontractprice,
                                    sum(sumactualpaymenttotal) sumactualpaymenttotal, 
                                    sum(sumipoloipo) sumipoloipo,
                                    sum(customercontractprice)-sum(sumactualpaymenttotal)-sum(sumipoloipo) sumdiscounttotal 
                                from vf_crm_customer_contract_payment_group 
                                where  fkcustomerfkparentlng in 
                                        (select fkcustomerfkparentlng from vf_crm_customer_ipoloipa)
                                group by mykatastima, 
                                    fkcustomerfkparentlng,
                                    customercontracttitle,
                                    customercontractdtstart,
                                    customercontractdtend
                            ) b
                            where 
                                a.mykatastima=b.mykatastima
                                and
                                a.fkcustomerfkparentlng=b.fkcustomerfkparentlng;


CREATE OR REPLACE VIEW vf_crm_customer_sindromes_expire_month AS 
                    SELECT 
                        *
                        FROM vf_crm_customer_sindromes_energa 
                        where 
                            EXTRACT(year from now())=EXTRACT(year from customercontractdtend) and
                            EXTRACT(month from now())=EXTRACT(month from customercontractdtend); 


CREATE OR REPLACE VIEW vf_crm_customer_full_expire_month AS 
                    SELECT 
                        *
                        FROM vf_crm_customer where fkcustomerfkparentlng in (select fkcustomerfkparentlng from vf_crm_customer_ipoloipa); 


CREATE OR REPLACE VIEW vf_crm_customer_full_energa AS 
                    SELECT 
                        *
                        FROM vf_crm_customer where fkcustomerfkparentlng in (select fkcustomerfkparentlng from vf_crm_customer_sindromes_energa); 







CREATE OR REPLACE VIEW vf_crm_counters AS 
                    SELECT 
                        row_number() OVER () AS id,
                        a.mykatastima,
                        coalesce(eggegramena.totcustomers,0) totcustomers,
                        coalesce(sindromesenerges.totsindromesenerges,0) totsindromesenerges,
                        coalesce(sindromesenerges.totcustomersenerga,0) totcustomersenerga,
                        coalesce(ipoloipa.totcustomerswithipoloipo,0) totcustomerswithipoloipo,
                        coalesce(annualpayment.annualpaymenttotal,0) annualpaymenttotal,
                        coalesce(monthlypayment.monthlypaymenttotal,0) monthlypaymenttotal,
                        coalesce(expiremonth.expiremonthtotal,0) expiremonthtotal
                       FROM 
                        core_katastima a left join
                        (
                            select mykatastima,count(id) expiremonthtotal from vf_crm_customer_sindromes_expire_month group by mykatastima
                        ) expiremonth on a.mykatastima=expiremonth.mykatastima left JOIN (
                                                select mykatastima,count(id) totcustomers from vf_crm_customer group by mykatastima
                                            ) eggegramena
                            ON a.mykatastima=eggegramena.mykatastima left join
                        
                        (
                            SELECT mykatastima,count(customercontractid) totsindromesenerges,count(distinct(fkcustomerfkparentlng)) totcustomersenerga
                                FROM vf_crm_customer_sindromes_energa group by mykatastima
                        ) sindromesenerges ON a.mykatastima=sindromesenerges.mykatastima left join
                        (
                            select mykatastima, count(fkcustomerfkparentlng) totcustomerswithipoloipo,sum(totalipoloipo) from 
                                vf_crm_customer_ipoloipa 
                              group by mykatastima
                        ) ipoloipa ON a.mykatastima=ipoloipa.mykatastima left join
                        (
                            select mykatastima, sum(actualpaymenttotal) annualpaymenttotal FROM vf_crm_customer_contract_payment where EXTRACT(year from now())=extract(year from actualdtpayment) group by mykatastima
                        ) annualpayment ON a.mykatastima=annualpayment.mykatastima left join
                        (
                            select mykatastima, sum(actualpaymenttotal) monthlypaymenttotal FROM vf_crm_customer_contract_payment where EXTRACT(year from now())=extract(year from actualdtpayment) and EXTRACT(month from now())=extract(month from actualdtpayment) group by mykatastima
                        ) monthlypayment ON a.mykatastima=monthlypayment.mykatastima;

--DLS20161031
CREATE OR REPLACE VIEW vf_crm_available_packet AS 
                    SELECT row_number() OVER (ORDER BY core_crm_available_packet.id asc) AS id,
                        core_crm_available_packet.id fkavailablepacketid,
                        core_crm_available_packet.fklng,
                        core_crm_available_packet.fkparentlng,
                        core_crm_available_packet.mykatastima,
                        core_crm_available_packet.recprice packetprice,
                        core_crm_available_packet.id||'{##}'||core_crm_available_total_times.totaltimes||'{##}'||
core_crm_available_packet.recprice||'{##}'||core_crm_available_duration.totalminutes||'{###}'||
core_crm_available_duration.totaldays||'{###}'||core_crm_available_duration.totalweeks||'{###}'||
core_crm_available_duration.totalmonths||'{##}'||core_crm_available_packet.fkavailableservice tagsid,
                        core_crm_available_packet.title tagstext,
                        core_crm_available_duration.id fkavailabledurationtitle,
                        core_crm_available_duration.title availabledurationtitle,
                        core_crm_available_total_times.id fkavailabletotaltimes,
                        core_crm_available_total_times.totaltimes availabletotaltimes,
                        core_crm_available_service.id fkavailableservice,
                        core_crm_available_service.title availableservice,
                        core_crm_available_service.aliasname availableservicealiasname,
                        core_crm_available_packet.blpublished,
                        core_crm_available_packet.bldeleted,
                        core_crm_available_packet.bldisabled
                    FROM core_crm_available_packet, core_crm_available_duration, core_crm_available_total_times,
                        core_crm_available_service
                    WHERE core_crm_available_packet.fkavailableduration=core_crm_available_duration.id
                    AND core_crm_available_packet.fktotaltimes=core_crm_available_total_times.id
                    AND core_crm_available_packet.fkavailableservice=core_crm_available_service.id;
--DLS20161031

-- DLS20161107
CREATE OR REPLACE VIEW vf_crm_recinv_issued_printed AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_recinv_issued.id asc) AS id,
                        core_crm_recinv_issued.id fkcorecrmrecinvissued,
                        core_crm_recinv_issued.fkcorecrmcustomercontractpayment,
                        core_crm_recinv_issued.fkavailablerecinvtype,
                        core_crm_recinv_issued.dtissued,
                        core_crm_recinv_issued.recinvnum,
                        core_crm_recinv_issued.recinvnumprefix,
                        core_crm_recinv_printed.dtprinted,                        
                        core_available_recinv_type.aliasname crmavailablerecinvtypealiasname,
                        core_crm_recinv_issued.mykatastima,
                        core_crm_recinv_issued.bldeleted,
                        core_crm_recinv_issued.bldisabled,
                        core_crm_recinv_issued.blpublished
                    FROM core_crm_recinv_issued, core_available_recinv_type, core_crm_recinv_printed
                    WHERE core_crm_recinv_issued.fkavailablerecinvtype=core_available_recinv_type.id
                    AND core_crm_recinv_issued.id=core_crm_recinv_printed.fkcorecrmrecinvissued;



CREATE OR REPLACE VIEW vf_crm_simple_income_expenses AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_expenses.id asc) AS id,
                        core_crm_expenses.id fkcorecrmexpenses,
                        core_crm_expenses.fkcoreavailableexpensestype,
                        core_crm_expenses.fkcoreavailablepaymenttype,
                        core_crm_expenses.fkcoreavailabletaxes,
                        core_crm_expenses.dtpayment,
                        core_crm_expenses.cost,
                        core_crm_expenses.remarks,
                        core_available_payment_type.title coreavailablepaymenttypetitle,
                        core_available_payment_type.aliasname coreavailablepaymenttypealiasname,
                        core_available_taxes.title coreavailabletaxestitle,
                        core_available_taxes.taxpercentage coreavailabletaxestaxpercentage,
                        core_available_expenses_type.aliasname coreavailableexpensestypealiasname,
                        core_crm_expenses.mykatastima,
                        core_crm_expenses.bldeleted,
                        core_crm_expenses.bldisabled,
                        core_crm_expenses.blpublished,
                        core_crm_expenses.fklng,
                        core_crm_expenses.fkparentlng
                    FROM core_crm_expenses, core_available_expenses_type, core_available_payment_type, core_available_taxes
                    WHERE core_crm_expenses.fkcoreavailableexpensestype=core_available_expenses_type.id
                    AND core_crm_expenses.fkcoreavailablepaymenttype=core_available_payment_type.id
                    AND core_crm_expenses.fkcoreavailabletaxes=core_available_taxes.id;
-- DLE20161107

-- DLS20161111
                CREATE OR REPLACE VIEW vf_crm_customer_event AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_event_customers.id asc) AS id,
                        core_crm_event_customers.id fkcorecrmeventcustomers,
                        core_crm_event_customers.bldeleted,
                        core_crm_event.blpublished,
                        core_crm_event.bldisabled,
                        core_crm_event.mykatastima,
                        core_crm_event.fklng,
                        core_crm_event.fkparentlng,
                        core_crm_event_customers.fkcorecrmcustomer fkcorecrmcustomerfkcorecrmeventcustomers,
                        core_crm_event_customers.fkcorecrmevent fkcorecrmeventfkcorecrmeventcustomers,
                        core_crm_customer.lname||' '||core_crm_customer.fname customerfull
                    FROM core_crm_event_customers, core_crm_event, core_crm_customer
                    WHERE core_crm_event_customers.fkcorecrmcustomer=core_crm_customer.id
                    AND core_crm_event_customers.fkcorecrmevent=core_crm_event.id;

                CREATE OR REPLACE VIEW vf_crm_trainer_event AS 
                    SELECT 
                        row_number() OVER (ORDER BY core_crm_event_trainers.id asc) AS id,
                        core_crm_event_trainers.id fkcorecrmeventcustomers,
                        core_crm_event_trainers.bldeleted,
                        core_crm_event.blpublished,
                        core_crm_event.bldisabled,
                        core_crm_event.mykatastima,
                        core_crm_event.fklng,
                        core_crm_event.fkparentlng,
                        core_crm_event_trainers.fkcorecrmtrainer fkcorecrmtrainerfkcorecrmeventtrainers,
                        core_crm_event_trainers.fkcorecrmevent fkcorecrmeventfkcorecrmeventtrainers,
                        core_crm_trainer.lname||' '||core_crm_trainer.fname trainerfull
                    FROM core_crm_event_trainers, core_crm_event, core_crm_trainer
                    WHERE core_crm_event_trainers.fkcorecrmtrainer=core_crm_trainer.id
                    AND core_crm_event_trainers.fkcorecrmevent=core_crm_event.id;
            -- DLE20161111 


