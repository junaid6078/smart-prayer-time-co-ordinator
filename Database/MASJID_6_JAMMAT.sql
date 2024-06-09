CREATE TABLE MASJID_6_JAMMAT (
    mas_id INT,
    date DATE primary key,
    fajr VARCHAR(10) NOT NULL,
    zuhr VARCHAR(10) NOT NULL,
    asr VARCHAR(10) NOT NULL,
    magrib VARCHAR(10) NOT NULL,
    isha VARCHAR(10) NOT NULL
);
INSERT INTO MASJID_6_JAMMAT (mas_id,date, fajr, zuhr, asr, magrib, isha) 
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

SELECT * FROM MASJID_6_JAMMAT;
