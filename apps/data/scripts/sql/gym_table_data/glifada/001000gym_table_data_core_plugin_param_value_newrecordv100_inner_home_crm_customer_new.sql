
    -- DLS20161014
    INSERT INTO core_plugin_param_value(
           mykatastima,fkplugin, paramname, paramvalue)
    VALUES       
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+formrows','3'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+title+title','addnewcustomertitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+class','col-md-12 col-sm-12'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+id','NewRecord'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+data-writetbl','corecrmcustomer'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+data-writetblpk','id'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+data-extra','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+portlet+attributes+style','padding: 10px; margin-bottom: 5px;'),

        
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+label+trans_text','epwnimotitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+label+required','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+name','clname_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+data-name','lname'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+data-type','simpletext'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+data-title','lastnameerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+10+attributes+data-validation-required','1'),   

    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+label+trans_text','onomatitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+name','cfname_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+data-name','fname'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+data-type','simpletext'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+data-title','firstnameerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+20+attributes+data-validation-required','0'),

    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+label+trans_text','kwdikospelatititle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+name','ccode_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+data-name','code'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+data-type','simpletext'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+data-title','kwdikospelatierrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+30+attributes+data-validation-required','0'),

    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+label+trans_text','kinitotitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+name','cmobile_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+value',''),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+maxlength','10'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-name','telmobile'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-type','integer'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-title','mobileerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-validation-required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-validation-number','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-validation-min','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+attributes+data-validation-max','nolimit'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+icon+static','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+icon+placement','R'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+icon+type','fa'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+40+icon+class','fa-mobile'),
    
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+label+trans_text','statherotitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+name','clandline_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+value',''),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+maxlength','10'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-name','telland'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-type','integer'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-title','statheroerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-validation-required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-validation-number','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-validation-min','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+attributes+data-validation-max','nolimit'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+icon+static','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+icon+placement','R'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+icon+type','fa'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+50+icon+class','fa-phone'),
    
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+label+trans_text','genethliatitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+name','cbirthday_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+data-name','birthday'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+data-type','datepicker'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+data-title','genethliaerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+attributes+data-validation-required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+icon+static','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+icon+placement','R'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+icon+type','fa'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+60+icon+class','fa-calendar'),
    
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+label+trans_text','odosarithmostitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+name','codarth_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+data-name','addressname1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+data-type','simpletext'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+data-title','odosarithmoserrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+70+attributes+data-validation-required','0'),

    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+label+trans_text','polititle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+name','ccity_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+data-name','townname1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+data-type','simpletext'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+data-title','polierrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+80+attributes+data-validation-required','0'),

    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+type','input'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+permissions+r','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+permissions+w','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+label+trans_text','tktitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+label+required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+label+attributes+class','control-label'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+class','form-control text-center new-record-field'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+type','text'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+name','ctk_new_record'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+value',''),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+maxlength','10'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-name','pocname1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-type','integer'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-title','postcodeerrortitle'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-validation-required','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-validation-digits','1'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-validation-min','0'),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname='newrecordv100_inner_home_crm_members_new'),
    'newrecord+fields+90+attributes+data-validation-max','nolimit');