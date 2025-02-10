:::mermaid



erDiagram
    
    STUDENTS {
        int student_id PK
        string name
        string email
        date birthdate
    }

    ENROLLMENTS {
        int enrollment_id PK
        int student_id FK
        int course_id FK
        date enrollment_date
        string status
    }

    COURSES {
        int course_id PK
        int instructor_id FK
        string title
        string category
    }

    PAYMENT_RECORDS {
        int payment_id PK
        int student_id FK
        int subscription_id FK
        int enrollment_id FK
        float price
        string method
        date payment_date
    }

    SUBSCRIPTIONS {
        int subscription_id PK
        int student_id FK
        int course_id FK
        date start_date
        date end_date
        String type_of_subscription
        float price
        String status
    }

    INSTRUCTORS {
        int instructor_id PK
        string name
        string email
        string expertise
    }

    MODULES {
        int module_id PK
        int course_id FK
        string title
    }

    ASSESSMENTS {
        int assessment_id PK
        int module_id FK
        string title
        date due_date
    }

    SUBMISSIONS {
        int submissions_id PK
        int student_id FK
        int assessment_id FK
        int Module_ID FK
        date submission_date
        float score
        String Status
    }

    REVIEWS {
        int review_id PK
        int student_id FK
        int course_id FK
        float rating
        string comments
        date review_date
    }


    STUDENTS ||--|{ ENROLLMENTS : enrolls
    COURSES ||--|{ ENROLLMENTS : enrolls
    SUBSCRIPTIONS ||--o{ PAYMENT_RECORDS : generates


    %% INSTRUCTORS ||--o{ COURSES : teaches
    %% COURSES ||--o{ MODULES : contains
    %% MODULES ||--o{ ASSESSMENTS : includes
    %% STUDENTS ||--o{ REVIEWS : writes
    %% STUDENTS ||--o{ SUBMISSIONS : submits
    %% COURSES ||--o{ REVIEWS : receives
    %% COURSES ||--o{ SUBSCRIPTIONS : belongs
    %% STUDENTS ||--o{ SUBSCRIPTIONS : subscribes
    %% STUDENTS ||--o{ PAYMENT_RECORDS : makes

    %% QUERY 01: Which courses have the most students enrolled this month?
    %% RESULT TABLE: ENROLLMENTS (enrollment_id, student_id FK, course_id FK, enrollment_date) + COURSES (course_id, title) + STUDENTS (student_id)

    %% QUERY 02: What are the top 5 trending courses based on enrollment growth over the last 3 months?
    %% RESULT TABLE: ENROLLMENTS (enrollment_id, student_id FK, course_id FK, enrollment_date) + COURSES (course_id, title) + STUDENTS (student_id)

    %% QUERY 03: Which categories (e.g., Data Science, Programming) have the highest number of enrolled students?
    %% RESULT TABLE: COURSES (course_id, title, category) + ENROLLMENTS (enrollment_id, student_id FK, course_id FK)

    %% QUERY 04: What is the total revenue from Premium subscriptions in the last quarter? (last 3 months)
    %% RESULT TABLE: SUBSCRIPTIONS (subscription_id, type_of_subscription, price, status) + PAYMENT RECORDS (subscription_id FK, payment_date)
    %% MUST SEE: THERE IS PRICE IN SUBSCRIPTION AND PAYMENT RECORDS

    %% QUERY 05: What percentage of total revenue comes from subscription payments versus one-time course purchases?
    %% RESULT TABLE:...

    %% QUERY 06: Identify the students contributing the highest revenue in the last year.
    %% RESULT TABLE: STUDENTS (student_id, name) + PAYMENT RECORDS (student_id FK, payment_date)

    %% QUERY 07: Which instructors have the highest-rated courses, based on average review scores?
    %% RESULT TABLE: REVIEWS (review_id, course_id FK, rating) + COURSES (course_id, instructor_id FK, title) + INSTRUCTORS (instructor_id, name)

    %% QUERY 08: What is the average number of courses taught per instructor in the Programming category?
    %% RESULT TABLE: COURSES (category, instructor_id FK) + INSTRUCTORS (name)

    %% QUERY 09: Which instructors have the most students enrolled across all their courses?
    %% RESULT TABLE: INSTRUCTORS (name) + ENROLLMENTS (enrollment_id, student_id FK, course_id FK) + COURSES (course_id) + STUDENTS (student_id)

    %% QUERY 10: Which students have completed all modules in a course?
    %% RESULT TABLE: STUDENTS (student_id, name) + COURSES (course_id, title) + ENROLLMENTS (student_id FK, course_id, status)

    %% QUERY 11: List students who are at least 75% complete with their enrolled courses.
    %% RESULT TABLE: STUDENTS (student_id, name)

    %% QUERY 12:
    %% RESULT TABLE:...

    %% QUERY 13:
    %% RESULT TABLE:...

    %% QUERY 14:
    %% RESULT TABLE:...

    %% QUERY 15:
    %% RESULT TABLE:...

    %% QUERY 16:
    %% RESULT TABLE:...

    %% QUERY 17:
    %% RESULT TABLE:...

    %% QUERY 18:
    %% RESULT TABLE:...

    %% QUERY 19:
    %% RESULT TABLE:...

    %% QUERY 20:
    %% RESULT TABLE:...