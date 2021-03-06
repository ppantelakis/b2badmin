INSERT INTO core_crm_customer_contract(
            id,
            fkavailabletaxes,
            mykatastima,
            fkcustomer,
            fkavailableservice, 
            totaldays, 
            totalweeks, 
            totalmonths, 
            dtstart, 
            dtend, 
            totaltimes, 
            donetimes, 
            price)
    VALUES 
    (1,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=1),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=1),
            0,
            0,
            4,
            now(),
            (select now()+ (4 * interval '1 month')),
            15,
            5,
            70),
    (2,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=1),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=2),
            0,
            0,
            4,
            now(),
            (select now()+ (4 * interval '1 month')),
            15,
            4,
            63),
    (3,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=1),
           (select id from core_crm_available_service where mykatastima=:mykatastima and myid=3),
            0,
            0,
            4,
            now(),
            (select now()+ (4 * interval '1 month')),
            15,
            3,
            73),
    (4,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=1),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=4),
            0,
            0,
            4,
            now(),
            (select now()+ (4 * interval '1 month')),
            15,
            6,
            73),
    (5,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=2),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=1),
            0,
            0,
            6,
            now(),
            (select now()+ (6 * interval '1 month')),
            15,
            9,
            94),
    (6,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=2),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=2),
            0,
            0,
            6,
            now(),
            (select now()+ (6 * interval '1 month')),
            15,
            7,
            83),
    (7,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=3),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=1),
            0,
            0,
            12,
            now(),
            (select now()+ (12 * interval '1 month')),
            0,
            4,
            68),
    (8,(select id from core_available_taxes where mykatastima=:mykatastima and myid=1 ),:mykatastima,(select id from core_crm_customer where id=3),
            (select id from core_crm_available_service where mykatastima=:mykatastima and myid=4),
            0,
            0,
            3,
            now(),
            (select now()+ (3 * interval '1 month')),
            15,
            6,
            53);