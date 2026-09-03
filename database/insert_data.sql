use travel_organization;

insert into countries (country_name, currency, language_spoken) values
('France', 'Euro', 'French'),
('Italy', 'Euro', 'Italian'),
('Spain', 'Euro', 'Spanish'),
('Germany', 'Euro', 'German'),
('Japan', 'Yen', 'Japanese'),
('China', 'Yuan', 'Mandarin Chinese'),
('India', 'Rupee', 'Hindi'),
('South Korea', 'Won', 'Korean'),
('Thailand', 'Baht', 'Thai'),
('Singapore', 'Dollar', 'English'),
('Indonesia', 'Rupiah', 'Indonesian'),
('Vietnam', 'Dong', 'Vietnamese'),
('Philippines', 'Peso', 'Filipino'),
('Malaysia', 'Ringgit', 'Malay'),
('United Arab Emirates', 'Dirham', 'Arabic');


INSERT INTO tour_packages
    (package_name, country_id, duration_days, package_price, package_type)
VALUES
    -- France
    ('Paris City Explorer', 1, 5, 85000.00, 'City Tour'),
    ('French Cultural Escape', 1, 7, 120000.00, 'Cultural'),

    -- Italy
    ('Rome Heritage Tour', 2, 6, 95000.00, 'Heritage'),
    ('Venice and Florence Tour', 2, 7, 115000.00, 'Cultural'),

    -- Spain
    ('Barcelona City Escape', 3, 5, 80000.00, 'City Tour'),
    ('Spanish Coastal Retreat', 3, 7, 110000.00, 'Beach'),

    -- Germany
    ('Berlin Historical Tour', 4, 5, 78000.00, 'Heritage'),
    ('Bavaria Adventure Tour', 4, 8, 130000.00, 'Adventure'),

    -- Japan
    ('Tokyo Discovery Tour', 5, 6, 125000.00, 'City Tour'),
    ('Kyoto Cultural Experience', 5, 7, 140000.00, 'Cultural'),

    -- China
    ('Beijing Heritage Tour', 6, 6, 95000.00, 'Heritage'),
    ('Shanghai City Experience', 6, 5, 90000.00, 'City Tour'),

    -- India
    ('Golden Triangle Tour', 7, 7, 65000.00, 'Heritage'),
    ('Kerala Backwaters Escape', 7, 6, 55000.00, 'Nature'),

    -- South Korea
    ('Seoul City Experience', 8, 5, 95000.00, 'City Tour'),
    ('Korean Cultural Journey', 8, 7, 115000.00, 'Cultural'),

    -- Thailand
    ('Bangkok and Pattaya Escape', 9, 6, 70000.00, 'Beach'),
    ('Northern Thailand Adventure', 9, 8, 90000.00, 'Adventure'),

    -- Singapore
    ('Singapore City Experience', 10, 5, 85000.00, 'City Tour'),
    ('Singapore Family Escape', 10, 6, 100000.00, 'Family'),

    -- Indonesia
    ('Bali Beach Retreat', 11, 6, 80000.00, 'Beach'),
    ('Bali Adventure Experience', 11, 8, 105000.00, 'Adventure'),

    -- Vietnam
    ('Vietnam Heritage Tour', 12, 7, 75000.00, 'Heritage'),
    ('Vietnam Coastal Escape', 12, 6, 70000.00, 'Beach'),

    -- Philippines
    ('Manila and Cebu Tour', 13, 7, 85000.00, 'City Tour'),
    ('Philippines Island Escape', 13, 8, 105000.00, 'Beach'),

    -- Malaysia
    ('Kuala Lumpur City Tour', 14, 5, 65000.00, 'City Tour'),
    ('Langkawi Island Escape', 14, 6, 80000.00, 'Beach'),

    -- United Arab Emirates
    ('Dubai Luxury Escape', 15, 5, 110000.00, 'Luxury'),
    ('Abu Dhabi Cultural Tour', 15, 6, 95000.00, 'Cultural');



    INSERT INTO tour_guides
    (guide_name, experience_years, language_spoken, phone_number, email)
