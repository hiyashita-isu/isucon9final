ALTER TABLE train_master ADD (start_station_id bigint, last_station_id bigint);
UPDATE train_master left join station_master s on s.name=start_station SET start_station_id = s.id;
UPDATE train_master left join station_master s on s.name=last_station SET last_station_id = s.id; 
ALTER TABLE station_master ADD INDEX idx_name(name);
ALTER TABLE reservations ADD INDEX idx_dcname(date, train_class, train_name);
ALTER TABLE seat_reservations ADD INDEX idx_pos(car_number, seat_row, seat_column);
ALTER TABLE seat_master ADD INDEX idx_clnumclsm(train_class, car_number,seat_class, is_smoking_seat, seat_row, seat_column);
ALTER TABLE train_master ADD INDEX idx_dcln(date, train_class, train_name);
ALTER TABLE train_master ADD INDEX idx_dclno(date, train_class, is_nobori);
