USE prep_expert_dev_cms;

CREATE TABLE subs (
    subs_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT NOT NULL,
    instructor_missing VARCHAR(255),
    received_time_stamp DATETIME,
    lesson_date_time DATETIME,
    approved BIT NOT NULL DEFAULT 0,
    resolved BIT NOT NULL DEFAULT 0,
    sub INT,
    reason VARCHAR(255)
);