VALUES
    ('Arjun Mehta', 8, 'English, Hindi', '9876501001', 'arjun.mehta@travelorg.com'),
    ('Sofia Martin', 6, 'French, English', '9876501002', 'sofia.martin@travelorg.com'),
    ('Luca Romano', 10, 'Italian, English', '9876501003', 'luca.romano@travelorg.com'),
    ('Carlos Garcia', 7, 'Spanish, English', '9876501004', 'carlos.garcia@travelorg.com'),
    ('Hans Muller', 12, 'German, English', '9876501005', 'hans.muller@travelorg.com'),
    ('Yuki Tanaka', 9, 'Japanese, English', '9876501006', 'yuki.tanaka@travelorg.com'),
    ('Li Wei', 11, 'Mandarin Chinese, English', '9876501007', 'li.wei@travelorg.com'),
    ('Kim Min-Jun', 5, 'Korean, English', '9876501008', 'kim.minjun@travelorg.com'),
    ('Niran Chai', 6, 'Thai, English', '9876501009', 'niran.chai@travelorg.com'),
    ('Daniel Tan', 8, 'English, Malay', '9876501010', 'daniel.tan@travelorg.com'),
    ('Ayu Pratama', 7, 'Indonesian, English', '9876501011', 'ayu.pratama@travelorg.com'),
    ('Nguyen Minh', 9, 'Vietnamese, English', '9876501012', 'nguyen.minh@travelorg.com'),
    ('Miguel Santos', 6, 'Filipino, English', '9876501013', 'miguel.santos@travelorg.com'),
    ('Farah Rahman', 8, 'Malay, English', '9876501014', 'farah.rahman@travelorg.com'),
    ('Omar Hassan', 10, 'Arabic, English', '9876501015', 'omar.hassan@travelorg.com');


    INSERT INTO package_guides (package_id, guide_id)
VALUES
    -- France
    (1, 2),
    (1, 1),
    (2, 2),
    (2, 3),

    -- Italy
    (3, 3),
    (3, 4),
    (4, 3),
    (4, 4),

    -- Spain
    (5, 4),
    (5, 5),
    (6, 4),

    -- Germany
    (7, 5),
    (7, 6),
    (8, 5),

    -- Japan
    (9, 6),
    (9, 7),
    (10, 6),

    -- China
    (11, 7),
    (11, 8),
    (12, 7),

    -- India
    (13, 1),
    (13, 8),
    (14, 1),

    -- South Korea
    (15, 8),
    (15, 6),
    (16, 8),

    -- Thailand
    (17, 9),
    (17, 10),
    (18, 9),

    -- Singapore
    (19, 10),
    (19, 9),
    (20, 10),

    -- Indonesia
    (21, 11),
    (21, 10),
    (22, 11),

    -- Vietnam
    (23, 12),
    (23, 11),
    (24, 12),

    -- Philippines
    (25, 13),
    (25, 12),
    (26, 13),

    -- Malaysia
    (27, 14),
    (27, 10),
    (28, 14),

    -- United Arab Emirates
    (29, 15),
    (29, 14),
    (30, 15);



    INSERT INTO hotels
    (hotel_name, country_id, city, hotel_rating)
VALUES
    -- France
    ('Hotel Lumiere Paris', 1, 'Paris', 4.5),
    ('Riviera Grand Hotel', 1, 'Nice', 4.3),

    -- Italy
    ('Roma Palace Hotel', 2, 'Rome', 4.4),
    ('Venice Grand Hotel', 2, 'Venice', 4.6),

    -- Spain
    ('Barcelona Central Hotel', 3, 'Barcelona', 4.2),
    ('Costa Sol Resort', 3, 'Malaga', 4.5),

    -- Germany
    ('Berlin Central Hotel', 4, 'Berlin', 4.3),
    ('Bavaria Grand Resort', 4, 'Munich', 4.6),

    -- Japan
    ('Tokyo Sakura Hotel', 5, 'Tokyo', 4.7),
    ('Kyoto Heritage Hotel', 5, 'Kyoto', 4.8),

    -- China
    ('Beijing Imperial Hotel', 6, 'Beijing', 4.4),
    ('Shanghai Grand Hotel', 6, 'Shanghai', 4.5),

    -- India
    ('Delhi Heritage Hotel', 7, 'Delhi', 4.3),
    ('Kerala Backwater Resort', 7, 'Alappuzha', 4.7),

    -- South Korea
    ('Seoul Central Hotel', 8, 'Seoul', 4.4),
    ('Han River Grand Hotel', 8, 'Seoul', 4.6),

    -- Thailand
    ('Bangkok Riverside Hotel', 9, 'Bangkok', 4.3),
    ('Pattaya Beach Resort', 9, 'Pattaya', 4.5),

    -- Singapore
    ('Marina City Hotel', 10, 'Singapore', 4.6),
    ('Orchard Grand Hotel', 10, 'Singapore', 4.5),

    -- Indonesia
    ('Bali Sunset Resort', 11, 'Bali', 4.7),
    ('Ubud Nature Retreat', 11, 'Ubud', 4.6),

    -- Vietnam
    ('Hanoi Heritage Hotel', 12, 'Hanoi', 4.3),
    ('Da Nang Beach Resort', 12, 'Da Nang', 4.5),

    -- Philippines
    ('Manila Bay Hotel', 13, 'Manila', 4.2),
    ('Cebu Island Resort', 13, 'Cebu', 4.6),

    -- Malaysia
    ('Kuala Lumpur Central Hotel', 14, 'Kuala Lumpur', 4.4),
    ('Langkawi Beach Resort', 14, 'Langkawi', 4.7),

    -- United Arab Emirates
    ('Dubai Marina Hotel', 15, 'Dubai', 4.8),
    ('Abu Dhabi Grand Hotel', 15, 'Abu Dhabi', 4.6);


