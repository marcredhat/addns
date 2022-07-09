

DROP TABLE IF EXISTS default.cmptst;
CREATE TABLE default.cmptst (id int, txt string)
    TBLPROPERTIES (
        'compactorthreshold.hive.compactor.delta.pct.threshold'='10.1f',
        'compactorthreshold.hive.compactor.delta.num.threshold'='2');

INSERT INTO default.cmptst VALUES (1,'one');
INSERT INTO default.cmptst VALUES (2,'two');
INSERT INTO default.cmptst VALUES (3,'three');
INSERT INTO default.cmptst VALUES (4,'four');

select 
  c_id as id, c_database as db, c_table as tbl, c_type as type, c_state as state, 
  to_utc_timestamp(c_enqueue_time, 'UTC') as enqueue_time, c_highest_write_id as wid 
from sys.compactions where c_table='cmptst';

