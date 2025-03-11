# Entity Relationship Diagram

## Objective

Design a detailed Entity-Relationship Diagram (ERD) for a complex system.

## Instructions

### Phase 1: ERD Design

In this phase, you will design an ERD for a school system using the following entities. You can use any tool of your choice to create the ERD.

The entities need to have sufficient attributes to address the Product Manager Queries provided below.

### Phase 2: Presentation

You'll be split into groups. Each group will present their ERD to the class. The presentation should cover reasoning for the design, entities, attributes, and relationships.

Don't be too concerned about the correctness of the ERD. The goal is to develop a sense of the data model and how it can be used to answer the Product Manager Queries.

In the query writing phase, it will become more clear what is missing or what is unnecessary from the ERD.

### Phase 3: DDL (Data Definition Language) and DML (Data Manipulation Language)

After the presentation, you will be required to write SQL DDL and DML statements to create the tables and populate them with sample data.

Populate the tables with enough data to run the queries provided by the Product Manager.

### Phase 4: Query Writing

Write SQL queries to answer the Product Manager Queries provided below. Keep in mind that there are multiple: strategies, interpretations, and solutions to the queries. As a result there is no one right answer.

### Phase 5: Presentation Part 2

Each group will present their queries and results to the class. The presentation should cover the interpretation of the product manager query, the strategy, the SQL query, and the results. The presentation should cover 10-15 of the product manager’s queries.

| Entity         | Description                                |
| -------------- | ------------------------------------------ |
| Students       | Students enrolled in the system            |
| Instructors    | Instructors teaching courses               |
| Courses        | Courses offered                            |
| Modules        | Modules in a course                        |
| Assessments    | Assessments in a module                    |
| Submissions    | Student submissions for assessments        |
| Subscriptions  | Student subscriptions to courses           |
| Reviews        | Reviews of courses                         |
| PaymentRecords | Payment records for subscriptions          |
| Enrollment     | Enrollment records for students in courses |

## Product Manager Queries

### Query

1. Which courses have the most students enrolled this month?
2. What are the top 5 trending courses based on enrollment growth over the last 3 months?
3. Which categories (e.g., Data Science, Programming) have the highest number of enrolled students?
4. What is the total revenue from Premium subscriptions in the last quarter? (last 3 months)
5. What percentage of total revenue comes from subscription payments versus one-time course purchases?
6. Identify the students contributing the highest revenue in the last year.
7. Which instructors have the highest-rated courses, based on average review scores?
8. What is the average number of courses taught per instructor in the Programming category?
9. Which instructors have the most students enrolled across all their courses?
10. Which students have completed all modules in a course?
11. List students who are at least 75% complete with their enrolled courses.
12. How many students dropped out of courses before completing any module?
13. What is the average score for each assessment in the 'Introduction to Data Science' course?
14. Identify the top 10 assessments with the lowest average scores.
15. How many students submitted assessments after the deadline in the last month?
16. How many students have active Free vs. Premium subscriptions?
17. What is the average duration (in days) of Free subscriptions before students upgrade to Premium?
18. List students with expired subscriptions who haven’t renewed in the last 6 months.
19. List courses with no reviews yet.
20. Which payment methods (e.g., credit card, PayPal) are most frequently used by students?
21. List students who failed any assessment
22. Courses with the most modules?
23. Which courses have the highest number of reviews in the last quarter?
24. What is the average review rating for each course category?
25. Which modules have the lowest completion rates across all courses?
26. Revenue by category of courses?
27. List courses with fewer than 10% of students completing the final assessment.
28. Students with multiple premium subscriptions?
29. Assessments without any submissions?
30. Students with the highest average rating for reviewed courses?
