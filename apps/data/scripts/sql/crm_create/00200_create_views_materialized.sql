CREATE MATERIALIZED VIEW vf_crm_customer_m as select * from vf_crm_customer;

CREATE INDEX vf_crm_customer_m_fkcustomerid_idx
  ON vf_crm_customer_m
  USING btree
  (fkcustomerid);


CREATE MATERIALIZED VIEW vf_crm_trainer_m as select * from vf_crm_trainer;

CREATE MATERIALIZED VIEW vf_crm_customer_address_m as select * from vf_crm_customer_address;

CREATE INDEX vf_crm_customer_address_m_fkcustomerid_idx
  ON vf_crm_customer_address_m
  USING btree
  (fkcustomerid);

CREATE MATERIALIZED VIEW vf_crm_customer_contract_m as select * from vf_crm_customer_contract;

CREATE INDEX vf_crm_customer_contract_m_fkcustomerid_idx
  ON vf_crm_customer_contract_m
  USING btree
  (fkcustomerid);

CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_m as select * from vf_crm_customer_contract_energa;



CREATE MATERIALIZED VIEW vf_crm_event_m as select * from vf_crm_event;

CREATE INDEX vf_crm_event_m_fkevent_idx
  ON vf_crm_event_m
  USING btree
  (fkevent);

CREATE MATERIALIZED VIEW vf_crm_customer_contract_payment_group_m as select * from vf_crm_customer_contract_payment_group;

CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_payment_group_m as select * from vf_crm_customer_contract_energa_payment_group;



CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_payment_m as select * from vf_crm_customer_contract_energa_payment;

CREATE MATERIALIZED VIEW vf_core_crm_notes_m as select * from vf_core_crm_notes;

CREATE INDEX vf_core_crm_notes_m_id_idx
  ON vf_core_crm_notes_m
  USING btree
  (id);

CREATE MATERIALIZED VIEW vf_core_crm_notes_badge_count_m as select * from vf_core_crm_notes_badge_count;

CREATE INDEX vf_core_crm_notes_badge_count_m_id_idx
  ON vf_core_crm_notes_badge_count_m
  USING btree
  (id); 

CREATE MATERIALIZED VIEW vf_crm_customer_contract_payment_m as select * from vf_crm_customer_contract_payment;

CREATE INDEX vf_crm_customer_contract_payment_m_id_idx
  ON vf_crm_customer_contract_payment_m
  USING btree
  (id); 

CREATE MATERIALIZED VIEW vf_crm_customer_sindromes_energa_m as select * from vf_crm_customer_sindromes_energa;

CREATE MATERIALIZED VIEW vf_crm_customer_ipoloipa_m as select * from vf_crm_customer_ipoloipa;

CREATE MATERIALIZED VIEW vf_crm_counters_m as select * from vf_crm_counters;

CREATE MATERIALIZED VIEW vf_crm_customer_full_energa_m as select * from vf_crm_customer_full_energa;

CREATE MATERIALIZED VIEW vf_crm_customer_full_ipoloipa_m as select * from vf_crm_customer_full_ipoloipa;

CREATE MATERIALIZED VIEW vf_crm_customer_sindromes_expire_month_m as select * from vf_crm_customer_sindromes_expire_month;

CREATE MATERIALIZED VIEW vf_crm_customer_full_expire_month_m as select * from vf_crm_customer_full_expire_month;

CREATE MATERIALIZED VIEW vf_crm_available_packet_m as select * from vf_crm_available_packet;





CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_visits_open_m as select * from vf_crm_customer_contract_energa_visits_open;
CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_visits_open_payment_m as select * from vf_crm_customer_contract_energa_visits_open_payment;
CREATE MATERIALIZED VIEW vf_crm_customer_contract_energa_visits_open_payment_group_m as select * from vf_crm_customer_contract_energa_visits_open_payment_group;

CREATE MATERIALIZED VIEW vf_crm_customer_contract_visits_done_m as select * from vf_crm_customer_contract_visits_done;
CREATE MATERIALIZED VIEW vf_crm_customer_contract_visits_done_payment_m as select * from vf_crm_customer_contract_visits_done_payment;
CREATE MATERIALIZED VIEW vf_crm_customer_contract_visits_done_payment_group_m as select * from vf_crm_customer_contract_visits_done_payment_group;

CREATE MATERIALIZED VIEW vf_crm_customer_event_m as select * from vf_crm_customer_event;
CREATE MATERIALIZED VIEW vf_crm_trainer_event_m as select * from vf_crm_trainer_event;












