USE prep_expert_dev_cms;

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(255) NOT NULL,
    SAT BIT NOT NULL DEFAULT 0,
    ACT BIT NOT NULL DEFAULT 0,
    instructor_location VARCHAR(255),
    phone INT,
    email VARCHAR(255),
    hire_date DATE,
    has_a_license BIT NOT NULL DEFAULT 0
);