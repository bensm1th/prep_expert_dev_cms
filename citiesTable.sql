USE prep_expert_dev_cms;

CREATE TABLE cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    facility_name VARCHAR(255),
    facility_address VARCHAR(255),
    facility_phone INT,
    reserved_by VARCHAR(255),
    reserved_date DATE
);