INSERT INTO package_hotels (package_id, hotel_id)
VALUES
    -- France
    (1, 1),
    (1, 2),
    (2, 2),

    -- Italy
    (3, 3),
    (3, 4),
    (4, 4),

    -- Spain
    (5, 5),
    (5, 6),
    (6, 6),

    -- Germany
    (7, 7),
    (7, 8),
    (8, 8),

    -- Japan
    (9, 9),
    (9, 10),
    (10, 10),

    -- China
    (11, 11),
    (11, 12),
    (12, 12),

    -- India
    (13, 13),
    (13, 14),
    (14, 14),

    -- South Korea
    (15, 15),
    (15, 16),
    (16, 16),

    -- Thailand
    (17, 17),
    (17, 18),
    (18, 18),

    -- Singapore
    (19, 19),
    (19, 20),
    (20, 20),

    -- Indonesia
    (21, 21),
    (21, 22),
    (22, 22),

    -- Vietnam
    (23, 23),
    (23, 24),
    (24, 24),

    -- Philippines
    (25, 25),
    (25, 26),
    (26, 26),

    -- Malaysia
    (27, 27),
    (27, 28),
    (28, 28),

    -- United Arab Emirates
    (29, 29),
    (29, 30),
    (30, 30);

INSERT INTO flights
    (flight_number, departure_city, arrival_city, departure_time, arrival_time, airline_name, ticket_price)
