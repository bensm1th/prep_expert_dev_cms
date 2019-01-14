USE prep_expert_dev_cms;

CREATE TABLE audits (
    audits_id INT PRIMARY KEY AUTO_INCREMENT,
    time_stamp DATETIME,
    instructor INT,
    done_by VARCHAR(255),
    course_id INT,
    lesson_number INT,
    lesson_length INT,
    criteria_1_score INT,
    criteria_2_score INT,
    criteria_3_score INT,
    criteria_4_score INT,
    notes VARCHAR(255)
);