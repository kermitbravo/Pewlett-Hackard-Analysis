# Pewlett-Hackard-Analysis
Pewlett-Hackard Analysis using PostgreSQL

## Overview of the analysis: 
Explain the purpose of this analysis.

The purpose of this analysis was to help Bobby, leveraging SQL to determine the number of retiring employees by title and identify those employees who are eligible to participate in a mentorship program.

This will be key as several of the employees are starting to reach retirement age which will lead to a "silver tsunami". Our objective is to provide insights so that Bobby's manager is prepared to understand the scope and impact of the imminent "silver tsunami".

### Results: 
#### Retiring Employees by Title

- As we can see with the information below, Bobby's manager should prepare to interview and hire Sr Engineers and Sr Staff members as his first priority, given that these are the two top positions that will be affected by the  "silver-tsunami".

- Engineers and Staff members are the next positions that should be staffed as soon as possible as well. We can also observe that there are no Jr positions in the company which should be a concern given the number of engineers and staff members retiring. Maybe doing an internship program or getting some Jr resources to come work with our seasoned veterans might be a good idea before they retire.

| Title                | Count         |
| -------------------- | ------------- |
| Senior Engineer      | 29,414        |
| Senior Staff         | 28,255        |
| Engineer             | 14,222        |
| Staff                | 12,242        |
| Technical Leader     |  4,502        |
| Assistant Engineer   |  1,761        |
| Manager              |      2        |

- Employees eligible to participate in mentorship program
1) From the image below, we can observe that we have several Sr Staff members and Engineers available to participate in a mentorship program. 
2) There are no managers available to participate in this program which is not ideal
3) The criteria defined for the mentorship program is age based instead which is not a great indicator for mentorship programs. Perhaps, we should consider tenure or other accolades as eligibility criteria. 
4) We have fewer Senior Engineers available to mentor than the number of Senior Engineers leaving, this is also not aligned with what we see with Senior Staff members which could help us mentor Staff members easier to get them to a Sr position. Bobby and his manager might struggle to do the same with the Engineers. 

![Mentorship by Title.](/Resources/Mentorship_by_title.png " Employees eligible to mentor by title.")


### Summary: 
With the information collected above we can answer the following questions: 

#### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
- We will have to fill 90,398 positions. 

#### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
- There are not, only 1,549 employees are available to mentor which is way under the number of positions that will be available after the "silver tsunami" passes.

### Additional queries or tables that may provide more insight into the upcoming "silver tsunami."

- Retiring within the next 5 years
- Employees that have been with the company for over x years
