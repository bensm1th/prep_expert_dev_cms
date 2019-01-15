USE prep_expert_dev_cms;

CREATE TABLE notes (
    notes_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    note_by VARCHAR(255),
    time_stamp DATETIME,
    action_required VARCHAR(255),
    is_resolved BIT NOT NULL DEFAULT 0,
    note VARCHAR(255),
    follow_up VARCHAR(255),
    follow_up_by VARCHAR(255),
    follow_up_timestamp DATETIME,
);