VALUES

    -- France
    ('AI101', 'Delhi', 'Paris','2026-10-05 02:00:00', '2026-10-05 09:30:00','Air India', 55000.00),
    ('AF201', 'Paris', 'Nice','2026-10-07 10:00:00', '2026-10-07 11:30:00', 'Air France', 12000.00),

    -- Italy
    ('AI102', 'Mumbai', 'Rome', '2026-10-10 01:30:00', '2026-10-10 09:00:00', 'Air India', 52000.00),
    ('AZ301', 'Rome', 'Venice', '2026-10-12 11:00:00', '2026-10-12 12:15:00', 'ITA Airways', 11000.00),

    -- Spain
    ('EK401', 'Dubai', 'Barcelona', '2026-10-15 03:00:00', '2026-10-15 09:00:00', 'Emirates', 48000.00),
    ('IB501', 'Barcelona', 'Madrid', '2026-10-17 10:30:00', '2026-10-17 12:00:00', 'Iberia', 10000.00),

    -- Germany
    ('AI103', 'Delhi', 'Frankfurt', '2026-10-20 02:00:00', '2026-10-20 09:00:00', 'Air India', 50000.00),
    ('LH601', 'Frankfurt', 'Berlin', '2026-10-22 10:00:00', '2026-10-22 11:15:00', 'Lufthansa', 9500.00),

    -- Japan
    ('AI104', 'Delhi', 'Tokyo', '2026-11-01 02:00:00', '2026-11-01 13:30:00', 'Air India', 60000.00),
    ('JL801', 'Tokyo', 'Osaka', '2026-11-03 10:00:00', '2026-11-03 11:20:00', 'Japan Airlines', 12000.00),

    -- China
    ('AI105', 'Delhi', 'Beijing', '2026-11-05 02:00:00', '2026-11-05 10:00:00', 'Air India', 45000.00),
    ('MU901', 'Beijing', 'Shanghai', '2026-11-07 09:30:00', '2026-11-07 11:45:00', 'China Eastern', 10000.00),

    -- India
    ('AI106', 'Mumbai', 'Delhi', '2026-11-10 06:00:00', '2026-11-10 08:15:00', 'Air India', 8500.00),
    ('AI107', 'Delhi', 'Kochi', '2026-11-12 09:00:00', '2026-11-12 12:00:00', 'Air India', 9500.00),

    -- South Korea
    ('AI108', 'Delhi', 'Seoul', '2026-11-15 02:00:00', '2026-11-15 10:30:00', 'Air India', 48000.00),
    ('KE1002', 'Seoul', 'Busan', '2026-11-17 09:00:00', '2026-11-17 10:00:00', 'Korean Air', 7000.00),

    -- Thailand
    ('AI109', 'Delhi', 'Bangkok', '2026-11-20 02:00:00', '2026-11-20 08:00:00', 'Air India', 30000.00),
    ('TG1102', 'Bangkok', 'Phuket', '2026-11-22 10:00:00', '2026-11-22 11:30:00', 'Thai Airways', 8000.00),

    -- Singapore
    ('SQ1201', 'Chennai', 'Singapore', '2026-12-01 01:00:00', '2026-12-01 07:30:00', 'Singapore Airlines', 28000.00),
    ('TR1202', 'Singapore', 'Kuala Lumpur', '2026-12-03 10:00:00', '2026-12-03 11:00:00', 'Scoot', 5000.00),

    -- Indonesia
    ('SQ1203', 'Singapore', 'Jakarta', '2026-12-05 08:00:00', '2026-12-05 09:00:00', 'Singapore Airlines', 12000.00),
    ('GA1301', 'Jakarta', 'Denpasar', '2026-12-07 10:00:00', '2026-12-07 12:00:00', 'Garuda Indonesia', 10000.00),

    -- Vietnam
    ('AI110', 'Delhi', 'Hanoi', '2026-12-10 02:00:00', '2026-12-10 09:00:00', 'Air India', 35000.00),
    ('VN1402', 'Hanoi', 'Da Nang', '2026-12-12 10:00:00', '2026-12-12 11:30:00', 'Vietnam Airlines', 8000.00),

    -- Philippines
    ('SQ1204', 'Singapore', 'Manila', '2026-12-15 08:00:00', '2026-12-15 12:00:00', 'Singapore Airlines', 22000.00),
    ('PR1501', 'Manila', 'Cebu', '2026-12-17 07:00:00', '2026-12-17 08:30:00', 'Philippine Airlines', 8500.00),

    -- Malaysia
    ('AI111', 'Chennai', 'Kuala Lumpur', '2026-12-20 02:00:00', '2026-12-20 08:30:00', 'Air India', 25000.00),

    ('MH1601', 'Kuala Lumpur', 'Langkawi', '2026-12-22 08:00:00', '2026-12-22 09:15:00', 'Malaysia Airlines', 7000.00),

    -- United Arab Emirates
    ('AI112', 'Mumbai', 'Dubai', '2026-12-25 03:00:00', '2026-12-25 05:00:00', 'Air India', 18000.00),
    ('EK1702', 'Dubai', 'Abu Dhabi', '2026-12-27 09:00:00', '2026-12-27 10:15:00', 'Emirates', 7000.00);


    INSERT INTO package_flights (package_id, flight_id)
