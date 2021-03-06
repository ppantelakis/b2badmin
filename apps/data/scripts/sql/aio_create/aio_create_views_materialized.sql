
CREATE MATERIALIZED VIEW vf_route_page_plugin_no_available_params_m as select * from vf_route_page_plugin_no_available_params;

CREATE INDEX vf_route_page_plugin_no_available_params_m_pagename_idx
  ON vf_route_page_plugin_no_available_params_m
  USING btree
  (pagename);




CREATE MATERIALIZED VIEW vf_route_page_plugin_no_available_params_json_m as select * from vf_route_page_plugin_no_available_params_json;

CREATE INDEX vf_route_page_plugin_no_available_params_json_m_pagename_idx
  ON vf_route_page_plugin_no_available_params_json_m
  USING btree
  (pagename);

CREATE MATERIALIZED VIEW vf_plugin_no_available_params_m as select * from vf_plugin_no_available_params;

CREATE INDEX vf_plugin_no_available_params_m_fkavailableplugin_idx
  ON vf_plugin_no_available_params_m
  USING btree
  (fkavailableplugin);



CREATE MATERIALIZED VIEW vf_plugin_no_available_params_json_m as select * from vf_plugin_no_available_params_json;

CREATE INDEX vf_plugin_no_available_params_json_m_fkavailableplugin_idx
  ON vf_plugin_no_available_params_json_m
  USING btree
  (fkavailableplugin); 

CREATE MATERIALIZED VIEW vf_route_page_plugin_translate_available_plugin_json_m as select * from vf_route_page_plugin_translate_available_plugin_json;


        