insert into core_route(
            routename,routepath,routemodule,routecontroller,routeaction)
    VALUES 
('b2b-lng-admin-core-createmodels-schemaname','/b2b/{lng}/admin/core/createmodels/{schemaname}/','b2b','backend','createmodels')
,('b2b-lng-admin-core-createcsvsjsonss-chemaname','/b2b/{lng}/admin/core/createcsvsjsons/{schemaname}/','b2b','backend','createcsvsjsons')
,('b2b-lng-admin-login','/b2b/{lng}/admin/login(/)?','b2b','backend','login')
,('b2b-lng-admin-lock','/b2b/{lng}/admin/lock(/)?','b2b','backend','lock')
,('b2b-lng-admin-index','/b2b/{lng}/admin/index(/)?','b2b','backend','index')
,('b2b-lng-admin-dynhelperpagehelperpage','/b2b/{lng}/admin/dynhelperpage/{helperpage}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param1','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param1ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param2','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param2ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param3','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param3ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param4','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param4ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param5','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}/{param5}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param5ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}/{param5}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param6','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}/{param5}/{param6}(/)?','b2b','backend','helperpage')
,('b2b-lng-admin-dynhelperpage-helperpage-param6ext','/b2b/{lng}/admin/dynhelperpage/{helperpage}/{param1}/{param2}/{param3}/{param4}/{param6}\.{ext}','b2b','backend','helperpage')
,('b2b-lng-index','/b2b/{lng}(/)?','b2b','frontend','index')
,('b2b-lng-route404','/b2b/{lng}/route404(/)?','b2b','frontend','route404');
