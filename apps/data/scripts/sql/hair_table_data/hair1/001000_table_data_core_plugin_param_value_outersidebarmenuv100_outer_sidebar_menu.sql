set my.menufirstkey to 'hair0';
set my.pluginname to 'outersidebarmenuv100_outer_sidebar_menu';

delete from core_plugin_param_value 
where mykatastima=:mykatastima and fkplugin in (select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname')));



INSERT INTO core_plugin_param_value(mykatastima,fkplugin, paramname, paramvalue) VALUES 

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+pageid','inner_home_index'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+li+class','start nav-item'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+a+i+0+class','icon-home'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+a+span+0+class','title'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+a+span+0+trans_content','Dashboard'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+trans_pagetitle','Dashboard'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+controller','GeneralPageController'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+defaultpage','0'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+140+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+140+path+1','js/controllers/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+140+filename','GeneralPageController.js'),

/* DL START 24092016 */
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+150+localurl+pagename','helperpage'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+150+localurl+helperpage','js-dl-helpercontainer'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+150+localurl+mykatastima',:mykatastima),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+160+localurl+pagename','helperpage'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+160+localurl+helperpage','js-dl-generalajax'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+160+localurl+mykatastima',:mykatastima),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+170+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+170+localurl+helperpage','js-dl-dashboard'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+170+localurl+mykatastima',:mykatastima),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+175+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+175+localurl+helperpage','js-pp-dashboard'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+175+localurl+mykatastima',:mykatastima),
/* DL END 24092016 */ 

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+180+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+180+localurl+helperpage','js-dl-dashboard-notes'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+180+localurl+mykatastima',:mykatastima),

 -- DLS20161016
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+181+localurl+pagename','helperpage'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+181+localurl+helperpage','js-dl-newrecord'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+181+localurl+mykatastima',:mykatastima), 

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+182+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+182+path+1','jquery-validation/js/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+182+filename','jquery.validate.min.js'), 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+183+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+183+path+1','jquery-validation/js/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+183+filename','additional-methods.min.js'), 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+184+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+184+path+1','bootstrap-datepicker/js/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+184+filename','bootstrap-datepicker.min.js'), 

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+185+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+185+path+1','jquery-inputmask/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+185+filename','jquery.inputmask.bundle.min.js'),
-- 
-- -- DLE20161016 
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+190+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+190+path+1','bootstrap-confirmation/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+190+filename','bootstrap-confirmation.min.js'), 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+200+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+200+path+1','typeahead/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+200+filename','handlebars.min.js'), 
--(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+210+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+210+path+1','typeahead/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'0+angular+js+210+filename','typeahead.bundle.min.js'), 


(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+pageid',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+type','group'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+li+class','nav-item'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+a+i+0+class','fa fa-indent'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+a+span+0+class','title'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+a+span+0+trans_content','Crm Hair Salon'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+a+span+1+class','arrow'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+pageid','inner_home_crm_calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+a+i+0+class','icon-calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+a+span+0+trans_content','Calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+trans_pagetitle','Calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+controller','GeneralPageController'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+0+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+0+path+1','bootstrap-daterangepicker/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+0+filename','daterangepicker.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+1+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+1+path+1','morris/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+1+filename','morris.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+2+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+2+path+1','plugins/fullcalendarv261/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+2+filename','fullcalendar.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+3+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+3+path+1','bootstrap-datepicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+3+filename','bootstrap-datepicker3.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+4+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+4+path+1','bootstrap-datepaginator/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+4+filename','bootstrap-datepaginator.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+5+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+5+path+1','jqvmap/jqvmap/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+5+filename','jqvmap.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+6+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+6+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+6+filename','plugins-md.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+7+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+7+path+1','bootstrap-colorpicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+7+filename','colorpicker.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+8+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+8+path+1','jquery-minicolors/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+8+filename','jquery.minicolors.css'),
/* LEONIDAS START NEW CODE */
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+9+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+9+path+1','bootstrap-modal/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+9+filename','bootstrap-modal-bs3patch.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+10+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+10+path+1','bootstrap-modal/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+10+filename','bootstrap-modal.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+11+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+11+path+1','font-awesome/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+11+filename','font-awesome.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+12+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+12+path+1','simple-line-icons/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+12+filename','simple-line-icons.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+13+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+13+path+1','uniform/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+13+filename','uniform.default.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+14+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+14+path+1','bootstrap-switch/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+14+filename','bootstrap-switch.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+15+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+15+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+15+filename','components.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+16+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+16+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+16+filename','plugins.min.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+17+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+17+path+1','plugins/bootstrap-tagsinput/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+17+filename','bootstrap-tagsinput.css'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+18+path+0','globalpath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+18+path+1','plugins/typeahead/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+18+filename','typeahead.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+19+path+0','globalpath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+19+path+1','plugins/datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+19+filename','datatables.min.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+20+path+0','globalpath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+20+path+1','plugins/datatables/plugins/bootstrap/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+20+filename','datatables.bootstrap.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+21+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+21+path+1','plugins/bootstrap-timepicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+css+21+filename','bootstrap-timepicker.min.css'),
/* LEONIDAS END NEW CODE */

