<?php

class CustomHelperBackendControllerHelperPagePosts extends \Phalcon\Tag {

    public static function Do_Action() {
        $di = \Phalcon\DI::getDefault();
        $req = $_REQUEST;
        $jsonarr = array('success' => 0, 'msg' => 'Failed to update', 'pk' => '-1');

        $lng = $di->controller_params_array['lng'];
        $helperpage = isset($di->controller_params_array['helperpage']) ? $di->controller_params_array['helperpage'] : null;
        $param1 = isset($di->controller_params_array['param1']) ? $di->controller_params_array['param1'] : null;
        $param2 = isset($di->controller_params_array['param2']) ? $di->controller_params_array['param2'] : null;
        $param3 = isset($di->controller_params_array['param3']) ? $di->controller_params_array['param3'] : null;
        $param4 = isset($di->controller_params_array['param4']) ? $di->controller_params_array['param4'] : null;
        if (isset($helperpage, $param1)) {
            if ($param1 == 'plugin') {
                if (isset($param2, $param3)) {
                    if ($param2 == 'fullcalendar') {
                        if ($param3 == 'savesettings') {
                            $jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginFullCalendar::Save_Settings();
                        } elseif ($param3 == 'getsettings') {
                            $jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginFullCalendar::Get_Settings();
                        } elseif ($param3 == 'getevents') {
                            $jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginFullCalendar::Get_Events();
                        }
                        // DLS20161111
                        elseif ($param3 == 'editsingleevent') {
                            $jsonarr = \B2b\Models\CoreModels\DlB2bAdminFullCalendar::Edit_Event();
                        } elseif ($param3 == 'completeevent') {
                            $jsonarr = \B2b\Models\CoreModels\DlB2bAdminFullCalendar::Complete_Event();
                        }
                        // DLE20161111
                    } elseif ($param2 == 'datatablesdetailstable') {
                        if ($param3 == 'savedata') {
                            $jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginRowDetailsHtmlTable::Save_Data();
                        } elseif ($param3 == 'getsettings') {
                            //$jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginFullCalendar::Get_Settings();
                        } elseif ($param3 == 'getevents') {
                            //$jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginFullCalendar::Get_Events();
                        }
                    } elseif ($param2 == 'datatables') {
                        if ($param3 == 'insertdata') {
                            $jsonarr = \B2b\Models\CoreModels\PpB2bAdminMetronic454PluginDataTableAjax::Insert_Data();
                        }
                    }
                    // DLS20161020
                    elseif ($param2 == B2b\Models\CoreModels\DlB2bAdminMetronic454PluginNewRecord::Get_Post_PluginName()) {
                        if ($param3 == B2b\Models\CoreModels\DlB2bAdminMetronic454PluginNewRecord::Get_Post_PluginSaveAction()) {
                            $jsonarr = \B2b\Models\CoreModels\DlB2bAdminMetronic454PluginNewRecord::Save();
                        }
                    }
                    // DLE20161020 
                }
            } else if ($param1 == 'getrecord') {
                if (isset($param2, $param3, $param4)) {
                    $blsuccess = 0;
                    $msg = 'Failed to get record';
                    $tblname = $param2;
                    $fieldid = $param3;
                    $fieldvalue = $param4;
                    $fieldid = MyCustomHelperClassTools::getOriginalField($tblname, $fieldid);
                    $classname = \MyCustomHelperClassTools::My_Core_Get_Classname($tblname, 'production');
                    $data = B2b\Models\CoreModels\PpB2bAdminGetByField::getByField($fieldid, $fieldvalue, $classname);
                    if (count($data) > 0) {
                        $blsuccess = 1;
                        $msg = 'Found ' . count($data) . ' record(s)';
                    }
                    $jsonarr = array('success' => $blsuccess, 'msg' => $msg, 'data' => $data);
                }
            } else if ($param1 == 'newrecord') {
                if (isset($param2)) {
                    $glb_request = $di->controller_params_array['glb_request'];
                    $mydata = $glb_request['mydata'];
                    $blsuccess = 0;
                    $msg = 'Failed to save record';
                    $tblname = $param2;
                    $tblnameupper = str_ireplace('_', '', mb_strtoupper($tblname));
                    $classname = \MyCustomHelperClassTools::My_Core_Get_Classname($tblname, 'production');
                    $objnewrec = new $classname();
                    foreach ($mydata as $key => $value) {
                        $fieldid = MyCustomHelperClassTools::getOriginalField($tblname, ucfirst($key));
                        $prop = 'set' . $fieldid;
                        $objnewrec->$prop($value);
                    }
                    $objnewrec->setFkusercreated(MyCustomHelperSession::My_get_param_val_jsonrowuser_id());
                    $objnewrec->save();
                    $messages = $objnewrec->getMessages();
                    if (count($messages)) {
                        foreach ($messages as $key => $value) {
                            $msg.=' ' . $value->getMessage();
                        }
                    } else {
                        $blsuccess = 1;
                        $prefix = isset($mydata['mykatastima']) ? $mydata['mykatastima'] : $di->controller_params_array['mykatastima'];
                        //B2b\Models\CoreModels\PpB2bAdminMaterializedViews::refreshMaterializedViewDependByTblname($tblnameupper, $prefix);
                        //B2b\Models\CoreModels\PpB2bAdminMaterializedViews::refreshMaterializedViewDependByTblnamePg($classname::CONST_SCHEMA, $classname::CONST_TABLE);
                    }
                    //if (count($data) > 0) {
                    //$msg = 'Found ' . count($data) . ' record(s)';
                    //}
                    $jsonarr = array('success' => $blsuccess, 'msg' => $msg, 'data' => $data);
                }
            } else if ($param1 == 'userregister') {
                if (isset($param2)) {
                    $msg = \B2b\Models\CoreModels\PpB2bAdminVftranslate::getKeyvalueFromKeyname('errorduringregisteringuser');
                    $tblname = 'coreusers';
                    $glb_request = $di->controller_params_array['glb_request'];
                    $classname = \MyCustomHelperClassTools::My_Core_Get_Classname($tblname, 'production');
                    $tmparr = json_decode($glb_request['formdata'], true);
                    $formdataarr = array();
                    foreach ($tmparr as $key => $value) {
                        $formdataarr[$value['name']] = $value['value'];
                    }
                    $objnewrec = new $classname();
                    $mydata = array('username',
                        'userpassword',
                        'fname',
                        'lname',
                        'email',
                        'fkuserprefferlanguage',
                        'displayname',
                        'myfkcountryshorttiltle',
                        'address',
                        'city');
                    foreach ($mydata as $key => $value) {
                        $fieldid = MyCustomHelperClassTools::getOriginalField($tblname, ucfirst($value));
                        $prop = 'set' . $fieldid;
                        $myvalue = $formdataarr[$value];
                        if ($value == 'userpassword') {
                            $myvalue = B2b\Models\CoreModels\PpB2bAdminUsers::getPass($myvalue);
                        }
                        $objnewrec->$prop($myvalue);
                    }
                    $objnewrec->save();
                    $messages = $objnewrec->getMessages();
                    if (count($messages)) {
                        foreach ($messages as $key => $value) {
                            $msg.= $value->getMessage();
                        }
                    } else {
                        $blsuccess = 1;
                        $msg = \B2b\Models\CoreModels\PpB2bAdminVftranslate::getKeyvalueFromKeyname('Usercreatedsuccesfully') . ' ' . $objnewrec->getUsername();
                    }
                    $jsonarr = array('success' => $blsuccess, 'msg' => $msg, 'data' => $data);
                }
            } else if ($param1 == 'action_suggestion') {
                if (isset($param2)) {
                    $jsonarr = \B2b\Models\CoreModels\PpB2bAdminSuggestionEngineHelper::Get_Suggestions();
                }
            } else {
                if ($param1 === \AGCHParams::$Settings_Param1_Post_Tbl_Edit_2) {
                    $blsuccess = 0;
                    $msg = 'Failed to update';
                    if (isset($req['pk'], $req['name'], $req['value'], $di->controller_params_array['param2'], $di->controller_params_array['param3'], $di->controller_params_array['param4'], $di->controller_params_array['param5'])) {
                        $schemaname = $di->controller_params_array['param2'];
                        $tblname = $di->controller_params_array['param3'];
                        $paramid = $di->controller_params_array['param4'];
                        $paramsessid = $di->controller_params_array['param5'];
                        $pk = $req['pk'];
                        $name = $req['name'];
                        $value = $req['value'];
                        $pieces = explode("-", $name);
                        $piecesid = $pieces[0];
                        $piecesname = $pieces[1];
                        $classname = '\B2b\Models\ProductionModels\B2b' . ucfirst($schemaname) . ucfirst($tblname);
                        if (class_exists($classname) && isset($piecesid, $piecesname) && $pk == $piecesid && $pk == $paramid && MyCustomHelperSession::My_get_session_id() == $paramsessid) {

                            $obj = $classname::findFirst(array(
                                        "conditions" => "id = :id:",
                                        "bind" => array('id' => $pk)
                            ));
                            if ($obj) {
                                $method = 'set' . ucfirst($piecesname);
                                if (method_exists($obj, $method)) {
                                    $obj->$method($value);
                                    if ($piecesname == 'bldeleted' && $value = AGCHParams::$Static_Bl_Deleted) {
                                        $method = 'set' . ucfirst('bltrashed');
                                        if (method_exists($obj, $method)) {
                                            $obj->$method($value);
                                        }
                                    }
                                    $ret = $obj->save();
                                    if ($ret) {
                                        $arrparams = array('app' => 'b2b',
                                            'schemaname' => $obj::CONST_SCHEMA,
                                            'tblname' => $obj::CONST_TABLE,
                                            'colname' => $piecesname,
                                            'yearmonth' => \MyCustomHelperDateTools::getDateYearMonthNear($obj->getDt_created()),
                                            'blmetadata' => 0,
                                            'blindexes' => 1,
                                            'lngid' => CustomHelperB2bAioParams::My_get_lng_id_from_id_or_shortname($lng));
                                        $retarr = MyCustomHelperCoreToolsCsvBash::CsvBash_Create_CsvBash_Files($arrparams);
                                        if ($retarr) {
                                            $arrparams = array('app' => 'b2b',
                                                'schemaname' => $obj::CONST_SCHEMA,
                                                'tblname' => $obj::CONST_TABLE,
                                                'colname' => $piecesname,
                                                'lngalias' => $lng,
                                                'pkid' => $pk);
                                            $ret = MyCustomHelperCoreToolsCsvBash::CsvBash_Remove_Unsynced_Data($arrparams);
                                            if ($ret) {
                                                $blsuccess = 1;
                                                $msg = '';
                                            } else {
                                                $msg = 'Error during update last step json files.';
                                            }
                                        } else {
                                            $msg = 'Error during update last step files.';
                                        }
                                    } else {
                                        $msg = 'Error during update last step.';
                                        foreach ($obj->getMessages() as $message) {
                                            $msg = $msg . ', ' . $message;
                                        }
                                    }
                                } else {
                                    $msg = 'Error during update field not found';
                                }
                            }
                        }
                    }

                    //$fieldnamewithlng = $req['name'];
                    //$pieces = explode("-", $fieldnamewithlng);
                    /* $fieldname = $pieces[0];
                      $fieldlng = $pieces[1];
                      $fieldvalue = $req['value'];
                      $obj = \B2b\Models\ProductionModels\B2bAioModules::findFirst($moduleid);
                      $modulesarr = json_decode($obj->getAliasModulemetadata(), true);
                      $updatearr = \CHMod20130918DulePiecePortlet::update_module_data_arr_by_portletid($modulesarr, $portletid, $fieldvalue, $fieldname, $fieldlng);
                      //$modulesarr['data'][$fieldname][$fieldlng] = $fieldvalue;
                      $jsonmodulesarr = json_encode($updatearr);
                      $obj->setAliasModulemetadata($jsonmodulesarr);
                      $obj->save();
                      \MyCustomHelperCore::My_core_create_auto_gen_modules_helper(); */
                    $jsonarr = array('success' => $blsuccess, 'msg' => $msg, 'pk' => $pk);
                } elseif ($di->controller_params_array['param1'] === \AGCHParams::$Settings_Param1_Post_Modal_Module_Settings_Edit_2) {
                    $pk = $req['pk'];

                    $pieces = explode("-", $pk);
                    $moduleid = $pieces[0];
                    $portletid = $pieces[1];
                    $fieldnamewithlng = $req['name'];
                    $pieces = explode("-", $fieldnamewithlng);
                    $fieldname = $pieces[0];
                    $fieldlng = $pieces[1];
                    $fieldvalue = $req['value'];
                    $obj = \B2b\Models\ProductionModels\B2bAioModules::findFirst($moduleid);
                    $modulesarr = json_decode($obj->getAliasModulemetadata(), true);
                    $updatearr = \CHMod20130918DulePiecePortlet::update_module_data_arr_by_portletid($modulesarr, $portletid, $fieldvalue, $fieldname, $fieldlng);
                    //$modulesarr['data'][$fieldname][$fieldlng] = $fieldvalue; 
                    $jsonmodulesarr = json_encode($updatearr);
                    $obj->setAliasModulemetadata($jsonmodulesarr);
                    $obj->save();
                    \MyCustomHelperCore::My_core_create_auto_gen_modules_helper();
                    $jsonarr = array('success' => 1, 'msg' => '', 'pk' => $pk);
                } elseif ($di->controller_params_array['param1'] === \AGCHParams::$Settings_Param1_Async_Portlet_Body_Static_Texts_Edit_2) {
                    $fieldname = $req['pk'];
                    $fieldlng = $req['name'];
                    $fieldvalue = $req['value'];
                    $static_translates_arr = \CHCrmCParams::My_get_static_translate_all();
                    $static_translates_arr[$fieldname][$fieldlng] = $fieldvalue;
                    $jsondata = json_encode($static_translates_arr);
                    $obj = \B2b\Models\ProductionModels\B2bAioSettings::findFirst(array(
                                \B2b\Models\ProductionModels\B2bAioSettings::getOriginalFieldParamname() . " = :fieldparamname:",
                                "bind" => array("fieldparamname" => 'Static_Translates')
                    ));
                    $obj->setAliasParamvalue($jsondata);
                    $obj->save();
                    \MyCustomHelperCore::My_core_create_auto_gen_custom_helper();
                    $jsonarr = array('success' => 1, 'msg' => '', 'pk' => $fieldname);
                }
                if (isset($di->controller_params_array['param2'], $di->controller_params_array['param3'])) {
                    if ($di->controller_params_array['param1'] === \AGCHParams::$Settings_27_Action_Del_0) {
                        if ($di->controller_params_array['param2'] === AGCHParams::$Settings_Param2_Static_Translates_2) {
                            $fieldname = $di->controller_params_array['param3'];
                            $obj = \B2b\Models\ProductionModels\B2bAioSettings::findFirst(array(
                                        \B2b\Models\ProductionModels\B2bAioSettings::getOriginalFieldParamname() . " = :fieldparamname:",
                                        "bind" => array("fieldparamname" => 'Static_Translates')
                            ));
                            $jsondata = $obj->getAliasParamvalue();
                            $static_translates_arr = json_decode($jsondata, true);
                            if (isset($static_translates_arr[$fieldname])) {
                                $static_translates_arr[$fieldname]['params']['status'] = AGCHParams::$Static_Status_Trashed;
                                $jsondata = json_encode($static_translates_arr);
                                $obj->setAliasParamvalue($jsondata);
                                $obj->save();
                                \MyCustomHelperCore::My_core_create_auto_gen_custom_helper();
                                $jsonarr = array('success' => AGCHParams::$Static_Bl_True, 'msg' => '', 'pk' => $fieldname);
                            }
                        }
                    } elseif ($di->controller_params_array['param1'] === \AGCHParams::$Settings_Action_Disable_2) {
                        if ($di->controller_params_array['param2'] === AGCHParams::$Settings_Param2_Static_Translates_2) {
                            $fieldname = $di->controller_params_array['param3'];
                            $obj = \B2b\Models\ProductionModels\B2bAioSettings::findFirst(array(
                                        \B2b\Models\ProductionModels\B2bAioSettings::getOriginalFieldParamname() . " = :fieldparamname:",
                                        "bind" => array("fieldparamname" => 'Static_Translates')
                            ));
                            $jsondata = $obj->getAliasParamvalue();
                            $static_translates_arr = json_decode($jsondata, true);
                            if (isset($static_translates_arr[$fieldname])) {
                                $static_translates_arr[$fieldname]['params']['status'] = AGCHParams::$Static_Status_Disabled;
                                $jsondata = json_encode($static_translates_arr);
                                $obj->setAliasParamvalue($jsondata);
                                $obj->save();
                                \MyCustomHelperCore::My_core_create_auto_gen_custom_helper();
                                $jsonarr = array('success' => AGCHParams::$Static_Bl_True, 'msg' => '', 'pk' => $fieldname);
                            }
                        }
                    }
                }
            }
            $di->controller_params_array['jsondata'] = json_encode($jsonarr);
        }
    }

}
