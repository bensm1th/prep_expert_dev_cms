USE prep_expert_dev_cms;

INSERT INTO audits (
    audits_id,
    time_stamp,
    instructor,
    done_by,
    course_id,
    lesson_number,
    lesson_length,
    criteria_1_score,
    criteria_2_score,
    criteria_3_score,
    criteria_4_score,
    notes
) VALUES (
    1,
    '2019/1/11 01:01:01',
    3,
    'Ben Smith',
    1,
    7,
    3,
    4,
    4,
    4,
    4,
    'so much existential dread in this lesson'
);