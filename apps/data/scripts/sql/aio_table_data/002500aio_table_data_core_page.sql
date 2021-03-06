INSERT INTO core_page(
             pagename, 
            fkroute)
    VALUES 
        ('adminloginpage', (select id from core_route where routename='b2b-lng-admin-login')),
        ('adminlockpage', (select id from core_route where routename='b2b-lng-admin-lock')),
        ('adminmainpage', (select id from core_route where routename='b2b-lng-admin-index')),
        ('outer-sidebar', (select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-main', (select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-my-fullcalendarv261',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-dl',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
-- DL START 25092016
        ('js-dl-helpercontainer',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-dl-generalajax',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-dl-dashboard',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        ('js-pp-dashboard',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        -- DL END 25092016 
        ('js-dl-dashboard-notes',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),
        -- DLE20161002

        -- DLS20161003
        ('outer-header-crm-notes',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),

        ('inner_home_crm_calendar_managment',(select id from core_route where routename='b2b-lng-admin-dynhelperpagehelperpage')),

        ('js-dl-newrecord',(select id from core_route where   routename='b2b-lng-admin-dynhelperpagehelperpage')),
        
        -- DLS20161102
        ('js-dl-deleterecord',(select id from core_route where   routename='b2b-lng-admin-dynhelperpagehelperpage')),
('inner_home_crm_delete_record',(select id from core_route where   routename='b2b-lng-admin-dynhelperpagehelperpage'));
        -- DLE20161102