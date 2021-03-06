delete from core_plugin 
where mykatastima=:mykatastima;

INSERT INTO core_plugin(
                mykatastima,fkavailableplugin,blenabled,pluginname,pluginfirstkey)
        VALUES 
    
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1, 
        'datatablesv11010_inner_home_crm_event_modal_add_members','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='modalgeneralv100'),
        1, 
        'modalgeneralv100_inner_home_crm_event_modal_quick_tpls','CreateEventQuickTpls'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1, 
        'datatablesv11010_inner_home_crm_trainers','DataTableAjax'),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_contracts_all','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_energa','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_ipoloipo','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_scexpireinmonth','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_calendar','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_energa','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_ipoloipo','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_scexpireinmonth','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts','DataTableAjax2'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts_all','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts_payments','DataTableAjax2'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesdetailstablev100'),
        1,
        'datatablesdetailstable_inner_home_crm_members_details','Row_Details_HtmlTable'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesdetailstablev100'),
        1,
        'datatablesdetailstable_inner_home_crm_members_energa_details','Row_Details_HtmlTable'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesdetailstablev100'),
        1,
        'datatablesdetailstable_inner_home_crm_members_ipoloipo_details','Row_Details_HtmlTable'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesdetailstablev100'),
        1,
        'datatablesdetailstable_inner_home_crm_members_scexpireinmonth_details','Row_Details_HtmlTable'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_index','PageHelperHeader'
    ),

    (
        :mykatastima,(SELECT id FROM core_available_plugin where pluginaliasname='fullcalendarv261'),
        1,
        'fullcalendarv261','Full_Calendar'
    ),


-- DLS20161015
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_service_contracts_new','New_Record'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_members_new','New_Record'
    ),

-- DLS20161031
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_packets','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_packets_new','New_Record'
    ),
-- DLE20161031

    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_contracts_energa_all','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts_energa_all','DataTableAjax'
    ),


    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_contracts_energa_visits_open_all','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts_energa_visits_open_all','DataTableAjax'
    ),


    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pageheaderv100'),
        1,
        'pageheaderv100_inner_home_crm_members_contracts_visits_done_all','PageHelperHeader'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_contracts_visists_done_all','DataTableAjax'
    ),

    -- DLS20161107
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_services','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_receipts','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_income_expenses','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_income_expenses_new','New_Record'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_services_new','New_Record'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_members_contracts_new','New_Record'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='newrecordv100'),
        1,
        'newrecordv100_inner_home_crm_members_contracts_payments_new','New_Record'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='pdfprintv100'),
        1,
        'printpdfv100_inner_home_crm_pdf','Print_PDF'
    ),
    -- DLE20161107

    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_ipoloipa','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'pageheaderv100_inner_home_crm_members_ipoloipa','PageHelperHeader'
    ),

(
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'datatablesv11010_inner_home_crm_members_lixiprothesma','DataTableAjax'
    ),
    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesv11010'),
        1,
        'pageheaderv100_inner_home_crm_members_lixiprothesma','PageHelperHeader'
    ),

-- DLS20161111
    (
        :mykatastima,(SELECT id FROM core_available_plugin where pluginaliasname='fullcalendarv261'),
        1,
        'fullcalendarv261_inner_home_crm_event_modal_contents_edit','Full_Calendar'
    ),
    -- DLE

    (
        :mykatastima,(select id from core_available_plugin where   pluginaliasname='datatablesdetailstablev100'),
        1,
        'datatablesdetailstable_inner_home_crm_trainers_details','Row_Details_HtmlTable'
    );