VALUES
    -- France
    (1, 1),
    (1, 2),
    (2, 1),
    (2, 2),

    -- Italy
    (3, 3),
    (3, 4),
    (4, 3),
    (4, 4),

    -- Spain
    (5, 5),
    (5, 6),
    (6, 5),
    (6, 6),

    -- Germany
    (7, 7),
    (7, 8),
    (8, 7),
    (8, 8),

    -- Japan
    (9, 9),
    (9, 10),
    (10, 9),
    (10, 10),

    -- China
    (11, 11),
    (11, 12),
    (12, 11),
    (12, 12),

    -- India
    (13, 13),
    (13, 14),
    (14, 13),
    (14, 14),

    -- South Korea
    (15, 15),
    (15, 16),
    (16, 15),
    (16, 16),

    -- Thailand
    (17, 17),
    (17, 18),
    (18, 17),
    (18, 18),

    -- Singapore
    (19, 19),
    (19, 20),
    (20, 19),
    (20, 20),

    -- Indonesia
    (21, 21),
    (21, 22),
    (22, 21),
    (22, 22),

    -- Vietnam
    (23, 23),
    (23, 24),
    (24, 23),
    (24, 24),

    -- Philippines
    (25, 25),
    (25, 26),
    (26, 25),
    (26, 26),

    -- Malaysia
    (27, 27),
    (27, 28),
    (28, 27),
    (28, 28),

    -- United Arab Emirates
    (29, 29),
    (29, 30),
    (30, 29),
    (30, 30);


    INSERT INTO customers
    (customer_name, gender, email, phone_number, city, passport_number)