--(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+path+0','pluginspath'),
--(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+path+1',''),
--(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+filename','moment.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+path+1',''),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+0+filename','moment-with-locales.js'),


(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+1+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+1+path+1','bootstrap-daterangepicker/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+1+filename','daterangepicker.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+2+path+0','templateadmincustompath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+2+path+1','plugins/fullcalendarv261/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+2+filename','fullcalendar.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+3+path+0','templateadmincustompath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+3+path+1','plugins/fullcalendarv261/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+3+filename','lang-all.js'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+4+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+4+path+1','bootstrap-datepicker/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+4+filename','bootstrap-datepicker.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+5+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+5+path+1','bootstrap-datepaginator/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+5+filename','bootstrap-datepaginator.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+6+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+6+path+1','js/controllers/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+6+filename','GeneralPageController.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+7+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+7+path+1','bootstrap-colorpicker/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+7+filename','bootstrap-colorpicker.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+8+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+8+path+1','jquery-minicolors/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+8+filename','jquery.minicolors.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+9+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+9+path+1','js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+9+filename','scheduler.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+10+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+10+localurl+helperpage','js-my-fullcalendarv261'),
/* LEONIDAS START NEW CODE */
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+11+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+11+path+1','bootstrap-modal/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+11+filename','bootstrap-modalmanager.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+12+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+12+path+1','bootstrap-modal/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+12+filename','bootstrap-modal.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+13+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+13+path+1','select2/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+13+filename','select2.full.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+14+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+14+path+1','jquery-validation/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+14+filename','jquery.validate.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+15+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+15+path+1','jquery-validation/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+15+filename','additional-methods.min.js'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+16+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+16+path+1','bootstrap-datepicker/js/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+16+filename','bootstrap-datepicker.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+17+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+17+path+1','bootstrap-wysihtml5/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+17+filename','wysihtml5-0.3.0.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+18+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+18+path+1','bootstrap-wysihtml5/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+18+filename','bootstrap-wysihtml5.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+19+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+19+path+1','ckeditor/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+19+filename','ckeditor.js'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+20+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+20+path+1','bootstrap-markdown/lib/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+20+filename','markdown.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+21+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+21+path+1','bootstrap-markdown/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+21+filename','bootstrap-markdown.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+22+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+22+localurl+helperpage','js-dl-modalgeneralv100'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+22+localurl+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+23+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+23+path+1','plugins/bootstrap-tabdrop/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+23+filename','bootstrap-tabdrop.js'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+24+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+24+path+1','plugins/bootstrap-tagsinput/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+24+filename','bootstrap-tagsinput.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+25+path+0','globalpath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+25+path+1','plugins/typeahead/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+25+filename','handlebars.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+26+path+0','globalpath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+26+path+1','plugins/typeahead/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+26+filename','typeahead.bundle.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+27+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+27+path+1','datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+27+filename','datatables.all.min.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+28+localurl+pagename','helperpage'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+28+localurl+helperpage','js-datatable'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+28+localurl+mykatastima',:mykatastima),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+29+localurl+pagename','helperpage'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+29+localurl+helperpage','js-dl'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+29+localurl+mykatastima',:mykatastima),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+30+localurl+pagename','helperpageparam1'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+30+localurl+helperpage','js-table-ajax'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+30+localurl+param1','col=3:sort=asc:pagelength=20:lengthmenukeys=10,20,50,100,150,250,500,-1:lengthmenuvalues=10,20,50,100,150,250,500,"All":pageurl=inner_home_crm_event_modal_add_members'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angularbottom+js+30+localurl+mykatastima',:mykatastima),

