USE prep_expert_dev_cms;

CREATE TABLE abberations (
    abberation_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    original_date_time DATETIME,
    new_date_time DATETIME,
    reason VARCHAR(255),
    is_notification_complete BIT NOT NULL DEFAULT 0
);