VALUES
    ('Aarav Sharma', 'Male', 'aarav.sharma@gmail.com', '9876502001', 'Hyderabad', 'P1000001'),
    ('Ananya Reddy', 'Female', 'ananya.reddy@gmail.com', '9876502002', 'Bengaluru', 'P1000002'),
    ('Rohan Mehta', 'Male', 'rohan.mehta@gmail.com', '9876502003', 'Mumbai', 'P1000003'),
    ('Priya Nair', 'Female', 'priya.nair@gmail.com', '9876502004', 'Kochi', 'P1000004'),
    ('Vikram Singh', 'Male', 'vikram.singh@gmail.com', '9876502005', 'Delhi', 'P1000005'),
    ('Sneha Iyer', 'Female', 'sneha.iyer@gmail.com', '9876502006', 'Chennai', 'P1000006'),
    ('Karan Patel', 'Male', 'karan.patel@gmail.com', '9876502007', 'Ahmedabad', 'P1000007'),
    ('Meera Joshi', 'Female', 'meera.joshi@gmail.com', '9876502008', 'Pune', 'P1000008'),
    ('Aditya Rao', 'Male', 'aditya.rao@gmail.com', '9876502009', 'Hyderabad', 'P1000009'),
    ('Kavya Menon', 'Female', 'kavya.menon@gmail.com', '9876502010', 'Bengaluru', 'P1000010'),

    ('Rahul Verma', 'Male', 'rahul.verma@gmail.com', '9876502011', 'Delhi', 'P1000011'),
    ('Ishita Kapoor', 'Female', 'ishita.kapoor@gmail.com', '9876502012', 'Mumbai', 'P1000012'),
    ('Arjun Malhotra', 'Male', 'arjun.malhotra@gmail.com', '9876502013', 'Pune', 'P1000013'),
    ('Neha Gupta', 'Female', 'neha.gupta@gmail.com', '9876502014', 'Kolkata', 'P1000014'),
    ('Siddharth Das', 'Male', 'siddharth.das@gmail.com', '9876502015', 'Chennai', 'P1000015'),
    ('Pooja Shah', 'Female', 'pooja.shah@gmail.com', '9876502016', 'Ahmedabad', 'P1000016'),
    ('Nikhil Kumar', 'Male', 'nikhil.kumar@gmail.com', '9876502017', 'Hyderabad', 'P1000017'),
    ('Divya Krishnan', 'Female', 'divya.krishnan@gmail.com', '9876502018', 'Kochi', 'P1000018'),
    ('Manish Bhat', 'Male', 'manish.bhat@gmail.com', '9876502019', 'Bengaluru', 'P1000019'),
    ('Riya Sinha', 'Female', 'riya.sinha@gmail.com', '9876502020', 'Delhi', 'P1000020'),

    ('Abhishek Jain', 'Male', 'abhishek.jain@gmail.com', '9876502021', 'Jaipur', 'P1000021'),
    ('Nandini Rao', 'Female', 'nandini.rao@gmail.com', '9876502022', 'Hyderabad', 'P1000022'),
    ('Varun Kapoor', 'Male', 'varun.kapoor@gmail.com', '9876502023', 'Mumbai', 'P1000023'),
    ('Aditi Bose', 'Female', 'aditi.bose@gmail.com', '9876502024', 'Kolkata', 'P1000024'),
    ('Harsh Vardhan', 'Male', 'harsh.vardhan@gmail.com', '9876502025', 'Delhi', 'P1000025'),
    ('Simran Kaur', 'Female', 'simran.kaur@gmail.com', '9876502026', 'Chandigarh', 'P1000026'),
    ('Yash Agarwal', 'Male', 'yash.agarwal@gmail.com', '9876502027', 'Pune', 'P1000027'),
    ('Tanvi Kulkarni', 'Female', 'tanvi.kulkarni@gmail.com', '9876502028', 'Mumbai', 'P1000028'),
    ('Akash Mishra', 'Male', 'akash.mishra@gmail.com', '9876502029', 'Lucknow', 'P1000029'),
    ('Shreya Rao', 'Female', 'shreya.rao@gmail.com', '9876502030', 'Bengaluru', 'P1000030'),

    ('Dev Patel', 'Male', 'dev.patel@gmail.com', '9876502031', 'Surat', 'P1000031'),
    ('Maya Fernandes', 'Female', 'maya.fernandes@gmail.com', '9876502032', 'Goa', 'P1000032'),
    ('Saurabh Gupta', 'Male', 'saurabh.gupta@gmail.com', '9876502033', 'Delhi', 'P1000033'),
    ('Ira Sen', 'Female', 'ira.sen@gmail.com', '9876502034', 'Kolkata', 'P1000034'),
    ('Rajat Khanna', 'Male', 'rajat.khanna@gmail.com', '9876502035', 'Mumbai', 'P1000035'),
    ('Lavanya Iyer', 'Female', 'lavanya.iyer@gmail.com', '9876502036', 'Chennai', 'P1000036'),
    ('Mohit Arora', 'Male', 'mohit.arora@gmail.com', '9876502037', 'Delhi', 'P1000037'),
    ('Sakshi Desai', 'Female', 'sakshi.desai@gmail.com', '9876502038', 'Pune', 'P1000038'),
    ('Aman Khurana', 'Male', 'aman.khurana@gmail.com', '9876502039', 'Gurugram', 'P1000039'),
    ('Pallavi Nair', 'Female', 'pallavi.nair@gmail.com', '9876502040', 'Kochi', 'P1000040'),

    ('Ritesh Yadav', 'Male', 'ritesh.yadav@gmail.com', '9876502041', 'Lucknow', 'P1000041'),
    ('Anjali Thomas', 'Female', 'anjali.thomas@gmail.com', '9876502042', 'Kochi', 'P1000042'),
    ('Sameer Ali', 'Male', 'sameer.ali@gmail.com', '9876502043', 'Hyderabad', 'P1000043'),
    ('Nisha Choudhary', 'Female', 'nisha.choudhary@gmail.com', '9876502044', 'Jaipur', 'P1000044'),
    ('Vivek Sethi', 'Male', 'vivek.sethi@gmail.com', '9876502045', 'Delhi', 'P1000045'),
    ('Diya Bansal', 'Female', 'diya.bansal@gmail.com', '9876502046', 'Chandigarh', 'P1000046'),
    ('Kunal Deshmukh', 'Male', 'kunal.deshmukh@gmail.com', '9876502047', 'Nagpur', 'P1000047'),
    ('Rhea Mathew', 'Female', 'rhea.mathew@gmail.com', '9876502048', 'Kochi', 'P1000048'),
    ('Tarun Saxena', 'Male', 'tarun.saxena@gmail.com', '9876502049', 'Noida', 'P1000049'),
    ('Ayesha Khan', 'Female', 'ayesha.khan@gmail.com', '9876502050', 'Hyderabad', 'P1000050');

    INSERT INTO bookings
    (customer_id, package_id, booking_date, number_of_people, booking_status)
VALUES

-- =========================
-- BOOKINGS 1 - 20
-- =========================

(1,  1,  '2026-07-01 10:15:00', 2, 'Confirmed'),
(2,  3,  '2026-07-02 14:20:00', 1, 'Confirmed'),
(3,  5,  '2026-07-03 09:30:00', 2, 'Pending'),
(4,  7,  '2026-07-04 16:45:00', 3, 'Confirmed'),
(5,  9,  '2026-07-05 11:10:00', 4, 'Confirmed'),

(6,  11, '2026-07-06 13:25:00', 2, 'Cancelled'),
(7,  13, '2026-07-07 15:40:00', 2, 'Confirmed'),
(8,  15, '2026-07-08 10:50:00', 1, 'Pending'),
(9,  17, '2026-07-09 12:35:00', 3, 'Confirmed'),
(10, 19, '2026-07-10 17:20:00', 2, 'Confirmed'),