/* 18092016 START ALLAGES */
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+31+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+31+path+1','plugins/bootstrap-timepicker/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+31+filename','bootstrap-timepicker.min.js'),
/* 18092016 END ALLAGES */

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+32+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+32+path+1','jquery-inputmask/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+0+angular+js+32+filename','jquery.inputmask.bundle.min.js'),

/* LEONIDAS END NEW CODE */
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+pageid','data-table-ajax-level1/inner_home_crm_members'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+a+i+0+class','fa fa-user'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+a+span+0+trans_content','Members'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+trans_pagetitle','Members'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+controller','GeneralPageController'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+0+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+0+path+1','select2/css/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+0+filename','select2.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+1+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+1+path+1','bootstrap-datepicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+1+filename','bootstrap-datepicker.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+2+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+2+path+1','datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+2+filename','datatables.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+3+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+3+path+1','datatables/plugins/bootstrap/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+3+filename','datatables.bootstrap.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+4+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+4+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+css+4+filename','plugins-md.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+0+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+0+path+1','select2/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+0+filename','select2.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+1+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+1+path+1','datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+1+filename','datatables.all.min.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+2+localurl+pagename','helperpageparam1'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+2+localurl+helperpage','js-datatable'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+2+localurl+param1','inner_home_settings_tables'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+2+localurl+mykatastima',:mykatastima),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+3+localurl+pagename','helperpageparam1'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+3+localurl+helperpage','js-table-ajax'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+3+localurl+param1','col=3:sort=asc:pagelength=20:lengthmenukeys=10,20,50,100,150,250,500,-1:lengthmenuvalues=10,20,50,100,150,250,500,"All":pageurl=inner_home_crm_members'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angularbottom+js+3+localurl+mykatastima',:mykatastima),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+4+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+4+path+1','js/controllers/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+4+filename','GeneralPageController.js'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+5+path+0','assetspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+5+path+1','pages/scripts/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+5+filename','portlet-ajax.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+6+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+6+path+1',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1+angular+js+6+filename','jquery.pulsate.min.js'),




(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+pageid','data-table-ajax-level1/inner_home_crm_members_contracts_all'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+a+i+0+class','fa fa-user'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+a+span+0+trans_content','MembersContracts'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+trans_pagetitle','MembersContracts'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+controller','GeneralPageController'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+1+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+1+path+1','bootstrap-datepicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+1+filename','bootstrap-datepicker.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+4+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+4+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+css+4+filename','plugins-md.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+0+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+0+path+1','select2/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+0+filename','select2.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+4+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+4+path+1','js/controllers/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+4+filename','GeneralPageController.js'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+5+path+0','assetspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+5+path+1','pages/scripts/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+5+filename','portlet-ajax.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+6+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+6+path+1',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+1a+angular+js+6+filename','jquery.pulsate.min.js'),








(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+pageid','data-table-ajax-level1/inner_home_crm_trainers'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+a+i+0+class','icon-user'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+a+span+0+trans_content','Trainers'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+trans_pagetitle','Trainers'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+controller','GeneralPageController'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+0+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+0+path+1','select2/css/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+0+filename','select2.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+1+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+1+path+1','bootstrap-datepicker/css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+1+filename','bootstrap-datepicker.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+2+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+2+path+1','datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+2+filename','datatables.css'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+3+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+3+path+1','datatables/plugins/bootstrap/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+3+filename','datatables.bootstrap.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+4+path+0','globalpath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+4+path+1','css/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+css+4+filename','plugins-md.css'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+0+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+0+path+1','select2/js/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+0+filename','select2.min.js'),

