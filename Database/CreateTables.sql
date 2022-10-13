-- create database

create database whoop;
use whoop;

-- csv data exports from whoop device modified for upload

-- create table for physiological data 

create table phys_data(record_date date,
    phys_cycle_start datetime,
			    phys_cycle_end datetime,
			    cycle_timezone varchar(50),
			    recovery_percent int,
			    resting_heart_bpm int,
			    hrv_ms int,
			    skin_temp_c float,
			    blood_oxyge_percent double,
			    day_straing float,
			    calories_burned int,
			    max_HR int,
			    avg_HR int,
			    sleep_onset datetime,
			    wake_onset datetime,
			    sleep_performance_percent int,
			    resp_rate_rpm float,
			    sleep_duration int,
			    in_bed_duration int,
			    light_sleep_duration_min int,
			    deep_sws_duration_min int,
			    REM_duration_min int,
			    sleep_awake_duration_min int,
    sleep_need_min int,
			    sleep_debt_min int, 
			    sleep_effeciency int,
			    primary key(record_date)
			    );

-- create table for sleep data 

create table sleep_data(sleep_record_date date,
     phys_cycle_start datetime,
			     phys_cycle_end datetime,
                        cycle_timezone varchar(50),
                        sleep_onset datetime,
                        wake_onset datetime,
                        sleep_perfomance_percent int,
                        resp_rate_rpm float,
                        sleep_duration_min int,
                        in_bed_duration_min int,
                        light_sleep_duration_min int,
                        deep_sws_duration_min int,
                        REM_duration_min int,
                        sleep_awake_duration_min int,
                        sleep_need_min int,
                        sleep_debt_min int,
                        sleep_effeciency_percent int,
                        nap varchar(50),
                        primary key(sleep_record_date)
			     foreign key(sleep_record_date) references phys_data(record_date)
                        );
                        
                        
-- create table for daily journal questionnaire 

create table journal_data(entry int,
						journal_record_date date,
						phys_cycle_start datetime,
                        			phys_cycle_end datetime,
						cycle_timezone varchar(50),
						question_text varchar(255),
						answer_yes char(5),
						primary key(entry)
                       );


-- create table for exercise data 

create table exercise_data(entry int,
						phys_cycle_start datetime,
						Phys_cycle_end datetime,
						cycle_timezone varchar(50),
						exercise_start_time datetime,
						exercise_end_time datetime,
						duration_min int,
						activity_type char(50),
						activity_strain float,
						cal_burned int,
						max_HR int,
						average_HR int,
						HR_zone_1 int, 
						HR_zone_2 int,
						HR_zone_3 int,
						HR_zone_4 int, 
						HR_zone_5 int,
						GPS_enabled char(10)
						distance_meters int,
						alititude_gain_meters int,
						altitude_change_meters int,
                       );
                       