(11, 21, '2026-07-11 09:15:00', 2, 'Confirmed'),
(12, 23, '2026-07-12 14:45:00', 4, 'Pending'),
(13, 25, '2026-07-13 11:30:00', 2, 'Confirmed'),
(14, 27, '2026-07-14 16:10:00', 3, 'Confirmed'),
(15, 29, '2026-07-15 13:55:00', 2, 'Cancelled'),

(16, 2,  '2026-07-16 10:25:00', 1, 'Confirmed'),
(17, 4,  '2026-07-17 15:15:00', 2, 'Pending'),
(18, 6,  '2026-07-18 12:05:00', 3, 'Confirmed'),
(19, 8,  '2026-07-19 09:45:00', 2, 'Confirmed'),
(20, 10, '2026-07-20 14:35:00', 4, 'Confirmed'),


-- =========================
-- BOOKINGS 21 - 40
-- =========================

(21, 12, '2026-07-21 11:20:00', 2, 'Pending'),
(22, 14, '2026-07-22 16:50:00', 3, 'Confirmed'),
(23, 16, '2026-07-23 13:10:00', 1, 'Confirmed'),
(24, 18, '2026-07-24 10:40:00', 2, 'Confirmed'),
(25, 20, '2026-07-25 15:30:00', 4, 'Cancelled'),

(26, 22, '2026-07-26 09:25:00', 2, 'Confirmed'),
(27, 24, '2026-07-27 12:50:00', 3, 'Pending'),
(28, 26, '2026-07-28 17:05:00', 2, 'Confirmed'),
(29, 28, '2026-07-29 11:45:00', 1, 'Confirmed'),
(30, 30, '2026-07-30 14:15:00', 2, 'Confirmed'),

(31, 1,  '2026-07-31 10:10:00', 3, 'Confirmed'),
(32, 3,  '2026-08-01 13:40:00', 2, 'Pending'),
(33, 5,  '2026-08-02 15:25:00', 2, 'Confirmed'),
(34, 7,  '2026-08-03 11:55:00', 4, 'Confirmed'),
(35, 9,  '2026-08-04 16:30:00', 1, 'Cancelled'),

(36, 11, '2026-08-05 09:35:00', 2, 'Confirmed'),
(37, 13, '2026-08-06 14:05:00', 4, 'Confirmed'),
(38, 15, '2026-08-07 12:15:00', 2, 'Pending'),
(39, 17, '2026-08-08 10:45:00', 3, 'Confirmed'),
(40, 19, '2026-08-09 17:30:00', 2, 'Confirmed'),


-- =========================
-- BOOKINGS 41 - 60
-- =========================

(41, 21, '2026-08-10 09:20:00', 2, 'Confirmed'),
(42, 23, '2026-08-11 11:35:00', 1, 'Pending'),
(43, 25, '2026-08-12 14:50:00', 3, 'Confirmed'),
(44, 27, '2026-08-13 16:15:00', 2, 'Confirmed'),
(45, 29, '2026-08-14 10:30:00', 4, 'Pending'),

(46, 2,  '2026-08-15 13:45:00', 2, 'Confirmed'),
(47, 4,  '2026-08-16 15:10:00', 3, 'Cancelled'),
(48, 6,  '2026-08-17 17:25:00', 2, 'Confirmed'),
(49, 8,  '2026-08-18 09:50:00', 1, 'Confirmed'),
(50, 10, '2026-08-19 12:40:00', 2, 'Pending'),

(1,  11, '2026-08-20 10:15:00', 2, 'Confirmed'),
(2,  13, '2026-08-20 14:20:00', 3, 'Confirmed'),
(3,  15, '2026-08-21 09:30:00', 1, 'Cancelled'),
(4,  17, '2026-08-21 16:45:00', 2, 'Confirmed'),
(5,  19, '2026-08-22 11:10:00', 4, 'Pending'),

(6,  21, '2026-08-22 13:25:00', 2, 'Confirmed'),
(7,  23, '2026-08-23 15:40:00', 3, 'Confirmed'),
(8,  25, '2026-08-23 10:50:00', 2, 'Pending'),
(9,  27, '2026-08-24 12:35:00', 4, 'Confirmed'),
(10, 29, '2026-08-24 17:20:00', 2, 'Confirmed'),


