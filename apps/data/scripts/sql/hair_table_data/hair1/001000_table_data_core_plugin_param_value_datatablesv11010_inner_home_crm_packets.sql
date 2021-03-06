set my.pluginname to 'datatablesv11010_inner_home_crm_packets';

delete from core_plugin_param_value 
where mykatastima=:mykatastima and fkplugin in (select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname')));










INSERT INTO core_plugin_param_value(
           mykatastima,fkplugin, paramname, paramvalue)
    VALUES
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'trans_table_title','packetstitle'
    ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'blgensrch','1'
--     ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+extrasearch',''
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+col','3'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+sort','asc'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+pagelength','20'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+lengthmenukeys','10,20,50,100,150'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'async_req_data_param+lengthmenuvalues','10,20,50,100,150'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'Actions_Tools+blshow','1'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'Button_New+blshow','1'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'Button_New+title','newpackettitle'
    ),
    -- DLS20161107
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'Button_New+attrs+data-newrecord','inner_home_crm_packets'
    ),
    -- DLE20161107
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'Table_Cols+blshow','1'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+idseq','1'
    ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+expandedit','0'
--     ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+actions+btn2+a+attrs+class','btn btn-xs default red deleterecord'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+actions+btn2+a+attrs+data-action','Delete'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+actions+btn2+a+attrs+data-delete','delpacketrec'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+actions+btn2+a+text','Delete'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+actions+btn2+i+attrs+class','fa fa-trash'
    ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn1+a+attrs+class','btn btn-xs default green'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn1+a+attrs+data-action','Edit'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn1+a+text','Edit'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn1+i+attrs+class','fa fa-edit'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn2+a+attrs+class','btn btn-xs default red'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn2+a+attrs+data-action','Delete'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn2+a+text','Delete'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+actions+btn2+i+attrs+class','fa fa-trash'
--     ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'translates+trans_successmessage','successmessage'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'translates+trans_youhaverequestedtoview','youhaverequestedtoview'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'translates+trans_recordsbutduethelimitationreturnedonly','recordsbutduethelimitationreturnedonly'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'translates+trans_querytook','querytook'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+readtblname','Vfcrmavailablepacket'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+writetblname','Corecrmavailablepacket'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+readpk','fkparentlng'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+writepk','id'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+extrasearch+fklng+value','current'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'datasource+extrasearch+fklng+searchmethod','Exact'
    ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+heading+trans_title','Gender'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+heading+width','1%'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+heading+sortable','true'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+type','select'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+searchmethod','Exact'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+searchkey','fkgenderfkparentlng'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+tblname','coregender'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+kind','production'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+keyval','id'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+showval','title'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+params+fklng','current'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+params+bldeleted','0'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+params+blpublished','1'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+filter+values+datasource+params+bldisabled','0'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+gendertitle+cells+class','hcenter'
--     ), 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+heading+trans_title','Salutation'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+heading+width','1%'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+heading+sortable','true'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+type','select'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+searchmethod','Exact'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+searchkey','fksalutationfkparentlng'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+tblname','coresalutation'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+kind','production'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+keyval','id'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+showval','title'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+params+fklng','current'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+params+bldeleted','0'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+params+blpublished','1'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+filter+values+datasource+params+bldisabled','0'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+salutationtitle+cells+class','hcenter'
--     )
--     ,
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+heading+trans_title','packettitle'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+heading+width','5%'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+heading+sortable','true'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+filter+type','input'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+filter+searchmethod','Like'
    )
    ,
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+tagstext+cells+class','hcenter'
    )
    ,
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+heading+trans_title','durationtitle'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+heading+width','5%'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+heading+sortable','true'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+filter+type','input'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+filter+searchmethod','Like'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabledurationtitle+cells+class','hcenter'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+heading+trans_title','servicetitle'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+heading+width','5%'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+heading+sortable','true'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+filter+type','input'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+filter+searchmethod','Like'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availableservice+cells+class','hcenter'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+heading+trans_title','parousiestitle'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+heading+width','5%'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+heading+sortable','true'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+filter+type','input'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+filter+searchmethod','Like'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+availabletotaltimes+cells+class','hcenter'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+heading+trans_title','pricetitle'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+heading+width','5%'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+heading+sortable','true'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+filter+type','input'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+filter+searchmethod','Like'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+cells+class','hcenter'
    ),
    (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
	'cols+packetprice+format','money'
    );
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+heading+trans_title','Birthdate'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+format','date'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+heading+width','7%'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+heading+sortable','true'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+filter+type','input'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customerbirthday+filter+searchmethod','Like'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+heading+trans_title','Email'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+heading+width','7%'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+heading+sortable','true'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+filter+type','input'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+filter+searchmethod','Like'
--     ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'cols+customeremail+cells+class','hcenter'
--     ),
-- 
-- (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+class','table table-striped table-bordered table-hover tblCmod' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tabletype','table' ),
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+hidden+mykatastima',:mykatastima ),
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol1+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol1+trans_text','Gender' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol1+width','5%' ),
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol2+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol2+trans_text','Salutation' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol2+width','10%' ),
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol3+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol3+trans_text','Lastname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol3+width','5%' ),
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol4+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol4+trans_text','Firstname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr1+tcol4+width','5%' ),
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+type','content_select_list' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+tblname','coregender' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+params+fklng','current' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+params+bldeleted','0' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+params+blpublished','1' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+params+bldisabled','0' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+keyval','id' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+datasource+showval','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+html+fieldname','fkgender' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+html+class','bs-select form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol1+notinitreadonly','' ),
-- 
-- 
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+type','content_select_list' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+tblname','coresalutation' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+params+fklng','current' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+params+bldeleted','0' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+params+blpublished','1' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+params+bldisabled','0' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+keyval','id' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+datasource+showval','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+html+fieldname','fksalutation' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+html+class','bs-select form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol2+notinitreadonly','' ),
-- 
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+type','content_input' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+field','lname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+html+fieldname','lname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol3+notinitreadonly','' ),
--    
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+type','content_input' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+field','fname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+html+fieldname','fname' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr2+tcol4+notinitreadonly','' ),
-- 
--     
-- 
--     
--     
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol1+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol1+trans_text','Mobilephone' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol1+width','10%' ),
--     
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol2+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol2+trans_text','Landphone' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol2+width','5%' ),
--     
--     
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol3+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol3+trans_text','Email' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol3+width','5%' ),
-- 
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol4+type','title' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol4+trans_text','Birthdate' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr3+tcol4+width','5%' ),
-- 
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+type','content_input' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+field','telmobile' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+html+fieldname','telmobile' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol1+notinitreadonly','' ),
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+type','content_input' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+field','telland' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+html+fieldname','telland' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol2+notinitreadonly','' ),
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+type','content_input' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+field','email' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+html+fieldname','email' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol3+notinitreadonly','' )
-- 
--     ,
-- 
--     
-- 
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+width','' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+type','content_input_date' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+field','birthday' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+html+fieldname','birthday' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+html+class','form-control' ),
--     (:mykatastima,(select id from core_plugin where mykatastima=:mykatastima and  pluginname=(SELECT current_setting('my.pluginname'))),
-- 	'newrecord+tbl+tr4+tcol4+notinitreadonly','' );