-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+1+path+0','pluginspath'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+1+path+1','datatables/'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+1+filename','datatables.all.min.js'),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+2+localurl+pagename','helperpageparam1'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+2+localurl+helperpage','js-datatable'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+2+localurl+param1','inner_home_settings_tables'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+2+localurl+mykatastima',:mykatastima),
-- 
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+3+localurl+pagename','helperpageparam1'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+3+localurl+helperpage','js-table-ajax'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+3+localurl+param1','col=3:sort=asc:pagelength=20:lengthmenukeys=10,20,50,100,150,250,500,-1:lengthmenuvalues=10,20,50,100,150,250,500,"All":pageurl=inner_home_crm_trainers'),
-- (:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+3+localurl+mykatastima',:mykatastima),


(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+4+path+0','templateadmincustompath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+4+path+1','js/controllers/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+4+filename','GeneralPageController.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+5+path+0','assetspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+5+path+1','pages/scripts/'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+5+filename','portlet-ajax.min.js'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+6+path+0','pluginspath'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+6+path+1',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+2+angular+js+6+filename','jquery.pulsate.min.js'),


(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+3+pageid','data-table-ajax-level1/inner_home_crm_subscriptions'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+3+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+3+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+3+a+i+0+class','icon-basket'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+3+a+span+0+trans_content','Subscriptions'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+4+pageid','data-table-ajax-level1/inner_home_crm_rooms'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+4+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+4+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+4+a+i+0+class','fa fa-square-o'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+4+a+span+0+trans_content','Rooms'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+pageid',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+type','group'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+li+class','nav-item'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+a+i+0+class','fa fa-indent'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+a+span+0+class','title'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+a+span+0+trans_content','Settings'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+a+span+1+class','arrow'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+pageid',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+type','group'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+li+class','nav-item'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+a+i+0+class','fa fa-globe'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+a+span+0+class','title'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+a+span+0+trans_content','Administrator'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+a+span+1+class','arrow'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+0+pageid','data-table-ajax-level1/inner_home_settings_administrator_users'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+0+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+0+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+0+a+i+0+class','fa fa-users'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+0+a+span+0+trans_content','Users'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+1+pageid','data-table-ajax-level1/inner_home_settings_administrator_groups'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+1+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+1+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+1+a+i+0+class','icon-grid'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+1+a+span+0+trans_content','Groups'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+2+pageid','data-table-ajax-level1/inner_home_settings_administrator_calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+2+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+2+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+2+a+i+0+class','icon-calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+2+a+span+0+trans_content','Calendar'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+3+pageid','data-table-ajax-level1/inner_home_settings_administrator_currency'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+3+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+3+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+3+a+i+0+class','fa fa-money'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+0+item+3+a+span+0+trans_content','Currency'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+pageid',''),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+type','group'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+li+class','nav-item'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+a+i+0+class','fa fa-globe'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+a+span+0+class','title'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+a+span+0+trans_content','User'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+a+span+1+class','arrow'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+0+pageid','data-table-ajax-level1/inner_home_settings_user_language'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+0+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+0+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+0+a+i+0+class','fa fa-language'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+0+a+span+0+trans_content','Language'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+1+pageid','data-table-ajax-level1/inner_home_settings_user_datetime'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+1+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+1+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+1+a+i+0+class','fa fa-clock-o'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+1+a+span+0+trans_content','Datetime'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+pageid','data-table-ajax-level1/inner_home_settings_user_calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+a+i+0+class','icon-calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+a+span+0+trans_content','Calendar'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+2+a+span+0+class','title'),

(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+pageid','data-table-ajax-level1/inner_home_settings_user_currency'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+mykatastima',:mykatastima),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+type','link'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+a+i+0+class','fa fa-money'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+a+span+0+trans_content','Currency'),
(:mykatastima,(select id from core_plugin where pluginname=(SELECT current_setting('my.pluginname'))),'item+'||(SELECT current_setting('my.menufirstkey'))||'1000+item+90000+item+1+item+3+a+span+0+class','title');