-- =========================
-- BOOKINGS 61 - 80
-- =========================

(11, 2,  '2026-08-25 09:15:00', 2, 'Confirmed'),
(12, 4,  '2026-08-25 14:45:00', 1, 'Pending'),
(13, 6,  '2026-08-26 11:30:00', 3, 'Confirmed'),
(14, 8,  '2026-08-26 16:10:00', 2, 'Confirmed'),
(15, 10, '2026-08-27 13:55:00', 4, 'Cancelled'),

(16, 12, '2026-08-27 10:25:00', 2, 'Confirmed'),
(17, 14, '2026-08-28 15:15:00', 3, 'Pending'),
(18, 16, '2026-08-28 12:05:00', 2, 'Confirmed'),
(19, 18, '2026-08-29 09:45:00', 1, 'Confirmed'),
(20, 20, '2026-08-29 14:35:00', 3, 'Confirmed'),

(21, 22, '2026-08-30 11:20:00', 2, 'Pending'),
(22, 24, '2026-08-30 16:50:00', 4, 'Confirmed'),
(23, 26, '2026-08-30 13:10:00', 2, 'Confirmed'),
(24, 28, '2026-08-31 10:40:00', 3, 'Confirmed'),
(25, 30, '2026-08-31 15:30:00', 2, 'Cancelled'),

(26, 1,  '2026-08-31 09:25:00', 4, 'Confirmed'),
(27, 3,  '2026-08-31 12:50:00', 2, 'Pending'),
(28, 5,  '2026-08-31 17:05:00', 3, 'Confirmed'),
(29, 7,  '2026-08-31 11:45:00', 2, 'Confirmed'),
(30, 9,  '2026-08-31 14:15:00', 1, 'Pending'),


-- =========================
-- BOOKINGS 81 - 100
-- =========================

(31, 11, '2026-08-31 15:20:00', 2, 'Confirmed'),
(32, 13, '2026-08-31 16:05:00', 3, 'Confirmed'),
(33, 15, '2026-08-31 16:40:00', 2, 'Cancelled'),
(34, 17, '2026-08-31 17:10:00', 4, 'Confirmed'),
(35, 19, '2026-08-31 17:25:00', 2, 'Pending'),

(36, 21, '2026-08-31 17:35:00', 3, 'Confirmed'),
(37, 23, '2026-08-31 17:45:00', 2, 'Confirmed'),
(38, 25, '2026-08-31 17:55:00', 4, 'Pending'),
(39, 27, '2026-08-31 18:05:00', 2, 'Confirmed'),
(40, 29, '2026-08-31 18:15:00', 5, 'Confirmed'),

(41, 2,  '2026-08-31 18:25:00', 2, 'Confirmed'),
(42, 4,  '2026-08-31 18:35:00', 1, 'Cancelled'),
(43, 6,  '2026-08-31 18:45:00', 3, 'Confirmed'),
(44, 8,  '2026-08-31 18:55:00', 2, 'Pending'),
(45, 10, '2026-08-31 19:05:00', 4, 'Confirmed'),

(46, 12, '2026-08-31 19:15:00', 2, 'Confirmed'),
(47, 14, '2026-08-31 19:25:00', 3, 'Pending'),
(48, 16, '2026-08-31 19:35:00', 2, 'Confirmed'),
(49, 18, '2026-08-31 19:45:00', 4, 'Confirmed'),
(50, 20, '2026-08-31 19:55:00', 2, 'Confirmed');



INSERT INTO payments
    (booking_id, payment_date, payment_amount, payment_method, payment_status)
SELECT
    b.booking_id,
    DATE_ADD(b.booking_date, INTERVAL 1 DAY),
    tp.package_price * b.number_of_people,

    CASE MOD(b.booking_id, 4)
        WHEN 0 THEN 'Credit Card'
        WHEN 1 THEN 'UPI'
        WHEN 2 THEN 'Debit Card'
        WHEN 3 THEN 'Bank Transfer'
    END,

    CASE
        WHEN b.booking_status = 'Confirmed' THEN 'Completed'
        WHEN b.booking_status = 'Pending' THEN 'Pending'
    END

FROM bookings b
JOIN tour_packages tp
    ON b.package_id = tp.package_id
WHERE b.booking_status IN ('Confirmed', 'Pending');