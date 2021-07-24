ALTER TABLE train_master ADD (start_station_id bigint, last_station_id bigint);
UPDATE train_master left join station_master s on s.name=start_station SET start_station_id = s.id;
UPDATE train_master left join station_master s on s.name=last_station SET last_station_id = s.id; 