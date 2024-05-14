Postmortem Report: School Application Crash Incident
Date:2024-05-05
Report Prepared By: Omar Ben Amer
Incident Title: School Application Crash


Issue Summary:
Duration: The outage occurred from 2:00 PM to 1:00 AM on November 4th, 2023 (UTC), disrupting critical services within the school application.
Impact: The school application, essential for students, instructors, and administration, experienced an outage, hindering access to vital information such as marks and timetables. The entire school community, including students, instructors, and administrative staff, was affected by the disruption, leading to significant inconvenience and disruption of academic activities.
Root Cause: The crash was caused by duplicated database rows, resulting in inefficient query execution and database overload.
Timeline:
2:00 PM: Monitoring alerts detected unresponsiveness within the school application, prompting an immediate investigation.
2:30 PM: Initial examination focused on server logs and network connectivity, aiming to pinpoint the source of the issue.
3:15 PM: Initial assumption suggested server overload due to increased traffic during peak usage hours.
4:00 PM: Debugging efforts were misled by erroneous logs indicating a network issue, delaying the identification of the root cause.
6:00 PM: Incident escalated to the database management team for further analysis, recognizing the significance of the impact on academic operations.
8:00 PM: Root cause identified as duplicated database rows, resulting in inefficient query execution and database overload.
9:30 PM: Database optimization measures were promptly implemented to remove duplicate rows and optimize query performance, restoring application functionality.
Root Cause and Resolution:
Root Cause Explanation: The issue stemmed from duplicated database rows within the school application, leading to inefficient query execution and database overload.
Resolution Explanation: Database optimization measures were implemented to remove duplicate rows and optimize query performance, effectively resolving the issue and restoring access to critical academic information for the entire school community.
Corrective and Preventative Measures:
Improvements/Fixes:
Develop and enforce data integrity checks to prevent the creation of duplicate rows within the database.
Implement automated processes to identify and remove duplicate rows from the database regularly.
Conduct regular database maintenance to ensure data cleanliness and optimize query performance.
Tasks to Address the Issue:
Develop scripts or queries to identify and remove duplicate rows from the database.
Implement data integrity checks within the application code to prevent the creation of duplicate rows.
Schedule regular database maintenance tasks to review and optimize database structure and performance.
By implementing these corrective and preventative measures, we aim to prevent the recurrence of database-related issues and ensure the reliable functioning of the school application, supporting the academic needs of students, instructors, and administrative staff within the school community.






