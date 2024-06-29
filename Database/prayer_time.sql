CREATE TABLE prayer_times (
    mas_id INT,
    date DATE,
    fajr VARCHAR(10) NOT NULL,
    zuhr VARCHAR(10) NOT NULL,
    asr VARCHAR(10) NOT NULL,
    magrib VARCHAR(10) NOT NULL,
    isha VARCHAR(10) NOT NULL,
    PRIMARY KEY (mas_id, date),
    FOREIGN KEY (mas_id) REFERENCES masjidinform(mas_id)
);
INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(001, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(001, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(001, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(002, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(002, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(002, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(003, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(003, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(003, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(004, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(004, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(004, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(005, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(005, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(005, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(006, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(006, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(006, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(007, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(007, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(007, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(008, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(008, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(008, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(009, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(009, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(009, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(010, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(010, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(010, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(011, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(011, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(011, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');

INSERT INTO prayer_times (mas_id,date, fajr, zuhr, asr, magrib, isha) 
VALUES
(012, '2024-07-01', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-02', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-03', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-04', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-05', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-06', '05:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-07', '04:34 AM', '12:30 PM', '0:24 PM',  '07:15 PM', '08:53 PM'),
(012, '2024-07-08', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-09', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-10', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-11', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-12', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-13', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-14', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-15', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-16', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-17', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-18', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-19', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM'),
(012, '2024-07-20', '04:34 AM', '12:30 PM', '05:24 PM', '07:15 PM', '08:53 PM');


SELECT * FROM prayer_times;