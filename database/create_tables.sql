USE travel_organization;

CREATE TABLE countries (
    country_id INT AUTO_INCREMENT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    language_spoken VARCHAR(50) NOT NULL
);

create table tour_packages (
    package_id INT AUTO_INCREMENT PRIMARY KEY,
    package_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    duration_days INT NOT NULL CHECK (duration_days > 0),
    package_price DECIMAL(10, 2) NOT NULL CHECK (package_price > 0),
    package_type VARCHAR(50) NOT NULL,
    
    CONSTRAINT fk_country FOREIGN KEY (country_id) REFERENCES countries(country_id)
);

create table tour_guides (
    guide_id INT AUTO_INCREMENT PRIMARY KEY,
    guide_name VARCHAR(100) NOT NULL,
    experience_years INT NOT NULL CHECK (experience_years >= 0),
    language_spoken VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
    
);

create table package_guides (
    package_id INT NOT NULL,
    guide_id INT NOT NULL,
    PRIMARY KEY (package_id, guide_id),
    
    CONSTRAINT fk_pg_package FOREIGN KEY (package_id) REFERENCES tour_packages(package_id),
    CONSTRAINT fk_pg_guide FOREIGN KEY (guide_id) REFERENCES tour_guides(guide_id)
);

create table hotels (
    hotel_id INT AUTO_INCREMENT PRIMARY KEY,
    hotel_name VARCHAR(100) NOT NULL,
    country_id INT NOT NULL,
    city VARCHAR(100) NOT NULL,
    hotel_rating DECIMAL(2, 1) NOT NULL CHECK (hotel_rating between 0.0 and 5.0),
    
    
    CONSTRAINT fk_hotel_country FOREIGN KEY (country_id) REFERENCES countries(country_id)
);



create table package_hotels (
    package_id INT NOT NULL,
    hotel_id INT NOT NULL,
    PRIMARY KEY (package_id, hotel_id),
    
    CONSTRAINT fk_ph_package FOREIGN KEY (package_id) REFERENCES tour_packages(package_id),
    CONSTRAINT fk_ph_hotel FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id)
);

create table flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    flight_number VARCHAR(20) NOT NULL UNIQUE,
    departure_city VARCHAR(100) NOT NULL,
    arrival_city VARCHAR(100) NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    airline_name VARCHAR(100) NOT NULL,
    ticket_price DECIMAL(10, 2) NOT NULL CHECK (ticket_price > 0)
);

create table package_flights (
    package_id INT NOT NULL,
    flight_id INT NOT NULL,
    PRIMARY KEY (package_id, flight_id),
    
    CONSTRAINT fk_pf_package FOREIGN KEY (package_id) REFERENCES tour_packages(package_id),
    CONSTRAINT fk_pf_flight FOREIGN KEY (flight_id) REFERENCES flights(flight_id)
);

create table customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    gender varchar(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL,
    city VARCHAR(100) NOT NULL,
    passport_number VARCHAR(20) NOT NULL UNIQUE
);

create table bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    package_id INT NOT NULL,
    booking_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    number_of_people INT NOT NULL CHECK (number_of_people > 0),
    booking_status VARCHAR(30) NOT NULL CHECK (booking_status IN ('Confirmed', 'Pending', 'Cancelled')),
    
    
    CONSTRAINT fk_booking_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_booking_package FOREIGN KEY (package_id) REFERENCES tour_packages(package_id)
);

create table payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    booking_id INT NOT NULL,
    payment_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    payment_amount DECIMAL(10, 2) NOT NULL CHECK (payment_amount > 0),
    payment_method VARCHAR(30) NOT NULL CHECK (payment_method IN ('Credit Card', 'Debit Card', 'UPI', 'Bank Transfer')),
    payment_status VARCHAR(30) NOT NULL CHECK (payment_status IN ('Completed', 'Pending', 'Failed')),
    
    CONSTRAINT fk_payment_booking FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

